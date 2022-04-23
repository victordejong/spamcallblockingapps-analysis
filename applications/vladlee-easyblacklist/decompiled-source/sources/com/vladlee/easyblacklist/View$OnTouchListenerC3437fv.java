package com.vladlee.easyblacklist;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
/* renamed from: com.vladlee.easyblacklist.fv */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fv.class */
final class View$OnTouchListenerC3437fv implements View.OnTouchListener {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19609a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnTouchListenerC3437fv(SmsChatActivity smsChatActivity) {
        this.f19609a = smsChatActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        long j;
        ((InputMethodManager) this.f19609a.getSystemService("input_method")).hideSoftInputFromWindow(((EditText) this.f19609a.findViewById(2131296409)).getWindowToken(), 0);
        if (motionEvent.getActionMasked() != 1) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        j = this.f19609a.f19279s;
        if (currentTimeMillis - j >= 1000) {
            return false;
        }
        this.f19609a.f19279s = 0L;
        return true;
    }
}
