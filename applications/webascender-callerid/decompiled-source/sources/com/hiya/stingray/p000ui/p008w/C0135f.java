package com.hiya.stingray.p000ui.p008w;

import com.hiya.stingray.t.n0;
import com.hiya.stingray.util.C0144c0;
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
public final class C0135f {

    /* renamed from: com.hiya.stingray.ui.w.f$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/f$a.class */
    static final class CallableC0136a<V> implements Callable<T> {

        /* renamed from: f */
        final /* synthetic */ String f285f;

        /* renamed from: g */
        final /* synthetic */ List f286g;

        CallableC0136a(String str, List list) {
            this.f285f = str;
            this.f286g = list;
        }

        /* renamed from: a */
        public final List<n0> call() {
            List<n0> list;
            boolean z;
            String d = C0144c0.m973d(this.f285f);
            Objects.requireNonNull(d, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = d.toLowerCase();
            k.e(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (m.s(lowerCase)) {
                list = kotlin.s.k.g();
            } else {
                String str = lowerCase;
                if (C0144c0.m971f(C0144c0.m969h(lowerCase))) {
                    str = C0144c0.m969h(lowerCase);
                }
                List list2 = this.f286g;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list2) {
                    n0 n0Var = (n0) obj;
                    Set<String> keySet = n0Var.i().keySet();
                    if (!(keySet instanceof Collection) || !keySet.isEmpty()) {
                        for (String str2 : keySet) {
                            k.c(str2, "it");
                            if (m.I(C0144c0.m968i(str2), str, false, 2, (Object) null)) {
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
                        arrayList.add(obj);
                    }
                }
                list = arrayList;
            }
            return list;
        }
    }

    /* renamed from: a */
    public final e0<List<n0>> m1000a(List<? extends n0> list, String str) {
        k.g(list, "identities");
        k.g(str, "constraint");
        e0<List<n0>> p = e0.p(new CallableC0136a(str, list));
        k.c(p, "Single.fromCallable {\n  …}\n            }\n        }");
        return p;
    }
}
