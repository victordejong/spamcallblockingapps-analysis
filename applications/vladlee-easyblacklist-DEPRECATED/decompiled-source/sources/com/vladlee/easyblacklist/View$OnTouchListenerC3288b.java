package com.vladlee.easyblacklist;

import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
/* renamed from: com.vladlee.easyblacklist.b */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/b.class */
final class View$OnTouchListenerC3288b implements View.OnTouchListener {

    /* renamed from: a */
    final /* synthetic */ AddListActivity f19353a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnTouchListenerC3288b(AddListActivity addListActivity) {
        this.f19353a = addListActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ((InputMethodManager) this.f19353a.getSystemService("input_method")).hideSoftInputFromWindow(((EditText) this.f19353a.findViewById(2131296411)).getWindowToken(), 0);
        return false;
    }
}
