(defstruct criatura nome bioma profundidade perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - ~a - ~a metros - ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros)) catalogo))

(defparameter *catalogo*
  (list (make-criatura :nome "Peeper" :bioma "Recifes Rasos" :profundidade 10 :perigo :inofensiva)
        (make-criatura :nome "Stalker" :bioma "Floresta de Algas" :profundidade 40 :perigo :agressiva)
        (make-criatura :nome "Crabsquid" :bioma "Floresta de Cogumelos" :profundidade 300 :perigo :agressiva)
        (make-criatura :nome "Reaper Leviathan" :bioma "Dunas" :profundidade 150 :perigo :leviata)
        (make-criatura :nome "Ghost Leviathan" :bioma "Vazio" :profundidade 800 :perigo :leviata)))

(defun main ()
  (format t "--- Catalogo completo ---~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))
  (format t "--- Abaixo de 100 metros ---~%")
  (dolist (texto (mapcar #'descreve-criatura (abaixo-de 100 *catalogo*)))
    (format t "~a~%" texto))
  (format t "Quantidade: ~a~%" (length (abaixo-de 100 *catalogo*))))

(main)
