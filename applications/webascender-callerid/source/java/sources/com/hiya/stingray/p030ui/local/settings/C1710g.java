package com.hiya.stingray.p030ui.local.settings;

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
public final class C1710g {

    /* renamed from: a */
    private final e1 f4780a;

    public C1710g(e1 e1Var) {
        k.g(e1Var, "analyticsManager");
        this.f4780a = e1Var;
    }

    /* renamed from: a */
    public final void m1266a(List<a1> list) {
        k.g(list, "settings");
        ArrayList<a1> arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            a1 a1Var = (a1) next;
            if (!a1Var.g() || !k.b(a1Var.f(), Boolean.TRUE) || a1Var.i() == null) {
                z = false;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(kotlin.s.k.q(arrayList, 10));
        for (a1 a1Var2 : arrayList) {
            arrayList2.add(a1Var2.i());
        }
        String R = kotlin.s.k.R(arrayList2, "_", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62, (Object) null);
        if (R.length() > 0) {
            this.f4780a.f(b0.c(p.a("data_collection", R)));
        }
    }
}
