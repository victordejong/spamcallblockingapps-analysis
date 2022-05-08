package com.vladlee.easyblacklist;

import android.app.TimePickerDialog;
import android.content.Context;
import android.text.format.DateFormat;
import androidx.preference.AbstractC1027o;
import androidx.preference.Preference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.eq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eq.class */
public final class C3405eq implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ Context f19574a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1027o f19575b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3405eq(Context context, AbstractC1027o oVar) {
        this.f19574a = context;
        this.f19575b = oVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        int a = C3392ee.m83a(this.f19574a, "pref_schedule_enable_to");
        new TimePickerDialog(this.f19574a, new C3406er(this), a / 60, a % 60, DateFormat.is24HourFormat(this.f19574a)).show();
        return true;
    }
}
