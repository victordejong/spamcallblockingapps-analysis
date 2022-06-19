package com.hiya.stingray.p030ui.stats;

import android.widget.ScrollView;
import com.hiya.stingray.o;
import com.hiya.stingray.ui.stats.a;
/* renamed from: com.hiya.stingray.ui.stats.a$d$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/stats/a$d$b.class */
final class a$d$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ a.d f4930f;

    a$d$b(a.d dVar) {
        this.f4930f = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ScrollView scrollView = (ScrollView) this.f4930f.a.f1(o.A3);
        if (scrollView != null) {
            scrollView.scrollTo(0, 0);
        }
    }
}
