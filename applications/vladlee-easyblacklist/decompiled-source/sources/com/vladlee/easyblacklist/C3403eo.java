package com.vladlee.easyblacklist;

import android.app.TimePickerDialog;
import android.content.Context;
import android.text.format.DateFormat;
import androidx.preference.AbstractC1027o;
import androidx.preference.Preference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.eo */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/eo.class */
public final class C3403eo implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ Context f19571a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1027o f19572b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3403eo(Context context, AbstractC1027o oVar) {
        this.f19571a = context;
        this.f19572b = oVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        int a = C3392ee.m83a(this.f19571a, "pref_schedule_enable_from");
        new TimePickerDialog(this.f19571a, new C3404ep(this), a / 60, a % 60, DateFormat.is24HourFormat(this.f19571a)).show();
        return true;
    }
}
