package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaad.class */
public class zaad extends zak {

    /* renamed from: k */
    private final ArraySet<ApiKey<?>> f7133k = new ArraySet<>();

    /* renamed from: l */
    private GoogleApiManager f7134l;

    private zaad(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f7108f.mo14641g("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: q */
    public static void m14860q(Activity activity, GoogleApiManager googleApiManager, ApiKey<?> apiKey) {
        LifecycleFragment c = LifecycleCallback.m14880c(activity);
        zaad zaadVar = (zaad) c.mo14644I("ConnectionlessLifecycleHelper", zaad.class);
        zaad zaadVar2 = zaadVar;
        if (zaadVar == null) {
            zaadVar2 = new zaad(c);
        }
        zaadVar2.f7134l = googleApiManager;
        Preconditions.m14522l(apiKey, "ApiKey cannot be null");
        zaadVar2.f7133k.add(apiKey);
        googleApiManager.m14949j(zaadVar2);
    }

    /* renamed from: s */
    private final void m14858s() {
        if (!this.f7133k.isEmpty()) {
            this.f7134l.m14949j(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: h */
    public void mo14861h() {
        super.mo14861h();
        m14858s();
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public void mo14724j() {
        super.mo14724j();
        m14858s();
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public void mo10770k() {
        super.mo10770k();
        this.f7134l.m14945n(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: m */
    public final void mo14722m(ConnectionResult connectionResult, int i) {
        this.f7134l.m14953f(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: o */
    protected final void mo14720o() {
        this.f7134l.m14959C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public final ArraySet<ApiKey<?>> m14859r() {
        return this.f7133k;
    }
}
