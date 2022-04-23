package com.vladlee.easyblacklist;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ListView;
/* renamed from: com.vladlee.easyblacklist.a */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/a.class */
final class C3258a implements TextWatcher {

    /* renamed from: a */
    final /* synthetic */ ListView f19290a;

    /* renamed from: b */
    final /* synthetic */ AddListActivity f19291b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3258a(AddListActivity addListActivity, ListView listView) {
        this.f19291b = addListActivity;
        this.f19290a = listView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ((C3384eb) this.f19290a.getAdapter()).getFilter().filter(charSequence);
    }
}
