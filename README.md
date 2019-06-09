# Pyomo - Tensorflow - Notebook environment


Sets up a Jupyter lab/notebook environment with:

- Pyomo, numerical optimization engine using autodiff, shipping here with IP-OPT optimiser.
- Tensorflow w/ Keras, graph based computation framework, very popular for machine learning.
- Scikit-learn, numpy, scipy, pandas.

To build:

```bash
docker build -t pyomo-tensorflow .
```

To run a Notebook:

```bash
docker run -p 5000:5000 pyomo-tensorflow
```

With file persistency:

```bash
docker run --rm -v ./:/Notebook -p 5000:5000 pyomo-tensorflow
```
