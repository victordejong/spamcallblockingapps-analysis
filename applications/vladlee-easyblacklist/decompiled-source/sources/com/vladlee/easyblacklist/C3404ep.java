package com.vladlee.easyblacklist;

import android.app.TimePickerDialog;
import android.widget.TimePicker;
/* renamed from: com.vladlee.easyblacklist.ep */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ep.class */
final class C3404ep implements TimePickerDialog.OnTimeSetListener {

    /* renamed from: a */
    final /* synthetic */ C3403eo f19573a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3404ep(C3403eo eoVar) {
        this.f19573a = eoVar;
    }

    @Override // android.app.TimePickerDialog.OnTimeSetListener
    public final void onTimeSet(TimePicker timePicker, int i, int i2) {
        C3399ek.m62a(this.f19573a.f19572b, i, i2);
        AlarmReceiver.m373a(this.f19573a.f19571a);
        EasyBlacklistActivity.m310i();
    }
}
