package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Bundle;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.vladlee.easyblacklist.fa */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fa.class */
final class C3416fa implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19586a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3416fa(C3413ey eyVar) {
        this.f19586a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        if (C3392ee.m80a((Context) this.f19586a.getActivity(), "pref_show_status_bar_icon", true)) {
            return true;
        }
        ((SwitchPreferenceCompat) this.f19586a.mo7391a((CharSequence) "pref_show_status_bar_icon")).m7412f(true);
        C3413ey eyVar = this.f19586a;
        FragmentActivity activity = eyVar.getActivity();
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity);
        aVar.m9791b(2131624203);
        aVar.m9796a(activity.getResources().getString(2131624222), new DialogInterface$OnClickListenerC3452gj(eyVar, activity));
        aVar.m9787b(activity.getResources().getString(2131624114), new DialogInterface$OnClickListenerC3453gk());
        aVar.m9792b().show();
        FirebaseAnalytics.getInstance(this.f19586a.getContext()).m646a("show_icon_disable_try", new Bundle());
        return true;
    }
}
