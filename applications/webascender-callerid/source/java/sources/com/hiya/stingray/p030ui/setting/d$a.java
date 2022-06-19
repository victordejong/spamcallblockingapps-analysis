package com.hiya.stingray.p030ui.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.app.b;
import androidx.appcompat.app.b$a;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.hiya.stingray.ui.setting.d$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a.class */
public final class d$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ d f4917f;

    /* renamed from: com.hiya.stingray.ui.setting.d$a$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a$a.class */
    static final class DialogInterface$OnClickListenerC1772a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC1772a() {
            d$a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialog");
            d$a.this.f4917f.h1().m1053c();
            d.g1(d$a.this.f4917f).l();
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.ui.setting.d$a$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a$b.class */
    static final class DialogInterface$OnClickListenerC1773b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC1773b() {
            d$a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialog");
            d$a.this.f4917f.h1().m1055a();
            dialogInterface.dismiss();
        }
    }

    d$a(d dVar) {
        this.f4917f = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        boolean f = this.f4917f.i1().f();
        if (f) {
            str = this.f4917f.getString(2131821178);
        } else if (f) {
            throw new NoWhenBranchMatchedException();
        } else {
            str = this.f4917f.getString(2131821177);
        }
        k.c(str, "when (selectManager.isSe…non_select)\n            }");
        Context context = this.f4917f.getContext();
        if (context == null) {
            k.o();
            throw null;
        }
        b$a b_a = new b$a(context);
        b_a.m6883h(str);
        b_a.m6875p(2131821159);
        b_a.m6878m(2131821275, new DialogInterface$OnClickListenerC1772a());
        b_a.m6882i(2131820707, new DialogInterface$OnClickListenerC1773b());
        b m6890a = b_a.m6890a();
        k.c(m6890a, "AlertDialog.Builder(cont…                .create()");
        m6890a.show();
        this.f4917f.h1().m1054b();
    }
}
