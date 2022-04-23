package com.hiya.stingray.p000ui.premium;

import android.content.DialogInterface;
import kotlin.w.b.a;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.z$j$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/z$j$a.class */
final class z$j$a implements DialogInterface.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ a f199f;

    z$j$a(a aVar) {
        this.f199f = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        k.g(dialogInterface, "dialogInterface");
        this.f199f.invoke();
        dialogInterface.dismiss();
    }
}
