package com.google.firebase;

import android.content.Context;
import com.google.firebase.p072b.AbstractC3146a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/b.class */
public final /* synthetic */ class C3145b implements AbstractC3146a {

    /* renamed from: a */
    private final FirebaseApp f18968a;

    /* renamed from: b */
    private final Context f18969b;

    private C3145b(FirebaseApp firebaseApp, Context context) {
        this.f18968a = firebaseApp;
        this.f18969b = context;
    }

    /* renamed from: a */
    public static AbstractC3146a m643a(FirebaseApp firebaseApp, Context context) {
        return new C3145b(firebaseApp, context);
    }

    @Override // com.google.firebase.p072b.AbstractC3146a
    /* renamed from: a */
    public final Object mo583a() {
        return FirebaseApp.m660a(this.f18968a, this.f18969b);
    }
}
