package com.vladlee.easyblacklist;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.vladlee.easyblacklist.gf */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gf.class */
final class C3448gf implements TextWatcher {

    /* renamed from: a */
    final /* synthetic */ C3388ec f19627a;

    /* renamed from: b */
    final /* synthetic */ SmsNewMessageActivity f19628b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3448gf(SmsNewMessageActivity smsNewMessageActivity, C3388ec ecVar) {
        this.f19628b = smsNewMessageActivity;
        this.f19627a = ecVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f19627a.getFilter().filter(charSequence);
    }
}
