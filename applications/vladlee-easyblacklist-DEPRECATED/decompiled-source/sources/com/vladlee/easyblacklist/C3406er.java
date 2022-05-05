package com.vladlee.easyblacklist;

import android.app.TimePickerDialog;
import android.widget.TimePicker;
/* renamed from: com.vladlee.easyblacklist.er */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/er.class */
final class C3406er implements TimePickerDialog.OnTimeSetListener {

    /* renamed from: a */
    final /* synthetic */ C3405eq f19576a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3406er(C3405eq eqVar) {
        this.f19576a = eqVar;
    }

    @Override // android.app.TimePickerDialog.OnTimeSetListener
    public final void onTimeSet(TimePicker timePicker, int i, int i2) {
        C3399ek.m59b(this.f19576a.f19575b, i, i2);
        AlarmReceiver.m373a(this.f19576a.f19574a);
        EasyBlacklistActivity.m310i();
    }
}
