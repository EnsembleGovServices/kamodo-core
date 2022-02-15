---
name: Bug report
about: Create a report to help us improve Kamodo!
title: ''
labels: ''
assignees: ''

---

## Describe the bug
Provide a clear and concise description of what the bug is.
If the bug fits one of the below categories, follow the corresponding instructions below.

## To Reproduce
### Registration error
If the problem arises while registering a function using a kamodo object, set the kamodo object's verbose flag and copy and paste the output you get when you register:

```python
k = Kamodo(verbose=True)
# or, if you have already initialized an object, set the verbose flag like this:
# k.verbose = True
k['f'] = ... # expression or function implementation here
... # verbose output followed by error
```

```console
< copy and paste verbose output and error logs here >
```

### Plotting error
If the problem arises while plotting a function, add a screenshot for additional context. Use the `export png` button in the plotly-generated figure.

If the screenshot is online, you can embed i here using the following markdown syntax

![example screen shot](https://raw.githubusercontent.com/EnsembleGovServices/kamodo-core/master/docs/notebooks/images/screen_shot_test.png)

### Latex error

If the problem is in latex formatting, export the kamodo object's latex using the following

```python
k.to_latex(mode='inline') # copy the output
```
```console
paste the latex output here
```

There is [a trick for getting github's markdown to render latex](https://gist.github.com/a-rodin/fef3f543412d6e1ec5b6cf55bf197d7b#solution):

```console
<img src="https://render.githubusercontent.com/render/math?math=e^{i \pi} = -1">
```

**Additional context**
Add any other context about the problem here.
