package com.vladlee.easyblacklist;

import android.widget.CompoundButton;
import android.widget.EditText;
/* renamed from: com.vladlee.easyblacklist.f */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/f.class */
final class C3415f implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ AddManuallyActivity f19585a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3415f(AddManuallyActivity addManuallyActivity) {
        this.f19585a = addManuallyActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        ((EditText) this.f19585a.findViewById(2131296412)).setInputType(z ? 524288 : 3);
        this.f19585a.m377i();
    }
}
