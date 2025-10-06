1.กรณีอาจะ git push แล้วไป ทั้งสอง
1.1  git remote add origin https://github.com/chaiyaphat20/basic-git.git
1.2  git remote set-url --add --push origin https://gitlab.com/chaiyaphat20/basic-git-mis.git


2.manual sync
  git remote add office https://github.com/chaiyaphat20/basic-git.git
  git remote add mis https://gitlab.com/chaiyaphat20/basic-git-mis.git
---
1.ลบ origin เดิม
 git remote remove  origin
2.show origin ทั้งหมด 2
 git remote -v  

3.เวลาใช้งาน:
  # Push ไป GitHub (Office)
  git push office main

  # Push ไป GitLab (MIS)  
  git push mis main

4.
 git config alias.pushall '!git remote | xargs -I {} sh -c "git push {} $(git branch --show-current) 2>/dev/null || true"'