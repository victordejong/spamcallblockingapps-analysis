package com.hiya.stingray.p000ui.p001v;

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
    final /* synthetic */ a f158f;

    a$d(a aVar) {
        this.f158f = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = this.f158f.getContext();
        if (context != null) {
            Object systemService = context.getSystemService("clipboard");
            if (systemService != null) {
                ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
                if (primaryClip != null) {
                    k.c(primaryClip, "clipData");
                    if (primaryClip.getItemCount() > 0) {
                        a.h1(this.f158f).setText(primaryClip.getItemAt(0).coerceToText(this.f158f.getContext()));
                        a.g1(this.f158f).i(true);
                        a.h1(this.f158f).requestFocus();
                        a.h1(this.f158f).setSelection(a.h1(this.f158f).getText().length());
                        a.g1(this.f158f).q();
                        a.i1(this.f158f, false);
                        return;
                    }
                    return;
                }
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
        }
        k.o();
        throw null;
    }
}
