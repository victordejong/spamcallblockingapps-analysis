package androidx.appcompat.app;

import android.view.View;
import androidx.core.p037g.C0717ae;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.app.aj */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/aj.class */
final class C0293aj extends C0717ae {

    /* renamed from: a */
    final /* synthetic */ C0291ai f1296a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0293aj(C0291ai aiVar) {
        this.f1296a = aiVar;
    }

    @Override // androidx.core.p037g.C0717ae, androidx.core.p037g.AbstractC0716ad
    /* renamed from: b */
    public final void mo8441b(View view) {
        if (this.f1296a.f1278k && this.f1296a.f1273f != null) {
            this.f1296a.f1273f.setTranslationY(0.0f);
            this.f1296a.f1270c.setTranslationY(0.0f);
        }
        this.f1296a.f1270c.setVisibility(8);
        this.f1296a.f1270c.m9526a(false);
        C0291ai aiVar = this.f1296a;
        aiVar.f1281n = null;
        if (aiVar.f1277j != null) {
            aiVar.f1277j.mo51a(aiVar.f1276i);
            aiVar.f1276i = null;
            aiVar.f1277j = null;
        }
        if (this.f1296a.f1269b != null) {
            C0741t.m8312s(this.f1296a.f1269b);
        }
    }
}
