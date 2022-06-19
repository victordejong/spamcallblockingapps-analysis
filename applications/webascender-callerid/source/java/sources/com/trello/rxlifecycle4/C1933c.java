package com.trello.rxlifecycle4;

import com.trello.rxlifecycle4.p045e.C1938a;
import i.c.b0.b.v;
import p067i.p095c.p097b0.p103d.AbstractC2181o;
/* renamed from: com.trello.rxlifecycle4.c */
/* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/c.class */
public class C1933c {
    /* renamed from: a */
    public static <T, R> b<T> m604a(v<R> vVar) {
        return new b<>(vVar);
    }

    /* renamed from: b */
    public static <T, R> b<T> m603b(v<R> vVar, AbstractC2181o<R, R> abstractC2181o) {
        C1938a.m599a(vVar, "lifecycle == null");
        C1938a.m599a(abstractC2181o, "correspondingEvents == null");
        return m604a(m602c(vVar.share(), abstractC2181o));
    }

    /* renamed from: c */
    private static <R> v<Boolean> m602c(v<R> vVar, AbstractC2181o<R, R> abstractC2181o) {
        return v.combineLatest(vVar.take(1L).map(abstractC2181o), vVar.skip(1L), new a()).onErrorReturn(C1932a.f5247a).filter(C1932a.f5248b);
    }
}
