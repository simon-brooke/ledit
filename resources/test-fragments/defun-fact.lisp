;; In theory this should exactly translate into `defun-fact.html`, q.v.

(defun fact (n)
  (cond ((zerop n) 1)
    (t (* n (fact (1- n))))))
