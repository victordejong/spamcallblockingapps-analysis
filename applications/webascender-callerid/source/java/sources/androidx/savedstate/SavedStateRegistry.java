package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0329h;
import androidx.savedstate.Recreator;
import f.b.a.b.b;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry.class */
public final class SavedStateRegistry {

    /* renamed from: b */
    private Bundle f2282b;

    /* renamed from: c */
    private boolean f2283c;

    /* renamed from: d */
    private Recreator.a f2284d;

    /* renamed from: a */
    private b<String, AbstractC0440b> f2281a = new b<>();

    /* renamed from: e */
    boolean f2285e = true;

    /* renamed from: androidx.savedstate.SavedStateRegistry$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$a.class */
    public interface AbstractC0439a {
        /* renamed from: a */
        void m4740a(c cVar);
    }

    /* renamed from: androidx.savedstate.SavedStateRegistry$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/SavedStateRegistry$b.class */
    public interface AbstractC0440b {
        /* renamed from: a */
        Bundle m4739a();
    }

    /* renamed from: a */
    public Bundle m4745a(String str) {
        if (this.f2283c) {
            Bundle bundle = this.f2282b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f2282b.remove(str);
            if (this.f2282b.isEmpty()) {
                this.f2282b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: b */
    public void m4744b(AbstractC0329h abstractC0329h, Bundle bundle) {
        if (!this.f2283c) {
            if (bundle != null) {
                this.f2282b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            abstractC0329h.m5439a(new 1(this));
            this.f2283c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* renamed from: c */
    public void m4743c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f2282b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        b.d g = this.f2281a.g();
        while (g.hasNext()) {
            Map.Entry entry = (Map.Entry) g.next();
            bundle2.putBundle((String) entry.getKey(), ((AbstractC0440b) entry.getValue()).m4739a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: d */
    public void m4742d(String str, AbstractC0440b abstractC0440b) {
        if (((AbstractC0440b) this.f2281a.j(str, abstractC0440b)) == null) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
    }

    /* renamed from: e */
    public void m4741e(Class<? extends AbstractC0439a> cls) {
        if (this.f2285e) {
            if (this.f2284d == null) {
                this.f2284d = new Recreator.a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f2284d.b(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}
