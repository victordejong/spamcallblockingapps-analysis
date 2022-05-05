package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.AbstractC1027o;
/* renamed from: com.vladlee.easyblacklist.eh */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eh.class */
public final class C3396eh extends AbstractC1027o {
    @Override // androidx.preference.AbstractC1027o
    /* renamed from: b */
    public final void mo54b(String str) {
        m7386x();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setHasOptionsMenu(true);
        if (!getActivity().isFinishing()) {
            C3398ej ejVar = new C3398ej();
            getActivity().m7852f().mo7727a().m7833a(2131296430, ejVar).mo7822c();
            SwitchCompat switchCompat = (SwitchCompat) getActivity().findViewById(2131296574);
            if (switchCompat != null) {
                switchCompat.setChecked(C3392ee.m80a((Context) getActivity(), "pref_schedule_enable", false));
                switchCompat.setOnCheckedChangeListener(new C3397ei(this, ejVar));
            }
        }
    }

    @Override // androidx.preference.AbstractC1027o, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.preference.AbstractC1027o, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        return layoutInflater.inflate(2131492972, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        FragmentActivity activity = getActivity();
        ((SwitchCompat) activity.findViewById(2131296574)).setChecked(C3392ee.m80a((Context) activity, "pref_schedule_enable", false));
    }
}
