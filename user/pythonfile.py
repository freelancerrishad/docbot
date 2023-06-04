import sys
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split,KFold,cross_val_score,GridSearchCV
from sklearn.svm import SVC
from sklearn.metrics import f1_score, accuracy_score, confusion_matrix,classification_report,plot_confusion_matrix,plot_roc_curve,precision_score,roc_curve
import seaborn as sns
from sklearn.utils import shuffle
from pandas_profiling import ProfileReport
from sklearn.linear_model import LogisticRegression, Perceptron, RidgeClassifier, SGDClassifier
from sklearn.svm import SVC, LinearSVC
from sklearn.ensemble import RandomForestClassifier, GradientBoostingClassifier, ExtraTreesClassifier 
from sklearn.ensemble import BaggingClassifier, AdaBoostClassifier, VotingClassifier 
from sklearn.neighbors import KNeighborsClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.tree import DecisionTreeClassifier
from sklearn import metrics
from flashtext import KeywordProcessor

df=pd.read_csv('../notebooks/Unique_symptoms.csv')
FS =  list(df["Symptoms"])

df2=pd.read_csv('../notebooks/datasetE.csv')

df2 = shuffle(df2,random_state=42)

cols = df2.columns
data = df2[cols].values.flatten()

s = pd.Series(data)
s = s.str.strip()
s = s.values.reshape(df2.shape)

df2 = pd.DataFrame(s, columns=df2.columns)

df2 = df2.fillna(0)

df3=pd.read_csv('../notebooks/Symptom-severity.csv')
df3['Symptom'] = df3['Symptom'].str.replace('_',' ')

vals = df2.values
symptoms = df3['Symptom'].unique()

for i in range(len(symptoms)):
    vals[vals == symptoms[i]] = df3[df3['Symptom'] == symptoms[i]]['weight'].values[0]
    
d = pd.DataFrame(vals, columns=cols)

d = d.replace('dischromic  patches', 0)
d = d.replace('spotting  urination',0)
df2 = d.replace('foul smell of urine',0)

data = df2.iloc[:,1:].values
labels = df2['Disease'].values

x_train, x_test, y_train, y_test = train_test_split(data, labels, train_size = 0.75,random_state=42)

rfc=RandomForestClassifier(random_state=42)
rnd_forest = RandomForestClassifier(random_state=42, max_features='sqrt', n_estimators= 500, max_depth=13)
rnd_forest.fit(x_train,y_train)
preds=rnd_forest.predict(x_test)
conf_mat = confusion_matrix(y_test, preds)
df_cm = pd.DataFrame(conf_mat, index=df2['Disease'].unique(), columns=df2['Disease'].unique())


kfold = KFold(n_splits=10,shuffle=True,random_state=42)
rnd_forest_train =cross_val_score(rnd_forest, x_train, y_train, cv=kfold, scoring='accuracy')
pd.DataFrame(rnd_forest_train,columns=['Scores'])

kfold = KFold(n_splits=10,shuffle=True,random_state=42)
rnd_forest_test =cross_val_score(rnd_forest, x_test, y_test, cv=kfold, scoring='accuracy')
pd.DataFrame(rnd_forest_test,columns=['Scores'])

def predd(S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,x):
    psymptoms = [S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17]
    
    a = np.array(df3["Symptom"])
    b = np.array(df3["weight"])
    for j in range(len(psymptoms)):
        for k in range(len(a)):
            if psymptoms[j]==a[k]:
                psymptoms[j]=b[k]

    psy = [psymptoms]

    pred2 = x.predict(psy)
    print(pred2[0])

keyword_processor = KeywordProcessor()
keyword_processor.add_keywords_from_list(FS)
text1 = ''
for i in range(1,len(sys.argv)):
    text1 = text1+" "+sys.argv[i]

text = text1
D_keywors = keyword_processor.extract_keywords(text)


#@title User View 3
sympList=df3["Symptom"].to_list()

if len(D_keywors) == 1:
  predd(D_keywors[0],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 2:
  predd(D_keywors[0],D_keywors[1],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 3:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],0,0,0,0,0,0,0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 4:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],0,0,0,0,0,0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 5:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],0,0,0,0,0,0,0,0,0,0,0,0,rnd_forest) 
elif len(D_keywors) == 6:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],0,0,0,0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 7:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],0,0,0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 8:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],0,0,0,0,0,0,0,0,0,rnd_forest)   
elif len(D_keywors) == 9:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],0,0,0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 10:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],0,0,0,0,0,0,0,rnd_forest)      
elif len(D_keywors) == 11:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],0,0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 12:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],D_keywors[11],0,0,0,0,0,rnd_forest)
elif len(D_keywors) == 13:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],D_keywors[11],D_keywors[12],0,0,0,0,rnd_forest)
elif len(D_keywors) == 14:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],D_keywors[11],D_keywors[12],D_keywors[13],0,0,0,rnd_forest)           
elif len(D_keywors) == 15:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],D_keywors[11],D_keywors[12],D_keywors[13],D_keywors[14],0,0,rnd_forest)   
elif len(D_keywors) == 16:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],D_keywors[11],D_keywors[12],D_keywors[13],D_keywors[14],D_keywors[15],0,rnd_forest)   
elif len(D_keywors) == 17:
  predd(D_keywors[0],D_keywors[1],D_keywors[2],D_keywors[3],D_keywors[4],D_keywors[5],D_keywors[6],D_keywors[7],D_keywors[8],D_keywors[9],D_keywors[10],D_keywors[11],D_keywors[12],D_keywors[13],D_keywors[14],D_keywors[15],D_keywors[16],rnd_forest)  
elif len(D_keywors) > 17:
  print("Too Many Arguments!!!\nTry Again")
elif len(D_keywors) < 1:
  print("No Symptoms Found\nTry Again")