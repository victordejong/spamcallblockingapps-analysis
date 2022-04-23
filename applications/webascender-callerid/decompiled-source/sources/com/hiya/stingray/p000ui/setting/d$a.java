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
    final /* synthetic */ d f238f;

    /* renamed from: com.hiya.stingray.ui.setting.d$a$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a$a.class */
    static final class DialogInterface$OnClickListenerC0110a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0110a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialog");
            d$a.this.f238f.h1().m1053c();
            d.g1(d$a.this.f238f).l();
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.hiya.stingray.ui.setting.d$a$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/d$a$b.class */
    static final class DialogInterface$OnClickListenerC0111b implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0111b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialog");
            d$a.this.f238f.h1().m1055a();
            dialogInterface.dismiss();
        }
    }

    d$a(d dVar) {
        this.f238f = dVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        boolean f = this.f238f.i1().f();
        if (f) {
            str = this.f238f.getString(2131821178);
        } else if (!f) {
            str = this.f238f.getString(2131821177);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        k.c(str, "when (selectManager.isSe…non_select)\n            }");
        Context context = this.f238f.getContext();
        if (context != null) {
            b.a aVar = new b.a(context);
            aVar.h(str);
            aVar.p(2131821159);
            aVar.m(2131821275, new DialogInterface$OnClickListenerC0110a());
            aVar.i(2131820707, new DialogInterface$OnClickListenerC0111b());
            b a = aVar.a();
            k.c(a, "AlertDialog.Builder(cont…                .create()");
            a.show();
            this.f238f.h1().m1054b();
            return;
        }
        k.o();
        throw null;
    }
}
