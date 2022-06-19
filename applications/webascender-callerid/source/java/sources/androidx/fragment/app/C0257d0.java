package androidx.fragment.app;

import androidx.lifecycle.AbstractC0318b0;
import androidx.lifecycle.C0321d0;
import androidx.lifecycle.C0326f0;
import androidx.lifecycle.c0;
import kotlin.a0.b;
import kotlin.g;
import kotlin.w.b.a;
import kotlin.w.c.k;
/* renamed from: androidx.fragment.app.d0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d0.class */
public final class C0257d0 {
    /* renamed from: a */
    public static final <VM extends AbstractC0318b0> g<VM> m5817a(Fragment fragment, b<VM> bVar, a<? extends C0326f0> aVar, a<? extends C0321d0.AbstractC0322b> aVar2) {
        k.f(fragment, "$this$createViewModelLazy");
        k.f(bVar, "viewModelClass");
        k.f(aVar, "storeProducer");
        if (aVar2 == null) {
            aVar2 = new a<>(fragment);
        }
        return new c0(bVar, aVar, aVar2);
    }
}
