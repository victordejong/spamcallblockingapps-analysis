package com.vladlee.easyblacklist;

import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.fh */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fh.class */
final class C3423fh implements Preference.AbstractC0991b {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19594a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3423fh(C3413ey eyVar) {
        this.f19594a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0991b
    /* renamed from: a */
    public final boolean mo53a(Object obj) {
        C3392ee.m74b(this.f19594a.getActivity(), "pref_block_calls_option", ((Boolean) obj).booleanValue());
        return true;
    }
}
