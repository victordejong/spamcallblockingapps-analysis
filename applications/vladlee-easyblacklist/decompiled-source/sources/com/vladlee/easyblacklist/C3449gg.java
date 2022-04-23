package com.vladlee.easyblacklist;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
/* renamed from: com.vladlee.easyblacklist.gg */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gg.class */
final class C3449gg implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ EditText f19629a;

    /* renamed from: b */
    final /* synthetic */ SmsNewMessageActivity f19630b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3449gg(SmsNewMessageActivity smsNewMessageActivity, EditText editText) {
        this.f19630b = smsNewMessageActivity;
        this.f19629a = editText;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        SmsNewMessageActivity.m274a(this.f19629a.getText().toString());
        return true;
    }
}
