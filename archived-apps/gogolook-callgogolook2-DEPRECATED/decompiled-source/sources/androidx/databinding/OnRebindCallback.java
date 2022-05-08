package androidx.databinding;

import androidx.databinding.ViewDataBinding;
/* loaded from: classes-dex2jar.jar:androidx/databinding/OnRebindCallback.class */
public abstract class OnRebindCallback<T extends ViewDataBinding> {
    public void onBound(T t) {
    }

    public void onCanceled(T t) {
    }

    public boolean onPreBind(T t) {
        return true;
    }
}
