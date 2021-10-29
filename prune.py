import osd
import tensorflow_model_optimization as tfmot
from tfmot.sparsity import keras as sparsity

seq2seq_path = os.path.join(os.getcwd(), 'data/seq2seq')
loaded_model = tf.keras.models.load_model(os.path.join(seq2seq_path, 'prune.h5'))

epochs = 4

