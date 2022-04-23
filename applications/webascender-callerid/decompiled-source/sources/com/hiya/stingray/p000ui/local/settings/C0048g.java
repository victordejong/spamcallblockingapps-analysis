package com.hiya.stingray.p000ui.local.settings;

import com.hiya.stingray.manager.e1;
import com.hiya.stingray.t.a1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.g */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/g.class */
public final class C0048g {

    /* renamed from: a */
    private final e1 f101a;

    public C0048g(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f101a = e1Var;
    }

    /* renamed from: a */
    public final void m1266a(List<a1> list) {
        boolean z;
        k.g(list, "settings");
        ArrayList<a1> arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            z = true;
            boolean z2 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            a1 a1Var = (a1) next;
            if (!a1Var.g() || !k.b(a1Var.f(), Boolean.TRUE) || a1Var.i() == null) {
                z2 = false;
            }
            if (z2) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.s.k.q(arrayList, 10));
        for (a1 a1Var2 : arrayList) {
            arrayList2.add(a1Var2.i());
        }
        String R = kotlin.s.k.R(arrayList2, "_", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62, (Object) null);
        if (R.length() <= 0) {
            z = false;
        }
        if (z) {
            this.f101a.f(b0.c(p.a("data_collection", R)));
        }
    }
}
