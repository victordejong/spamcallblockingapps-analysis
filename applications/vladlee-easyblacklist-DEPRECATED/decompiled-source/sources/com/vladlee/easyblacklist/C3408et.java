package com.vladlee.easyblacklist;

import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.vladlee.p076a.C3238b;
import com.vladlee.p076a.C3246f;
/* renamed from: com.vladlee.easyblacklist.et */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/et.class */
final class C3408et implements C3238b.AbstractC3241c {

    /* renamed from: a */
    final /* synthetic */ SettingsActivity f19579a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3408et(SettingsActivity settingsActivity) {
        this.f19579a = settingsActivity;
    }

    @Override // com.vladlee.p076a.C3238b.AbstractC3241c
    /* renamed from: a */
    public final void mo58a(C3246f fVar) {
        C3365dk dkVar;
        C3365dk dkVar2;
        C3365dk dkVar3;
        C3365dk dkVar4;
        C3365dk dkVar5;
        dkVar = this.f19579a.f19270k;
        if (dkVar != null) {
            Button button = (Button) this.f19579a.findViewById(2131296352);
            if (!fVar.m406b()) {
                Log.d("DEBUG", "Problem setting up In-app Billing: ".concat(String.valueOf(fVar)));
                dkVar5 = this.f19579a.f19270k;
                dkVar5.m133b(false);
                button.setVisibility(8);
                return;
            }
            dkVar2 = this.f19579a.f19270k;
            dkVar2.m133b(true);
            dkVar3 = this.f19579a.f19270k;
            dkVar4 = this.f19579a.f19270k;
            dkVar3.m141a(dkVar4.f19500a);
            this.f19579a.m288h();
            return;
        }
        FirebaseAnalytics.getInstance(this.f19579a).m646a("settings_nullPurchaseHelper", new Bundle());
    }
}
