package com.hiya.stingray.p000ui.local.p001f.p003n;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.hiya.stingray.ui.local.f.c;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.f.n.b$c */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/n/b$c.class */
final class b$c implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f36f;

    /* renamed from: g */
    final /* synthetic */ String f37g;

    b$c(b bVar, String str) {
        this.f36f = bVar;
        this.f37g = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.f37g));
        intent.addFlags(268435456);
        View view2 = ((RecyclerView.d0) this.f36f).itemView;
        k.c(view2, "itemView");
        view2.getContext().startActivity(intent);
        c.a.d(this.f36f.n(), "view_website");
    }
}
