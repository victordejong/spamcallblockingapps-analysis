package com.hiya.stingray.p030ui.local.p031f.p032m;

import com.hiya.stingray.ui.local.f.m.h;
/* renamed from: com.hiya.stingray.ui.local.f.m.h$a$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/m/h$a$a.class */
final class h$a$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ h.a f4710f;

    h$a$a(h.a aVar) {
        this.f4710f = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h.e(this.f4710f.a).notifyDataSetChanged();
    }
}
