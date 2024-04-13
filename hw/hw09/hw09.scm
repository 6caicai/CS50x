(define (ascending? asc-lst) 
    (cond 
        ((null? asc-lst) #t)
        ((null? (cdr asc-lst)) #t)
        ((> (car asc-lst) (car (cdr asc-lst))) #f)
        (else (ascending? (cdr asc-lst)))))

(define (my-filter pred s) 
    (if (null? s) (nil) 
        (if (pred (car s)) (cons((car s) (my-filter pred (cdr s)))) (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) 
    (cond
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (interleave lst2 (cdr lst1))))))

(define (no-repeats lst) (helper2 lst nil))

(define (helper1 ele lst2) 
    (cond
        ((null? lst2) #f)
        ((= ele (car lst2)) #t)
        (else (helper1 ele (cdr lst2)))))

(define (helper2 lst1 lst2)
    (if (null? lst1) nil (if (helper1 (car lst1) lst2) (helper2 (cdr lst1) lst2) (cons (car lst1) (helper2 (cdr lst1) (cons (car lst1) lst2))))))