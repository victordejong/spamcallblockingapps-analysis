package com.vladlee.easyblacklist;

import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cq.class */
public final class C3344cq implements TabLayout.AbstractC3079c {

    /* renamed from: a */
    final /* synthetic */ EasyBlacklistActivity f19454a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3344cq(EasyBlacklistActivity easyBlacklistActivity) {
        this.f19454a = easyBlacklistActivity;
    }

    @Override // com.google.android.material.tabs.TabLayout.AbstractC3078b
    /* renamed from: a */
    public final void mo152a(TabLayout.C3082f fVar) {
        ViewPager viewPager;
        int c = fVar.m857c();
        viewPager = this.f19454a.f19253o;
        viewPager.m6411b(c);
        this.f19454a.m320d(c);
        this.f19454a.m317e(c);
    }
}
