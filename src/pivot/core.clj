xxx(ns pivot.core)

(require '[incanter.core :as i]
         '[incanter.io]
         '[incanter.stats :as s])

(def stmtURI "resources/stmt.csv")

(defn slurp
  "I slurp in a statement"
  [stmtURI]
  (read-dataset stmtURI :header true)
  )

(def data (slurp stmtURI))

(def working-set ($ [:date :descr :amnt :cat] data))

(def grouped ($group-by :cat working-set))

(def summed-categories ($rollup :sum :amnt :cat working-set)
