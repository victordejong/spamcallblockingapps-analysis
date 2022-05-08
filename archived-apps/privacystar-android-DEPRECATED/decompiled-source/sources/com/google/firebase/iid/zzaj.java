package com.google.firebase.iid;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzaj.class */
final class zzaj extends zzak<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.iid.zzak
    public final boolean zzab() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.iid.zzak
    public final void zzb(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            finish(null);
        } else {
            zza(new zzal(4, "Invalid response to one way request"));
        }
    }
}
