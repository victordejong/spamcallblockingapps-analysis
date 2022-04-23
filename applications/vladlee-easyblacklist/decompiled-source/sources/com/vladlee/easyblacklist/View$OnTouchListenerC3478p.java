package com.vladlee.easyblacklist;

import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.vladlee.easyblacklist.p */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/p.class */
final class View$OnTouchListenerC3478p implements View.OnTouchListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC3472l f19678a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnTouchListenerC3478p(SharedPreferences$OnSharedPreferenceChangeListenerC3472l lVar) {
        this.f19678a = lVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = this.f19678a.getActivity().findViewById(2131296624);
        if (findViewById.getVisibility() == 8) {
            return false;
        }
        findViewById.findViewById(2131296624).setVisibility(8);
        this.f19678a.getActivity().findViewById(2131296623).setVisibility(0);
        return false;
    }
}
