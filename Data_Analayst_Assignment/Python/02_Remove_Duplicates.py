def remove_duplicates(s):
    unique = ""
    for ch in s:
        if ch not in unique:
            unique += ch
    return unique

if __name__=="__main__":
  s=str(input())
print(remove_duplicates(s))

o/p:
banana
ban
