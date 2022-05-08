package com.hiya.stingray.p000ui.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.app.b;
import kotlin.NoWhenBranchMatchedException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.setting.d$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a.class */
final class d$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ d f123f;

    /* renamed from: com.hiya.stingray.ui.setting.d$a$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a$a.class */
    static final class DialogInterface$OnClickListenerC0055a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0055a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialog");
            d$a.this.f123f.h1().m1133c();
            d.g1(d$a.this.f123f).l();
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.ui.setting.d$a$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a$b.class */
    static final class DialogInterface$OnClickListenerC0056b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0056b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialog");
            d$a.this.f123f.h1().m1135a();
            dialogInterface.dismiss();
        }
    }

    d$a(d dVar) {
        this.f123f = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        boolean f = this.f123f.i1().f();
        if (f) {
            str = this.f123f.getString(2131821138);
        } else if (!f) {
            str = this.f123f.getString(2131821137);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        k.c(str, "when (selectManager.isSe…non_select)\n            }");
        Context context = this.f123f.getContext();
        if (context != null) {
            b.a aVar = new b.a(context);
            aVar.h(str);
            aVar.p(2131821119);
            aVar.m(2131821235, new DialogInterface$OnClickListenerC0055a());
            aVar.i(2131820704, new DialogInterface$OnClickListenerC0056b());
            b a = aVar.a();
            k.c(a, "AlertDialog.Builder(cont…                .create()");
            a.show();
            this.f123f.h1().m1134b();
            return;
        }
        k.o();
        throw null;
    }
}
