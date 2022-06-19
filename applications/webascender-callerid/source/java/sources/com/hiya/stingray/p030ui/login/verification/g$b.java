package com.hiya.stingray.p030ui.login.verification;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.appcompat.app.b$a;
import androidx.fragment.app.e;
import com.hiya.stingray.util.C1808e0;
import kotlin.w.c.k;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.login.verification.g$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/g$b.class */
final class g$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ g f4803f;

    g$b(g gVar) {
        this.f4803f = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g.h1(this.f4803f, true);
        try {
            this.f4803f.i1().m1187c();
            if (g.g1(this.f4803f).k() != null) {
                g gVar = this.f4803f;
                gVar.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account/subscriptions?sku=" + g.g1(this.f4803f).k() + "&package=com.webascender.callerid")));
            } else {
                this.f4803f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account?utm_source=google&utm_medium=account&utm_campaign=my-account")));
            }
        } catch (ActivityNotFoundException e) {
            e activity = this.f4803f.getActivity();
            if (activity == null) {
                k.o();
                throw null;
            }
            b$a b_a = new b$a(activity);
            C1808e0.m956c(b_a, null, null, false, 7, null);
            b_a.m6890a().show();
            a.b(e);
        }
    }
}
