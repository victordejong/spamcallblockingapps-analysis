package com.vladlee.easyblacklist;

import android.widget.Button;
import com.vladlee.p076a.C3238b;
import com.vladlee.p076a.C3246f;
import com.vladlee.p076a.C3247g;
/* renamed from: com.vladlee.easyblacklist.eu */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eu.class */
final class C3409eu implements C3238b.AbstractC3242d {

    /* renamed from: a */
    final /* synthetic */ SettingsActivity f19580a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3409eu(SettingsActivity settingsActivity) {
        this.f19580a = settingsActivity;
    }

    @Override // com.vladlee.p076a.C3238b.AbstractC3242d
    /* renamed from: a */
    public final void mo57a(C3246f fVar, C3247g gVar) {
        C3365dk dkVar;
        C3365dk dkVar2;
        C3365dk dkVar3;
        C3365dk dkVar4;
        C3365dk unused;
        Button button = (Button) this.f19580a.findViewById(2131296352);
        if (fVar.m405c()) {
            dkVar2 = this.f19580a.f19270k;
            dkVar2.m137a(false);
            if (fVar.m407a() == 2) {
                dkVar4 = this.f19580a.f19270k;
                dkVar4.m133b(false);
            }
            dkVar3 = this.f19580a.f19270k;
            if (dkVar3.m145a()) {
                this.f19580a.m288h();
            }
        } else if (gVar.m402a("no_ads")) {
            dkVar = this.f19580a.f19270k;
            dkVar.m137a(true);
            unused = this.f19580a.f19270k;
            C3365dk.m131c(this.f19580a);
            button.setVisibility(8);
        }
    }
}
