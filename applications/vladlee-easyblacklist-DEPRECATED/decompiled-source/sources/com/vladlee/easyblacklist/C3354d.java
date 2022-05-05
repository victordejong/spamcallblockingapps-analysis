package com.vladlee.easyblacklist;

import android.widget.CheckBox;
import android.widget.CompoundButton;
/* renamed from: com.vladlee.easyblacklist.d */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/d.class */
final class C3354d implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    final /* synthetic */ AddManuallyActivity f19470a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3354d(AddManuallyActivity addManuallyActivity) {
        this.f19470a = addManuallyActivity;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            ((CheckBox) this.f19470a.findViewById(2131296368)).setChecked(!z);
        }
    }
}
