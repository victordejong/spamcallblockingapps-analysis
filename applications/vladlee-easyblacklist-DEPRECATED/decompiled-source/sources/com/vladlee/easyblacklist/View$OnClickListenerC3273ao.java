package com.vladlee.easyblacklist;

import android.view.View;
/* renamed from: com.vladlee.easyblacklist.ao */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ao.class */
final class View$OnClickListenerC3273ao implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19314a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3273ao(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19314a = lVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f19314a.getActivity().findViewById(2131296623).setVisibility(0);
        this.f19314a.getActivity().findViewById(2131296624).setVisibility(8);
    }
}
