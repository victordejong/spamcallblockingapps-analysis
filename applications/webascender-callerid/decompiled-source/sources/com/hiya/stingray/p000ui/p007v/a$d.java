package com.hiya.stingray.p000ui.p007v;

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
    final /* synthetic */ a f273f;

    a$d(a aVar) {
        this.f273f = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = this.f273f.getContext();
        if (context != null) {
            Object systemService = context.getSystemService("clipboard");
            if (systemService != null) {
                ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
                if (primaryClip != null) {
                    k.c(primaryClip, "clipData");
                    if (primaryClip.getItemCount() > 0) {
                        a.h1(this.f273f).setText(primaryClip.getItemAt(0).coerceToText(this.f273f.getContext()));
                        a.g1(this.f273f).m1386i(true);
                        a.h1(this.f273f).requestFocus();
                        a.h1(this.f273f).setSelection(a.h1(this.f273f).getText().length());
                        a.g1(this.f273f).m1378q();
                        a.i1(this.f273f, false);
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
