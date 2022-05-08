package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.p026b.C0531c;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaad.class */
public class zaad extends zak {

    /* renamed from: e */
    private final C0531c<ApiKey<?>> f6429e = new C0531c<>();

    /* renamed from: f */
    private GoogleApiManager f6430f;

    private zaad(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f6308a.addCallback("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: d */
    private final void m5877d() {
        if (!this.f6429e.isEmpty()) {
            this.f6430f.zaa(this);
        }
    }

    public static void zaa(Activity activity, GoogleApiManager googleApiManager, ApiKey<?> apiKey) {
        LifecycleFragment fragment = getFragment(activity);
        zaad zaadVar = (zaad) fragment.getCallbackOrNull("ConnectionlessLifecycleHelper", zaad.class);
        zaad zaadVar2 = zaadVar;
        if (zaadVar == null) {
            zaadVar2 = new zaad(fragment);
        }
        zaadVar2.f6430f = googleApiManager;
        Preconditions.checkNotNull(apiKey, "ApiKey cannot be null");
        zaadVar2.f6429e.add(apiKey);
        googleApiManager.zaa(zaadVar2);
    }

    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: a */
    protected final void mo5809a() {
        this.f6430f.zam();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: a */
    public final void mo5808a(ConnectionResult connectionResult, int i) {
        this.f6430f.zaa(connectionResult, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C0531c<ApiKey<?>> m5878b() {
        return this.f6429e;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onResume() {
        super.onResume();
        m5877d();
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        m5877d();
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.f6430f.m5959a(this);
    }
}
