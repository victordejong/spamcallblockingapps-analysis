package com.trello.rxlifecycle4;

import com.trello.rxlifecycle4.p015e.C0270a;
import i.c.b0.b.v;
import p037i.p065c.p067b0.p073d.AbstractC0513o;
/* renamed from: com.trello.rxlifecycle4.c */
/* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/c.class */
public class C0265c {
    /* renamed from: a */
    public static <T, R> b<T> m604a(v<R> vVar) {
        return new b<>(vVar);
    }

    /* renamed from: b */
    public static <T, R> b<T> m603b(v<R> vVar, AbstractC0513o<R, R> oVar) {
        C0270a.m599a(vVar, "lifecycle == null");
        C0270a.m599a(oVar, "correspondingEvents == null");
        return m604a(m602c(vVar.share(), oVar));
    }

    /* renamed from: c */
    private static <R> v<Boolean> m602c(v<R> vVar, AbstractC0513o<R, R> oVar) {
        return v.combineLatest(vVar.take(1L).map(oVar), vVar.skip(1L), new a()).onErrorReturn(C0264a.f568a).filter(C0264a.f569b);
    }
}
