package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;
/* renamed from: com.google.firebase.iid.m */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/m.class */
final class C3222m extends AbstractC3221l<Bundle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3222m(int i, Bundle bundle) {
        super(i, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.firebase.iid.AbstractC3221l
    /* renamed from: a */
    public final void mo470a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = Bundle.EMPTY;
        }
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(bundle3);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16 + String.valueOf(valueOf2).length());
            sb.append("Finishing ");
            sb.append(valueOf);
            sb.append(" with ");
            sb.append(valueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.f19124b.setResult(bundle3);
    }
}
