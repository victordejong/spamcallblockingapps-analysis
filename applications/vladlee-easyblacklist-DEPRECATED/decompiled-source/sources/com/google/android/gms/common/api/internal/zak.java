package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.internal.base.zar;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zak.class */
public abstract class zak extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    protected volatile boolean f6542b;

    /* renamed from: c */
    protected final AtomicReference<C1599av> f6543c;

    /* renamed from: d */
    protected final GoogleApiAvailability f6544d;

    /* renamed from: e */
    private final Handler f6545e;

    /* JADX INFO: Access modifiers changed from: protected */
    public zak(LifecycleFragment lifecycleFragment) {
        this(lifecycleFragment, GoogleApiAvailability.getInstance());
    }

    private zak(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.f6543c = new AtomicReference<>(null);
        this.f6545e = new zar(Looper.getMainLooper());
        this.f6544d = googleApiAvailability;
    }

    /* renamed from: a */
    private static int m5807a(C1599av avVar) {
        if (avVar == null) {
            return -1;
        }
        return avVar.m5908a();
    }

    /* renamed from: a */
    protected abstract void mo5809a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo5808a(ConnectionResult connectionResult, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final void m5806c() {
        this.f6543c.set(null);
        mo5809a();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00be  */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r9, int r10, android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zak.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        mo5808a(new ConnectionResult(13, null), m5807a(this.f6543c.get()));
        m5806c();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f6543c.set(bundle.getBoolean("resolving_error", false) ? new C1599av(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        C1599av avVar = this.f6543c.get();
        if (avVar != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", avVar.m5908a());
            bundle.putInt("failed_status", avVar.m5907b().getErrorCode());
            bundle.putParcelable("failed_resolution", avVar.m5907b().getResolution());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.f6542b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.f6542b = false;
    }

    public final void zab(ConnectionResult connectionResult, int i) {
        C1599av avVar = new C1599av(connectionResult, i);
        if (this.f6543c.compareAndSet(null, avVar)) {
            this.f6545e.post(new RunnableC1598au(this, avVar));
        }
    }
}
