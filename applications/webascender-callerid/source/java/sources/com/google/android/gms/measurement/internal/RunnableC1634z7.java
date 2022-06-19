package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.z7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z7.class */
final class RunnableC1634z7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4616f;

    /* renamed from: g */
    final /* synthetic */ String f4617g;

    /* renamed from: h */
    final /* synthetic */ String f4618h;

    /* renamed from: i */
    final /* synthetic */ aa f4619i;

    /* renamed from: j */
    final /* synthetic */ j8 f4620j;

    RunnableC1634z7(j8 j8Var, AtomicReference atomicReference, String str, String str2, String str3, aa aaVar) {
        this.f4620j = j8Var;
        this.f4616f = atomicReference;
        this.f4617g = str2;
        this.f4618h = str3;
        this.f4619i = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC1490d3 A;
        synchronized (this.f4616f) {
            try {
                A = j8.A(this.f4620j);
            } catch (RemoteException e) {
                ((l5) this.f4620j).a.c().o().m1567d("(legacy) Failed to get conditional properties; remote exception", null, this.f4617g, e);
                this.f4616f.set(Collections.emptyList());
                atomicReference = this.f4616f;
            }
            if (A == null) {
                ((l5) this.f4620j).a.c().o().m1567d("(legacy) Failed to get conditional properties; not connected to service", null, this.f4617g, this.f4618h);
                this.f4616f.set(Collections.emptyList());
                this.f4616f.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C0931r.m3308k(this.f4619i);
                this.f4616f.set(A.m1690H(this.f4617g, this.f4618h, this.f4619i));
            } else {
                this.f4616f.set(A.m1687Q0(null, this.f4617g, this.f4618h));
            }
            j8.B(this.f4620j);
            atomicReference = this.f4616f;
            atomicReference.notify();
        }
    }
}
