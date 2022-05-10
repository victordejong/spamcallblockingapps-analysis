package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Iterator;
import p012b.p068o.AbstractC1106d;
import p012b.p068o.AbstractC1109g;
import p012b.p124w.AbstractC1947b;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator.class */
public final class Recreator implements AbstractC1106d {

    /* renamed from: a */
    public final AbstractC1947b f2708a;

    public Recreator(AbstractC1947b bVar) {
        this.f2708a = bVar;
    }

    @Override // p012b.p068o.AbstractC1107e
    /* renamed from: a */
    public void mo34664a(AbstractC1109g gVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_CREATE) {
            gVar.mo34644a().mo34654b(this);
            Bundle a = this.f2708a.mo31506e().m37050a("androidx.savedstate.Restarter");
            if (a != null) {
                ArrayList<String> stringArrayList = a.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    Iterator<String> it = stringArrayList.iterator();
                    while (it.hasNext()) {
                        m37053a(it.next());
                    }
                    return;
                }
                throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }

    /* renamed from: a */
    public final void m37053a(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AbstractC0534a.class);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.AbstractC0534a) declaredConstructor.newInstance(new Object[0])).m37049a(this.f2708a);
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
}
