package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.k;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/r.class */
public abstract class r<T extends IInterface> extends k<T> implements a.f {

    /* renamed from: a  reason: collision with root package name */
    private final n f4027a;
    private final Set<Scope> h;
    private final Account i;

    /* JADX INFO: Access modifiers changed from: protected */
    public r(Context context, Looper looper, int i, n nVar, b.AbstractC0112b bVar, b.c cVar) {
        this(context, looper, s.a(context), com.google.android.gms.common.b.a(), i, nVar, (b.AbstractC0112b) b.a(bVar), (b.c) b.a(cVar));
    }

    private r(Context context, Looper looper, s sVar, com.google.android.gms.common.b bVar, int i, n nVar, final b.AbstractC0112b bVar2, final b.c cVar) {
        super(context, looper, sVar, bVar, i, bVar2 == null ? null : new k.b() { // from class: com.google.android.gms.common.internal.r.1
            @Override // com.google.android.gms.common.internal.k.b
            public final void a() {
                b.AbstractC0112b.this.a();
            }

            @Override // com.google.android.gms.common.internal.k.b
            public final void b() {
                b.AbstractC0112b.this.b();
            }
        }, cVar == null ? null : new k.c() { // from class: com.google.android.gms.common.internal.r.2
            @Override // com.google.android.gms.common.internal.k.c
            public final void a(ConnectionResult connectionResult) {
                b.c.this.a(connectionResult);
            }
        }, nVar.d);
        this.f4027a = nVar;
        this.i = nVar.f4022a;
        Set<Scope> set = nVar.f4023b;
        for (Scope scope : set) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.h = set;
    }

    @Override // com.google.android.gms.common.internal.k
    public final Account f() {
        return this.i;
    }
}
