package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaao.class */
final class zaao extends zabf {
    private final /* synthetic */ ConnectionResult zagl;
    private final /* synthetic */ zaan zagm;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaao(zaan zaanVar, zabd zabdVar, ConnectionResult connectionResult) {
        super(zabdVar);
        this.zagm = zaanVar;
        this.zagl = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    @GuardedBy("mLock")
    public final void zaan() {
        this.zagm.zagi.zae(this.zagl);
    }
}
