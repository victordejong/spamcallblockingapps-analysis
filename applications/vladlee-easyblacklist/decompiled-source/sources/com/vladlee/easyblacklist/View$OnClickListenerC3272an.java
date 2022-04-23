package com.vladlee.easyblacklist;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.vladlee.easyblacklist.an */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/an.class */
final class View$OnClickListenerC3272an implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19313a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3272an(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19313a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        FragmentActivity activity = this.f19313a.getActivity();
        activity.findViewById(2131296623).setVisibility(8);
        activity.findViewById(2131296624).setVisibility(0);
        FirebaseAnalytics.getInstance(this.f19313a.getActivity()).m646a("blacklistFragment_expandButton", new Bundle());
    }
}
