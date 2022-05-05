package com.vladlee.easyblacklist;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.vladlee.easyblacklist.i */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/i.class */
final class C3466i implements TextWatcher {

    /* renamed from: a */
    final /* synthetic */ AddTextFilterActivity f19648a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3466i(AddTextFilterActivity addTextFilterActivity) {
        this.f19648a = addTextFilterActivity;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f19648a.findViewById(2131296344).setVisibility((charSequence == null || charSequence.length() <= 0) ? 8 : 0);
    }
}
