def convert_minutes(m):
    hours = m // 60
    minutes = m % 60
    if hours == 1:
        return f"{hours} hr {minutes} minutes"
    return f"{hours} hrs {minutes} minutes"
if __name__=="__main__":
  m=int(input())
  m1=int(input())
print(convert_minutes(m))  
print(convert_minutes(m1))  

o/p:
130 
110
2 hrs 10 minutes
1 hr 50 minutes
