package com.google.firebase.components;

import com.google.firebase.p071a.AbstractC3136b;
import com.google.firebase.p071a.C3135a;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.components.r */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/r.class */
public final /* synthetic */ class RunnableC3171r implements Runnable {

    /* renamed from: a */
    private final Map.Entry f19018a;

    /* renamed from: b */
    private final C3135a f19019b;

    private RunnableC3171r(Map.Entry entry, C3135a aVar) {
        this.f19018a = entry;
        this.f19019b = aVar;
    }

    /* renamed from: a */
    public static Runnable m584a(Map.Entry entry, C3135a aVar) {
        return new RunnableC3171r(entry, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((AbstractC3136b) this.f19018a.getKey()).mo519a(this.f19019b);
    }
}
