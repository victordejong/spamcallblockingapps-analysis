package androidx.loader.app;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/loader/app/LoaderManager.class */
public abstract class LoaderManager {

    /* loaded from: classes-dex2jar.jar:androidx/loader/app/LoaderManager$LoaderCallbacks.class */
    public interface LoaderCallbacks<D> {
        @MainThread
        /* renamed from: a */
        void mo7805a(@NonNull Loader<D> loader, D d);

        @NonNull
        @MainThread
        /* renamed from: b */
        Loader<D> mo7804b(int i, @Nullable Bundle bundle);

        @MainThread
        /* renamed from: c */
        void mo7803c(@NonNull Loader<D> loader);
    }

    @NonNull
    /* renamed from: b */
    public static <T extends LifecycleOwner & ViewModelStoreOwner> LoaderManager m18134b(@NonNull T t) {
        return new LoaderManagerImpl(t, t.getViewModelStore());
    }

    @Deprecated
    /* renamed from: a */
    public abstract void mo18133a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @NonNull
    @MainThread
    /* renamed from: c */
    public abstract <D> Loader<D> mo18132c(int i, @Nullable Bundle bundle, @NonNull LoaderCallbacks<D> loaderCallbacks);

    /* renamed from: d */
    public abstract void mo18131d();

    @NonNull
    @MainThread
    /* renamed from: e */
    public abstract <D> Loader<D> mo18130e(int i, @Nullable Bundle bundle, @NonNull LoaderCallbacks<D> loaderCallbacks);
}
