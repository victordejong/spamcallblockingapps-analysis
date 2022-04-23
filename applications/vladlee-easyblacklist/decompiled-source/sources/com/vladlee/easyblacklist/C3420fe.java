package com.vladlee.easyblacklist;

import android.content.Intent;
import android.net.Uri;
import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.fe */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fe.class */
final class C3420fe implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19591a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3420fe(C3413ey eyVar) {
        this.f19591a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        this.f19591a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + this.f19591a.getActivity().getPackageName())));
        return true;
    }
}
