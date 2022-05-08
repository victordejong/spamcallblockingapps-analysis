package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0926e;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0932i;
import androidx.savedstate.C1150a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC0926e {

    /* renamed from: a */
    private final AbstractC1154c f4914a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Recreator(AbstractC1154c cVar) {
        this.f4914a = cVar;
    }

    @Override // androidx.lifecycle.AbstractC0930g
    /* renamed from: a */
    public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
        if (aVar == AbstractC0927f.EnumC0928a.ON_CREATE) {
            iVar.getLifecycle().mo7575b(this);
            Bundle a = this.f4914a.getSavedStateRegistry().m6697a("androidx.savedstate.Restarter");
            if (a != null) {
                ArrayList<String> stringArrayList = a.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    Iterator<String> it = stringArrayList.iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        try {
                            Class<? extends U> asSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(C1150a.AbstractC1151a.class);
                            try {
                                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                                declaredConstructor.setAccessible(true);
                                try {
                                    declaredConstructor.newInstance(new Object[0]);
                                } catch (Exception e) {
                                    throw new RuntimeException("Failed to instantiate ".concat(String.valueOf(next)), e);
                                }
                            } catch (NoSuchMethodException e2) {
                                throw new IllegalStateException("Class" + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                            }
                        } catch (ClassNotFoundException e3) {
                            throw new RuntimeException("Class " + next + " wasn't found", e3);
                        }
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
