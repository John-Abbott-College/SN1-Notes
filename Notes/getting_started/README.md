# Thonny

## MAC OS -Persmission problem

Upon running a python script inside a OneDRive. We might get a permission error as such:

```
PROBLEM IN THONNY'S BACK-END: mainloop error (PermissionError: [Errno 1] Operation not permitted).
See Thonny's backend.log for more info.
```

This was the solution found online:

>Step 1: Grant Full Disk Access on macOS
>
>1. 
>2. Open **System Settings** (or System Preferences) on your Mac. [[1](https://github.com/thonny/thonny/issues/2632)]
>3. 
>4. Click on **Privacy & Security** in the sidebar. [[1](https://github.com/thonny/thonny/issues/2632)]
>5. 
>6. Scroll down and click on **Full Disk Access**. [[1](https://github.com/thonny/thonny/issues/2632)]
>7. 
>8. Look for **Thonny** in the list of applications and toggle the switch to **On**. [[1](https://github.com/thonny/thonny/issues/2632)]
>9. 
>10. If Thonny is not in the list:
>    - Click the **+** (plus) button at the bottom of the list.
>    - Authenticate with your Mac password or Touch ID.
>    - Navigate to your **Applications** folder, select **Thonny**, and click **Open**.
>    - Ensure its toggle is switched to **On**. [[1](https://github.com/thonny/thonny/issues/2436), [2](https://github.com/thonny/thonny/issues/2632)]
>11. 
>12. Completely restart the Thonny application. [[1](https://forum.dexterindustries.com/t/patch-thonny-to-eliminate-the-annoying-horizontal-scroll-bar-issue/8807), [2](https://github.com/thonny/thonny/issues/2632)]
>
>
