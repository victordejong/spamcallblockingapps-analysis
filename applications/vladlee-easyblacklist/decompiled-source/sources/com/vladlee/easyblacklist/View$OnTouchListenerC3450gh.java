package com.vladlee.easyblacklist;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
/* renamed from: com.vladlee.easyblacklist.gh */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gh.class */
final class View$OnTouchListenerC3450gh implements View.OnTouchListener {

    /* renamed from: a */
    final /* synthetic */ SmsNewMessageActivity f19631a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnTouchListenerC3450gh(SmsNewMessageActivity smsNewMessageActivity) {
        this.f19631a = smsNewMessageActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ((InputMethodManager) this.f19631a.getSystemService("input_method")).hideSoftInputFromWindow(((EditText) this.f19631a.findViewById(2131296415)).getWindowToken(), 0);
        return false;
    }
}
