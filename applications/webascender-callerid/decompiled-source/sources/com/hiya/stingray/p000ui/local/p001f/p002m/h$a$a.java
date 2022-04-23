package com.hiya.stingray.p000ui.local.p001f.p002m;

import com.hiya.stingray.ui.local.f.m.h;
/* renamed from: com.hiya.stingray.ui.local.f.m.h$a$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/f/m/h$a$a.class */
final class h$a$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ h.a f31f;

    h$a$a(h.a aVar) {
        this.f31f = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h.e(this.f31f.a).notifyDataSetChanged();
    }
}
