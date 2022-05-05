package com.google.firebase.components;

import com.google.firebase.p072b.AbstractC3146a;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.components.k */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/k.class */
public final /* synthetic */ class C3162k implements AbstractC3146a {

    /* renamed from: a */
    private final Set f19004a;

    private C3162k(Set set) {
        this.f19004a = set;
    }

    /* renamed from: a */
    public static AbstractC3146a m607a(Set set) {
        return new C3162k(set);
    }

    @Override // com.google.firebase.p072b.AbstractC3146a
    /* renamed from: a */
    public final Object mo583a() {
        return C3160i.m611a(this.f19004a);
    }
}
