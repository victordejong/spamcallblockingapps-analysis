package com.hiya.stingray.p000ui.stats;

import android.view.View;
/* renamed from: com.hiya.stingray.ui.stats.a$d$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/a$d$a.class */
final class a$d$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ View f250f;

    a$d$a(View view) {
        this.f250f = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f250f.setAlpha(0.0f);
        View view = this.f250f;
        if (view instanceof CallsStatsGraph) {
            ((CallsStatsGraph) view).m1038b();
        }
        View view2 = this.f250f;
        if (view2 instanceof CallsStatsPie) {
            ((CallsStatsPie) view2).m1037a();
        }
    }
}
