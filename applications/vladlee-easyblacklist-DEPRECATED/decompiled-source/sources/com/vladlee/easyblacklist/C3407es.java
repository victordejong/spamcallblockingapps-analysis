package com.vladlee.easyblacklist;

import android.content.Context;
import androidx.preference.Preference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.es */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/es.class */
public final class C3407es implements Preference.AbstractC0991b {

    /* renamed from: a */
    final /* synthetic */ Context f19577a;

    /* renamed from: b */
    final /* synthetic */ String f19578b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3407es(Context context, String str) {
        this.f19577a = context;
        this.f19578b = str;
    }

    @Override // androidx.preference.Preference.AbstractC0991b
    /* renamed from: a */
    public final boolean mo53a(Object obj) {
        if (!this.f19577a.getPackageName().equals("com.vladlee.callsblacklist")) {
            return true;
        }
        Context context = this.f19577a;
        C3392ee.m74b(context, "pref_schedule_" + this.f19578b, ((Boolean) obj).booleanValue());
        AlarmReceiver.m373a(this.f19577a);
        EasyBlacklistActivity.m310i();
        return true;
    }
}
