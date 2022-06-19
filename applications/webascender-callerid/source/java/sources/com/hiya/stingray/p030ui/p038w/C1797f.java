package com.hiya.stingray.p030ui.p038w;

import com.hiya.stingray.t.n0;
import com.hiya.stingray.util.C1806c0;
import i.c.b0.b.e0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.c0.m;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.w.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/f.class */
public final class C1797f {

    /* renamed from: com.hiya.stingray.ui.w.f$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/f$a.class */
    static final class CallableC1798a<V> implements Callable<T> {

        /* renamed from: f */
        final /* synthetic */ String f4964f;

        /* renamed from: g */
        final /* synthetic */ List f4965g;

        CallableC1798a(String str, List list) {
            this.f4964f = str;
            this.f4965g = list;
        }

        /* renamed from: a */
        public final List<n0> call() {
            ArrayList arrayList;
            boolean z;
            String m973d = C1806c0.m973d(this.f4964f);
            Objects.requireNonNull(m973d, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = m973d.toLowerCase();
            k.e(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (m.s(lowerCase)) {
                arrayList = kotlin.s.k.g();
            } else {
                String str = lowerCase;
                if (C1806c0.m971f(C1806c0.m969h(lowerCase))) {
                    str = C1806c0.m969h(lowerCase);
                }
                List list = this.f4965g;
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : list) {
                    n0 n0Var = (n0) obj;
                    Set<String> keySet = n0Var.i().keySet();
                    if (!(keySet instanceof Collection) || !keySet.isEmpty()) {
                        for (String str2 : keySet) {
                            k.c(str2, "it");
                            if (m.I(C1806c0.m968i(str2), str, false, 2, (Object) null)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    boolean z2 = true;
                    if (!z) {
                        String h = n0Var.h();
                        k.c(h, "identity.name");
                        Objects.requireNonNull(h, "null cannot be cast to non-null type java.lang.String");
                        String lowerCase2 = h.toLowerCase();
                        k.e(lowerCase2, "(this as java.lang.String).toLowerCase()");
                        z2 = m.I(lowerCase2, str, false, 2, (Object) null);
                    }
                    if (z2) {
                        arrayList2.add(obj);
                    }
                }
                arrayList = arrayList2;
            }
            return arrayList;
        }
    }

    /* renamed from: a */
    public final e0<List<n0>> m1000a(List<? extends n0> list, String str) {
        k.g(list, "identities");
        k.g(str, "constraint");
        e0<List<n0>> p = e0.p(new CallableC1798a(str, list));
        k.c(p, "Single.fromCallable {\n  …}\n            }\n        }");
        return p;
    }
}
