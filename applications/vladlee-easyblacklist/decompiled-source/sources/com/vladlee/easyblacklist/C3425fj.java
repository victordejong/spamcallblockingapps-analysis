package com.vladlee.easyblacklist;

import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.fj */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fj.class */
final class C3425fj implements Preference.AbstractC0991b {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19596a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3425fj(C3413ey eyVar) {
        this.f19596a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0991b
    /* renamed from: a */
    public final boolean mo53a(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        C3399ek.m60a(this.f19596a, booleanValue);
        BlockService.m365a(this.f19596a.getActivity(), booleanValue);
        C3392ee.m74b(this.f19596a.getActivity(), "pref_schedule_enable", booleanValue);
        return true;
    }
}
