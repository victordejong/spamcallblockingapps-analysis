package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements GenericLifecycleObserver {

    /* renamed from: f */
    private final SavedStateRegistryOwner f4926f;

    /* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator$SavedStateProvider.class */
    static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {

        /* renamed from: a */
        final Set<String> f4927a = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedStateProvider(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.m17012d("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
        @NonNull
        /* renamed from: a */
        public Bundle mo17009a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f4927a));
            return bundle;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public void m17016b(String str) {
            this.f4927a.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recreator(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.f4926f = savedStateRegistryOwner;
    }

    /* renamed from: h */
    private void m17017h(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.AutoRecreated) declaredConstructor.newInstance(new Object[0])).mo17010a(this.f4926f);
                } catch (Exception e) {
                    throw new RuntimeException("Failed to instantiate " + str, e);
                }
            } catch (NoSuchMethodException e2) {
                throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
            }
        } catch (ClassNotFoundException e3) {
            throw new RuntimeException("Class " + str + " wasn't found", e3);
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_CREATE) {
            lifecycleOwner.getLifecycle().mo18229c(this);
            Bundle a = this.f4926f.getSavedStateRegistry().m17015a("androidx.savedstate.Restarter");
            if (a != null) {
                ArrayList<String> stringArrayList = a.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    Iterator<String> it = stringArrayList.iterator();
                    while (it.hasNext()) {
                        m17017h(it.next());
                    }
                    return;
                }
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
