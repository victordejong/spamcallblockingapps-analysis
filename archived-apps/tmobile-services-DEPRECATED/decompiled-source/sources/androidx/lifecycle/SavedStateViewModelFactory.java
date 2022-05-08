package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SavedStateViewModelFactory.class */
public final class SavedStateViewModelFactory extends ViewModelProvider.KeyedFactory {

    /* renamed from: f */
    private static final Class<?>[] f4086f = {Application.class, SavedStateHandle.class};

    /* renamed from: g */
    private static final Class<?>[] f4087g = {SavedStateHandle.class};

    /* renamed from: a */
    private final Application f4088a;

    /* renamed from: b */
    private final ViewModelProvider.AndroidViewModelFactory f4089b;

    /* renamed from: c */
    private final Bundle f4090c;

    /* renamed from: d */
    private final Lifecycle f4091d;

    /* renamed from: e */
    private final SavedStateRegistry f4092e;

    @SuppressLint({"LambdaLast"})
    public SavedStateViewModelFactory(@NonNull Application application, @NonNull SavedStateRegistryOwner savedStateRegistryOwner, @Nullable Bundle bundle) {
        this.f4092e = savedStateRegistryOwner.getSavedStateRegistry();
        this.f4091d = savedStateRegistryOwner.getLifecycle();
        this.f4090c = bundle;
        this.f4088a = application;
        this.f4089b = ViewModelProvider.AndroidViewModelFactory.m18143c(application);
    }

    /* renamed from: d */
    private static <T> Constructor<T> m18156d(Class<T> cls, Class<?>[] clsArr) {
        for (Constructor<?> constructor : cls.getConstructors()) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            if (Arrays.equals(clsArr, constructor2.getParameterTypes())) {
                return constructor2;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory, androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    /* renamed from: a */
    public <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) mo18142c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    /* renamed from: b */
    void mo18140b(@NonNull ViewModel viewModel) {
        SavedStateHandleController.m18162h(viewModel, this.f4092e, this.f4091d);
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory
    @NonNull
    /* renamed from: c */
    public <T extends ViewModel> T mo18142c(@NonNull String str, @NonNull Class<T> cls) {
        boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
        Constructor d = isAssignableFrom ? m18156d(cls, f4086f) : m18156d(cls, f4087g);
        if (d == null) {
            return (T) this.f4089b.mo18109a(cls);
        }
        SavedStateHandleController j = SavedStateHandleController.m18160j(this.f4092e, this.f4091d, str, this.f4090c);
        try {
            T t = isAssignableFrom ? (T) ((ViewModel) d.newInstance(this.f4088a, j.m18159k())) : (T) ((ViewModel) d.newInstance(j.m18159k()));
            t.m18146e("androidx.lifecycle.savedstate.vm.tag", j);
            return t;
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Failed to access " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
        }
    }
}
