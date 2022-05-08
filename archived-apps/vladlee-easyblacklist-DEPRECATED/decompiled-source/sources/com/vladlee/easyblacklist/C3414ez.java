package com.vladlee.easyblacklist;

import android.content.Intent;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.ez */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ez.class */
final class C3414ez implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19584a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3414ez(C3413ey eyVar) {
        this.f19584a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        FragmentActivity activity = this.f19584a.getActivity();
        activity.startActivity(new Intent(activity, WhitelistActivity.class));
        return true;
    }
}
