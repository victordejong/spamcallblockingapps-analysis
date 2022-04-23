package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.hiya.stingray.t.h1.a;
import com.hiya.stingray.ui.local.f.c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.m$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/m$a.class */
final class m$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ m f42f;

    /* renamed from: g */
    final /* synthetic */ a f43g;

    m$a(m mVar, a aVar) {
        this.f42f = mVar;
        this.f43g = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.f43g.c()));
        intent.addFlags(268435456);
        k.c(view, "it");
        view.getContext().startActivity(intent);
        c.a.d(this.f42f.n(), "open_content_provider");
    }
}
