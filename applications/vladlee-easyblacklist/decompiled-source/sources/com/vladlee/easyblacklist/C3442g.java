package com.vladlee.easyblacklist;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.vladlee.easyblacklist.g */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/g.class */
final class C3442g implements TextWatcher {

    /* renamed from: a */
    final /* synthetic */ AddManuallyActivity f19618a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3442g(AddManuallyActivity addManuallyActivity) {
        this.f19618a = addManuallyActivity;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f19618a.findViewById(2131296344).setVisibility((charSequence == null || charSequence.length() <= 0) ? 8 : 0);
    }
}
