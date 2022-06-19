package com.hiya.stingray.p030ui.local.p031f.p033n;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.hiya.stingray.ui.local.f.c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.b$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/b$c.class */
final class b$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f4715f;

    /* renamed from: g */
    final /* synthetic */ String f4716g;

    b$c(b bVar, String str) {
        this.f4715f = bVar;
        this.f4716g = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.f4716g));
        intent.addFlags(268435456);
        View view2 = this.f4715f.itemView;
        k.c(view2, "itemView");
        view2.getContext().startActivity(intent);
        c.a.d(this.f4715f.n(), "view_website");
    }
}
