package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C0931r;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.b8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b8.class */
final class RunnableC1481b8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4184f;

    /* renamed from: g */
    final /* synthetic */ String f4185g;

    /* renamed from: h */
    final /* synthetic */ String f4186h;

    /* renamed from: i */
    final /* synthetic */ aa f4187i;

    /* renamed from: j */
    final /* synthetic */ boolean f4188j;

    /* renamed from: k */
    final /* synthetic */ j8 f4189k;

    RunnableC1481b8(j8 j8Var, AtomicReference atomicReference, String str, String str2, String str3, aa aaVar, boolean z) {
        this.f4189k = j8Var;
        this.f4184f = atomicReference;
        this.f4185g = str2;
        this.f4186h = str3;
        this.f4187i = aaVar;
        this.f4188j = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        AbstractC1490d3 A;
        synchronized (this.f4184f) {
            try {
                A = j8.A(this.f4189k);
            } catch (RemoteException e) {
                ((l5) this.f4189k).a.c().o().m1567d("(legacy) Failed to get user properties; remote exception", null, this.f4185g, e);
                this.f4184f.set(Collections.emptyList());
                atomicReference = this.f4184f;
            }
            if (A == null) {
                ((l5) this.f4189k).a.c().o().m1567d("(legacy) Failed to get user properties; not connected to service", null, this.f4185g, this.f4186h);
                this.f4184f.set(Collections.emptyList());
                this.f4184f.notify();
                return;
            }
            if (TextUtils.isEmpty(null)) {
                C0931r.m3308k(this.f4187i);
                this.f4184f.set(A.m1688O0(this.f4185g, this.f4186h, this.f4188j, this.f4187i));
            } else {
                this.f4184f.set(A.m1693C2(null, this.f4185g, this.f4186h, this.f4188j));
            }
            j8.B(this.f4189k);
            atomicReference = this.f4184f;
            atomicReference.notify();
        }
    }
}
