package com.vladlee.easyblacklist;

import android.widget.CheckBox;
import android.widget.CompoundButton;
/* renamed from: com.vladlee.easyblacklist.e */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/e.class */
final class C3382e implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ AddManuallyActivity f19531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3382e(AddManuallyActivity addManuallyActivity) {
        this.f19531a = addManuallyActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            ((CheckBox) this.f19531a.findViewById(2131296367)).setChecked(!z);
        }
    }
}
