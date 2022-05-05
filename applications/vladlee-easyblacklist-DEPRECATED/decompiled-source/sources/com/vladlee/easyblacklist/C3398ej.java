package com.vladlee.easyblacklist;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import androidx.core.content.C0646b;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.AbstractC1027o;
import androidx.preference.SwitchPreferenceCompat;
/* renamed from: com.vladlee.easyblacklist.ej */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ej.class */
public final class C3398ej extends AbstractC1027o {
    @Override // androidx.preference.AbstractC1027o
    /* renamed from: b */
    public final void mo54b(String str) {
        m7386x();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        C3399ek.m64a(this);
    }

    @Override // androidx.preference.AbstractC1027o, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            int a = C3392ee.m83a(activity, "pref_schedule_enable_from");
            int a2 = C3392ee.m83a(activity, "pref_schedule_enable_to");
            mo7391a("pref_schedule_enable_from").mo7473a((CharSequence) C3399ek.m63a(this, a));
            mo7391a("pref_schedule_enable_to").mo7473a((CharSequence) C3399ek.m63a(this, a2));
            ((SwitchPreferenceCompat) mo7391a("pref_schedule_by_day_of_week")).m7412f(C3392ee.m80a((Context) activity, "pref_schedule_by_day_of_week", false));
        }
    }

    @Override // androidx.preference.AbstractC1027o, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        view.setBackgroundColor(C0646b.m8612c(getContext(), 2131099796));
        m7392a(new ColorDrawable(0));
        m7389c(0);
    }
}
