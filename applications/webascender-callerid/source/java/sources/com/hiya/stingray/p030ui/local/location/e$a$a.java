package com.hiya.stingray.p030ui.local.location;

import android.view.View;
import com.hiya.stingray.t.h1.i;
import com.hiya.stingray.ui.local.location.e;
import kotlin.r;
import kotlin.w.b.l;
/* renamed from: com.hiya.stingray.ui.local.location.e$a$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/e$a$a.class */
final class e$a$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ e.a f4746f;

    /* renamed from: g */
    final /* synthetic */ i f4747g;

    e$a$a(e.a aVar, i iVar) {
        this.f4746f = aVar;
        this.f4747g = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        l c = this.f4746f.a.c();
        if (c != null) {
            r rVar = (r) c.invoke(this.f4747g);
        }
    }
}
