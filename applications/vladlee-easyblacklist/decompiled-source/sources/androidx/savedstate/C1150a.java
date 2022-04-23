package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0926e;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0932i;
import androidx.p016a.p017a.p019b.C0232b;
import java.util.Map;
/* renamed from: androidx.savedstate.a */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/a.class */
public final class C1150a {

    /* renamed from: c */
    private Bundle f4918c;

    /* renamed from: d */
    private boolean f4919d;

    /* renamed from: b */
    private C0232b<String, AbstractC1152b> f4917b = new C0232b<>();

    /* renamed from: a */
    boolean f4916a = true;

    /* renamed from: androidx.savedstate.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$a.class */
    public interface AbstractC1151a {
    }

    /* renamed from: androidx.savedstate.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$b.class */
    public interface AbstractC1152b {
        /* renamed from: a */
        Bundle m6696a();
    }

    /* renamed from: a */
    public final Bundle m6697a(String str) {
        if (this.f4919d) {
            Bundle bundle = this.f4918c;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f4918c.remove(str);
            if (this.f4918c.isEmpty()) {
                this.f4918c = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6699a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f4918c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0232b<String, AbstractC1152b>.C0236d c = this.f4917b.m9968c();
        while (c.hasNext()) {
            Map.Entry next = c.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC1152b) next.getValue()).m6696a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6698a(AbstractC0927f fVar, Bundle bundle) {
        if (!this.f4919d) {
            if (bundle != null) {
                this.f4918c = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            fVar.mo7580a(new AbstractC0926e() { // from class: androidx.savedstate.SavedStateRegistry$1
                @Override // androidx.lifecycle.AbstractC0930g
                /* renamed from: a */
                public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
                    if (aVar == AbstractC0927f.EnumC0928a.ON_START) {
                        C1150a.this.f4916a = true;
                    } else if (aVar == AbstractC0927f.EnumC0928a.ON_STOP) {
                        C1150a.this.f4916a = false;
                    }
                }
            });
            this.f4919d = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }
}
