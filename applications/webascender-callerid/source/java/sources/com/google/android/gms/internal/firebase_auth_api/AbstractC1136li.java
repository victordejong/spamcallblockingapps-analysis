package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.internal.firebase_auth_api.ii;
import com.google.android.gms.tasks.AbstractC1646g;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.li */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/li.class */
public abstract class AbstractC1136li<T extends ii> {

    /* renamed from: a */
    private C1076gi<T> f3752a;

    /* renamed from: a */
    abstract Future<C1076gi<T>> m2764a();

    /* renamed from: b */
    public final <ResultT, A extends C0807a.AbstractC0808b> AbstractC1646g<ResultT> m2763b(AbstractC1125ki<A, ResultT> abstractC1125ki) {
        return (AbstractC1646g<ResultT>) m2761d().f3715a.m3686d(abstractC1125ki.m2773a());
    }

    /* renamed from: c */
    public final <ResultT, A extends C0807a.AbstractC0808b> AbstractC1646g<ResultT> m2762c(AbstractC1125ki<A, ResultT> abstractC1125ki) {
        return (AbstractC1646g<ResultT>) m2761d().f3715a.m3682h(abstractC1125ki.m2773a());
    }

    /* renamed from: d */
    public final C1076gi<T> m2761d() {
        C1076gi<T> c1076gi;
        synchronized (this) {
            if (this.f3752a == null) {
                try {
                    this.f3752a = m2764a().get();
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    throw new RuntimeException(valueOf.length() != 0 ? "There was an error while initializing the connection to the GoogleApi: ".concat(valueOf) : new String("There was an error while initializing the connection to the GoogleApi: "));
                }
            }
            c1076gi = this.f3752a;
        }
        return c1076gi;
    }
}
