package com.hiya.stingray.p030ui.stats;

import com.hiya.stingray.t.d0;
import java.util.Comparator;
import kotlin.t.a;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.stats.c$c$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/c$c$a.class */
public final class c$c$a<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        d0 d0Var = (d0) t2;
        k.c(d0Var, "it");
        long s = d0Var.s();
        d0 d0Var2 = (d0) t;
        k.c(d0Var2, "it");
        return a.a(Long.valueOf(s), Long.valueOf(d0Var2.s()));
    }
}
