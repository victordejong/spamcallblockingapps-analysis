package com.hiya.stingray.p030ui.premium.upsell;

import android.content.DialogInterface;
import kotlin.w.b.a;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.c$l$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/c$l$a.class */
final class c$l$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ a f4862f;

    c$l$a(a aVar) {
        this.f4862f = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        k.g(dialogInterface, "dialogInterface");
        this.f4862f.invoke();
        dialogInterface.dismiss();
    }
}
