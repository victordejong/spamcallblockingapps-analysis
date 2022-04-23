package com.vladlee.easyblacklist;

import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.AbstractC0897m;
import androidx.viewpager.widget.ViewPager;
/* renamed from: com.vladlee.easyblacklist.cx */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cx.class */
final class RunnableC3351cx implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f19463a;

    /* renamed from: b */
    final /* synthetic */ boolean f19464b;

    /* renamed from: c */
    final /* synthetic */ boolean f19465c;

    /* renamed from: d */
    final /* synthetic */ boolean f19466d;

    /* renamed from: e */
    final /* synthetic */ RunnableC3350cw f19467e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3351cx(RunnableC3350cw cwVar, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f19467e = cwVar;
        this.f19463a = z;
        this.f19464b = z2;
        this.f19465c = z3;
        this.f19466d = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewPager viewPager;
        int i;
        ViewPager viewPager2;
        C3454gl glVar;
        if (!this.f19467e.f19462b.isFinishing()) {
            this.f19467e.f19462b.f19253o = (ViewPager) this.f19467e.f19462b.findViewById(2131296511);
            viewPager = this.f19467e.f19462b.f19253o;
            viewPager.m6404c();
            EasyBlacklistActivity easyBlacklistActivity = this.f19467e.f19462b;
            AbstractC0897m f = this.f19467e.f19462b.m7852f();
            i = this.f19467e.f19462b.f19264z;
            easyBlacklistActivity.f19254p = new C3454gl(f, i);
            viewPager2 = this.f19467e.f19462b.f19253o;
            glVar = this.f19467e.f19462b.f19254p;
            viewPager2.m6415a(glVar);
            if (!this.f19463a) {
                if (this.f19464b) {
                    if (!this.f19465c) {
                        this.f19467e.f19462b.m327b(1);
                    } else {
                        this.f19467e.f19462b.m327b(2);
                    }
                    if (C3335ch.m155a(this.f19467e.f19462b, 172800000L)) {
                        C3318by.m175f(this.f19467e.f19462b);
                        C3318by.m178e(this.f19467e.f19462b);
                    }
                }
                if (this.f19466d && this.f19465c) {
                    this.f19467e.f19462b.m327b(1);
                }
            }
            this.f19467e.f19462b.m9927a((Toolbar) this.f19467e.f19462b.findViewById(2131296622));
            this.f19467e.f19462b.m9926b().mo9825b(false);
            this.f19467e.f19462b.m302m();
        }
    }
}
