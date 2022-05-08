package com.google.firebase.iid;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzam.class */
final class zzam extends zzak<Bundle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzam(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.iid.zzak
    public final boolean zzab() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.iid.zzak
    public final void zzb(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        finish(bundle3);
    }
}
