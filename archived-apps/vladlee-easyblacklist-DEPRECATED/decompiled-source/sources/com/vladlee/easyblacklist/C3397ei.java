package com.vladlee.easyblacklist;

import android.os.Bundle;
import android.widget.CompoundButton;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.vladlee.easyblacklist.ei */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ei.class */
final class C3397ei implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ C3398ej f19565a;

    /* renamed from: b */
    final /* synthetic */ C3396eh f19566b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3397ei(C3396eh ehVar, C3398ej ejVar) {
        this.f19566b = ehVar;
        this.f19565a = ejVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.f19566b.isResumed()) {
            C3399ek.m60a(this.f19565a, z);
            BlockService.m365a(this.f19566b.getActivity(), z);
            C3392ee.m74b(this.f19566b.getActivity(), "pref_schedule_enable", z);
            EasyBlacklistActivity.m310i();
            FirebaseAnalytics.getInstance(this.f19566b.getActivity()).m646a("scheduleFragment_toggle", new Bundle());
        }
    }
}
