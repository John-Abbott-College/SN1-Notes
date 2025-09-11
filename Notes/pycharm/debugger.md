# Debugging Python Code

*These notes were adapted from https://www.jetbrains.com/help/pycharm/part-1-debugging-python-code.html*

These notes demonstrate how to use the Pycharm debugger to step through your program one line at a time. This is an invaluable tool for better understanding how your program works and diagnosing any mistakes in your algorithms.

## Preparing an example

Do you remember the [quadratic equation](https://www.khanacademy.org/math/algebra/quadratics/solving-quadratics-using-the-quadratic-formula/a/quadratic-formula-explained-article) from highschool math? We can create an algorithm that computes this formula with python code.

Copy the following code into a file into a Pycharm project:

```python
import math

def quadratic_formula(a, b, c):
  d = b ** 2 - 4 * a * c
  if d > 0:
      disc = math.sqrt(d)
      root1 = (-b + disc) / (2 * a)
      root2 = (-b - disc) / (2 * a)
      return root1, root2
  elif d == 0:
      return -b / (2 * a)
  else:
      return "This equation has no roots"

a = int(input("a: "))
b = int(input("b: "))
c = int(input("c: "))
result = quadratic_formula(a, b, c)
print(result)
```

## Placing breakpoints

To place breakpoints, just click the gutter next to the line you want
your application to suspend at:

<figure>
   <img src="/Notes/pycharm/assets/adding-a-breakpoint.png" style="margin: 0; max-width: 460px;" alt="solver.py with breakpoints at lines 6 and 18"/>
   <figcaption style="font-style: italic;">Clicking on the line number in Pycharm (in the "gutter") places a breakpoint at that line. Here, there are breakpoints placed at lines 6 and 18 in the solver.py program.</figcaption>
</figure>

For more information, refer to
[Breakpoints](https://www.jetbrains.com/help/pycharm/using-breakpoints.html).

## Starting the debugger

OK now, as we've added breakpoints, everything is ready for debugging.

Click the `Debug` button on the top menu (the green bug icon next to the green play icon) to start a debugger session.

The debugger starts, showing the [Console
tab](https://www.jetbrains.com/help/pycharm/debug-tool-window-console.html) of the Debug tool
window, and lets you enter the desired values:

<figure>
   <img src="/Notes/pycharm/assets/debugging-console.png" style="margin: 0; max-width: 460px;" alt="debugging session showing that the console works the same as running the code"/>
   <figcaption style="font-style: italic;">The debugger has started and has not reached the breakpoint at line 18 yet -- here, the inputs a=1, b=10, and c=1 have been provided.</figcaption>
</figure>

The debugger suspends the program at the first breakpoint. It means that
the line with the breakpoint is not yet executed. The line becomes blue:

<figure>
   <img src="/Notes/pycharm/assets/stop-at-first-breakpoint.png" style="margin: 0; max-width: 460px;" alt="stop at first breakpoint"/>
   <figcaption style="font-style: italic;">Pycharm interface when the debugger stops -- you can see the values of all local variables in the debugger console.</figcaption>
</figure>

On the [stepping toolbar of the Debugger
tab](https://www.jetbrains.com/help/pycharm/debug-tool-window.html#steptoolbar), click the **Resume** button (the green play button)
to move to the next breakpoint.

When you've clicked the **Resume** button
you will now see that the blue marker moves to the
next breakpoint (on line 6).

<figure>
   <img src="/Notes/pycharm/assets/resume-to-next-breakpoint.png" style="margin: 0; max-width: 460px;" alt="resume to next breakpoint"/>
   <figcaption style="font-style: italic;">Clicking the Resume button brings you to the next breakpoint -- in this case, line 6 of the quadratic_formula function. Note that the value of the variable d has been computed and can be seen in the list of local variables.</figcaption>
</figure>

## Step over

If you now use the [stepping toolbar
buttons](https://www.jetbrains.com/help/pycharm/debug-tool-window.html#steptoolbar), you'll move
to the next line in the program instead of skipping to the next breakpoint.

Click the **Step over** button (the arrow that goes up and then down) to see the resulte of executing line 6:

<figure>
   <img src="/Notes/pycharm/assets/step-over-to-next-line.png" style="margin: 0; max-width: 460px;" alt="step over to next line"/>
   <figcaption style="font-style: italic;">Clicking the step over button brings you to the next line, updating all local variables with any new values as a result of executing the current line. In this case, the disc variable has been updated to compute the square root component of the quadratic equation.</figcaption>
</figure>

As you can see, the blue line (the current paused line) moves to the next line in the program, rather than skipping to the next breakpoint.

> Note: the `disc` variable here represents the [discriminant](https://en.wikipedia.org/wiki/Discriminant) of the quadratic equation -- it is useful to store it in its own variable, since it is the part of the equation that we need to use twice in order to compute the two different roots (remember, the quadratic equation has a positive and a negative component that results in two separate answers).

## Summary

Using breakpoints and the **Resume** and **Step over** buttons, you now have complete control over the execution of a program. You can set breakpoints in strategic places, and step through programs one line at a time, to see useful information about how your program works -- and ensure that it works the way you expect.

In summary, you've learned:

- You've learnt what *breakpoints* are and how to place them.
- You've learnt how to begin the debugger session, and how to show the Python prompt in the debugger console.
- You've practised stepping through code, and skipping to different breakpoints in your code.
