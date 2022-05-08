package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProviders.class */
public class ViewModelProviders {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelProviders$DefaultFactory.class */
    public static class DefaultFactory extends ViewModelProvider.AndroidViewModelFactory {
    }

    @NonNull
    @Deprecated
    @MainThread
    /* renamed from: a */
    public static ViewModelProvider m18139a(@NonNull FragmentActivity fragmentActivity) {
        return new ViewModelProvider(fragmentActivity);
    }
}
