package com.vladlee.easyblacklist;

import android.util.Log;
import com.vladlee.p076a.C3238b;
import com.vladlee.p076a.C3246f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.dn */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dn.class */
public final class C3368dn implements C3238b.AbstractC3241c {

    /* renamed from: a */
    final /* synthetic */ C3365dk f19511a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3368dn(C3365dk dkVar) {
        this.f19511a = dkVar;
    }

    @Override // com.vladlee.p076a.C3238b.AbstractC3241c
    /* renamed from: a */
    public final void mo58a(C3246f fVar) {
        C3365dk dkVar;
        boolean z;
        C3238b bVar;
        if (!fVar.m406b()) {
            Log.d("DEBUG", "Problem setting up In-app Billing: ".concat(String.valueOf(fVar)));
            dkVar = this.f19511a;
            z = false;
        } else {
            try {
                bVar = this.f19511a.f19506g;
                bVar.m418a(this.f19511a.f19500a);
            } catch (C3238b.C3239a e) {
                e.printStackTrace();
            }
            dkVar = this.f19511a;
            z = true;
        }
        dkVar.f19508i = z;
    }
}
