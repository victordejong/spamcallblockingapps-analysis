package com.vladlee.easyblacklist;

import android.util.Log;
import android.widget.Button;
import com.vladlee.p076a.C3238b;
import com.vladlee.p076a.C3246f;
import com.vladlee.p076a.C3248h;
/* renamed from: com.vladlee.easyblacklist.ev */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ev.class */
final class C3410ev implements C3238b.AbstractC3240b {

    /* renamed from: a */
    final /* synthetic */ SettingsActivity f19581a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3410ev(SettingsActivity settingsActivity) {
        this.f19581a = settingsActivity;
    }

    @Override // com.vladlee.p076a.C3238b.AbstractC3240b
    /* renamed from: a */
    public final void mo56a(C3246f fVar, C3248h hVar) {
        C3365dk dkVar;
        C3365dk dkVar2;
        C3365dk unused;
        Button button = (Button) this.f19581a.findViewById(2131296352);
        if (fVar.m405c()) {
            Log.d("DEBUG", "Error purchasing: ".concat(String.valueOf(fVar)));
            dkVar2 = this.f19581a.f19270k;
            dkVar2.m137a(false);
            this.f19581a.m288h();
        } else if (hVar.m400a().equals("no_ads")) {
            dkVar = this.f19581a.f19270k;
            dkVar.m137a(true);
            unused = this.f19581a.f19270k;
            C3365dk.m131c(this.f19581a);
            button.setVisibility(8);
        }
    }
}
