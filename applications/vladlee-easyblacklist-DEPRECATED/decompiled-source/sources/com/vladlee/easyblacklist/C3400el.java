package com.vladlee.easyblacklist;

import android.content.Context;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.preference.AbstractC1027o;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.el */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/el.class */
public final class C3400el implements Preference.AbstractC0992c {

    /* renamed from: a */
    final /* synthetic */ Context f19567a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1027o f19568b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3400el(Context context, AbstractC1027o oVar) {
        this.f19567a = context;
        this.f19568b = oVar;
    }

    @Override // androidx.preference.Preference.AbstractC0992c
    /* renamed from: a */
    public final boolean mo52a(Preference preference) {
        C3392ee.m74b(this.f19567a, "pref_schedule_by_day_of_week", false);
        ((SwitchPreferenceCompat) preference).m7412f(false);
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19567a);
        aVar.m9791b(2131624130);
        aVar.m9796a(this.f19568b.getResources().getString(2131624052), new DialogInterface$OnClickListenerC3401em(this));
        aVar.m9787b(this.f19568b.getResources().getString(2131624009), new DialogInterface$OnClickListenerC3402en(this));
        aVar.m9792b().show();
        return true;
    }
}
