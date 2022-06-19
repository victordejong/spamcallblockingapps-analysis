package com.hiya.stingray.p030ui.p037v;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.view.View;
import kotlin.TypeCastException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.v.a$d */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/v/a$d.class */
final class a$d implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ a f4952f;

    a$d(a aVar) {
        this.f4952f = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = this.f4952f.getContext();
        if (context == null) {
            k.o();
            throw null;
        }
        Object systemService = context.getSystemService("clipboard");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
        }
        ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
        if (primaryClip == null) {
            return;
        }
        k.c(primaryClip, "clipData");
        if (primaryClip.getItemCount() <= 0) {
            return;
        }
        a.h1(this.f4952f).setText(primaryClip.getItemAt(0).coerceToText(this.f4952f.getContext()));
        a.g1(this.f4952f).m1386i(true);
        a.h1(this.f4952f).requestFocus();
        a.h1(this.f4952f).setSelection(a.h1(this.f4952f).getText().length());
        a.g1(this.f4952f).m1378q();
        a.i1(this.f4952f, false);
    }
}
