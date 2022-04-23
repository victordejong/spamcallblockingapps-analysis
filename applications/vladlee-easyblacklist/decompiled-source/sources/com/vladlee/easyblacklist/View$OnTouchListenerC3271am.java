package com.vladlee.easyblacklist;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.vladlee.easyblacklist.am */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/am.class */
final class View$OnTouchListenerC3271am implements View.OnTouchListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19312a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnTouchListenerC3271am(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19312a = lVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = this.f19312a.getActivity().findViewById(2131296624);
        if (findViewById.getVisibility() == 8) {
            return false;
        }
        findViewById.findViewById(2131296624).setVisibility(8);
        this.f19312a.getActivity().findViewById(2131296623).setVisibility(0);
        return false;
    }
}
