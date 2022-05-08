package com.google.firebase.components;

import com.google.firebase.p072b.AbstractC3146a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.components.j */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/j.class */
public final /* synthetic */ class C3161j implements AbstractC3146a {

    /* renamed from: a */
    private final C3160i f19002a;

    /* renamed from: b */
    private final C3150b f19003b;

    private C3161j(C3160i iVar, C3150b bVar) {
        this.f19002a = iVar;
        this.f19003b = bVar;
    }

    /* renamed from: a */
    public static AbstractC3146a m608a(C3160i iVar, C3150b bVar) {
        return new C3161j(iVar, bVar);
    }

    @Override // com.google.firebase.p072b.AbstractC3146a
    /* renamed from: a */
    public final Object mo583a() {
        Object a;
        a = r1.m632c().mo460a(new C3174u(this.f19003b, this.f19002a));
        return a;
    }
}
