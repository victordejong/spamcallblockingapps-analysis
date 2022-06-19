package butterknife.internal;

import android.view.View;
/* loaded from: classes-dex2jar.jar:butterknife/internal/DebouncingOnClickListener.class */
public abstract class DebouncingOnClickListener implements View.OnClickListener {
    private static final Runnable ENABLE_AGAIN = RunnableC0561a.f2689f;
    static boolean enabled = true;

    public abstract void doClick(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (enabled) {
            enabled = false;
            view.post(ENABLE_AGAIN);
            doClick(view);
        }
    }
}
