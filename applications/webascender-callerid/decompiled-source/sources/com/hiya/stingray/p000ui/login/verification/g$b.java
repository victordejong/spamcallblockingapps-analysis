package com.hiya.stingray.p000ui.login.verification;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.appcompat.app.b;
import androidx.fragment.app.e;
import com.hiya.stingray.util.C0146e0;
import kotlin.w.c.k;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.login.verification.g$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/g$b.class */
final class g$b implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ g f124f;

    g$b(g gVar) {
        this.f124f = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        g.h1(this.f124f, true);
        try {
            this.f124f.i1().m1187c();
            if (g.g1(this.f124f).k() != null) {
                g gVar = this.f124f;
                gVar.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account/subscriptions?sku=" + g.g1(this.f124f).k() + "&package=com.webascender.callerid")));
            } else {
                this.f124f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account?utm_source=google&utm_medium=account&utm_campaign=my-account")));
            }
        } catch (ActivityNotFoundException e) {
            e activity = this.f124f.getActivity();
            if (activity != null) {
                b.a aVar = new b.a(activity);
                C0146e0.m956c(aVar, null, null, false, 7, null);
                aVar.a().show();
                a.b(e);
                return;
            }
            k.o();
            throw null;
        }
    }
}
