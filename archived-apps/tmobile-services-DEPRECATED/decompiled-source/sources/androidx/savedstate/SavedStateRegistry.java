package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.Recreator;
import java.util.Map;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry.class */
public final class SavedStateRegistry {
    @Nullable

    /* renamed from: b */
    private Bundle f4929b;

    /* renamed from: c */
    private boolean f4930c;

    /* renamed from: d */
    private Recreator.SavedStateProvider f4931d;

    /* renamed from: a */
    private SafeIterableMap<String, SavedStateProvider> f4928a = new SafeIterableMap<>();

    /* renamed from: e */
    boolean f4932e = true;

    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$AutoRecreated.class */
    public interface AutoRecreated {
        /* renamed from: a */
        void mo17010a(@NonNull SavedStateRegistryOwner savedStateRegistryOwner);
    }

    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$SavedStateProvider.class */
    public interface SavedStateProvider {
        @NonNull
        /* renamed from: a */
        Bundle mo17009a();
    }

    @Nullable
    @MainThread
    /* renamed from: a */
    public Bundle m17015a(@NonNull String str) {
        if (this.f4930c) {
            Bundle bundle = this.f4929b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f4929b.remove(str);
            if (this.f4929b.isEmpty()) {
                this.f4929b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    /* renamed from: b */
    public void m17014b(@NonNull Lifecycle lifecycle, @Nullable Bundle bundle) {
        if (!this.f4930c) {
            if (bundle != null) {
                this.f4929b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.mo18231a(new GenericLifecycleObserver() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                /* renamed from: c */
                public void mo16457c(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        SavedStateRegistry.this.f4932e = true;
                    } else if (event == Lifecycle.Event.ON_STOP) {
                        SavedStateRegistry.this.f4932e = false;
                    }
                }
            });
            this.f4930c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    /* renamed from: c */
    public void m17013c(@NonNull Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f4929b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        SafeIterableMap<String, SavedStateProvider>.IteratorWithAdditions e = this.f4928a.m21137e();
        while (e.hasNext()) {
            Map.Entry next = e.next();
            bundle2.putBundle((String) next.getKey(), ((SavedStateProvider) next.getValue()).mo17009a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    @MainThread
    /* renamed from: d */
    public void m17012d(@NonNull String str, @NonNull SavedStateProvider savedStateProvider) {
        if (this.f4928a.mo21134h(str, savedStateProvider) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    @MainThread
    /* renamed from: e */
    public void m17011e(@NonNull Class<? extends AutoRecreated> cls) {
        if (this.f4932e) {
            if (this.f4931d == null) {
                this.f4931d = new Recreator.SavedStateProvider(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f4931d.m17016b(cls.getName());
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        } else {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }
}
