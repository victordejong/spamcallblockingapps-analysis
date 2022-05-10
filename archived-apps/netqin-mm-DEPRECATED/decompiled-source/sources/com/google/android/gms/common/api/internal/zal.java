package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zap;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3259i0;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3263k0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zal.class */
public abstract class zal extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    public volatile boolean f23291b;

    /* renamed from: c */
    public final AtomicReference<C3259i0> f23292c;

    /* renamed from: d */
    public final Handler f23293d;

    /* renamed from: e */
    public final GoogleApiAvailability f23294e;

    public zal(LifecycleFragment lifecycleFragment) {
        this(lifecycleFragment, GoogleApiAvailability.m17826a());
    }

    @VisibleForTesting
    public zal(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.f23292c = new AtomicReference<>(null);
        this.f23293d = new zap(Looper.getMainLooper());
        this.f23294e = googleApiAvailability;
    }

    /* renamed from: a */
    public static int m17472a(C3259i0 i0Var) {
        if (i0Var == null) {
            return -1;
        }
        return i0Var.m27300a();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4  */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo17474a(int r9, int r10, android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zal.mo17474a(int, int, android.content.Intent):void");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo17473a(Bundle bundle) {
        super.mo17473a(bundle);
        if (bundle != null) {
            this.f23292c.set(bundle.getBoolean("resolving_error", false) ? new C3259i0(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    /* renamed from: a */
    public abstract void mo17457a(ConnectionResult connectionResult, int i);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo17471b(Bundle bundle) {
        super.mo17471b(bundle);
        C3259i0 i0Var = this.f23292c.get();
        if (i0Var != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", i0Var.m27300a());
            bundle.putInt("failed_status", i0Var.m27299b().m17834f());
            bundle.putParcelable("failed_resolution", i0Var.m27299b().m17832u());
        }
    }

    /* renamed from: b */
    public final void m17470b(ConnectionResult connectionResult, int i) {
        C3259i0 i0Var = new C3259i0(connectionResult, i);
        if (this.f23292c.compareAndSet(null, i0Var)) {
            this.f23293d.post(new RunnableC3263k0(this, i0Var));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo17455d() {
        super.mo17455d();
        this.f23291b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public void mo17454e() {
        super.mo17454e();
        this.f23291b = false;
    }

    /* renamed from: f */
    public abstract void mo17453f();

    /* renamed from: g */
    public final void m17469g() {
        this.f23292c.set(null);
        mo17453f();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        mo17457a(new ConnectionResult(13, null), m17472a(this.f23292c.get()));
        m17469g();
    }
}
