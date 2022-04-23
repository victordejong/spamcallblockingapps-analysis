package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.preference.AbstractC1027o;
import androidx.preference.SwitchPreferenceCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.vladlee.easyblacklist.gj */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gj.class */
final class DialogInterface$OnClickListenerC3452gj implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC1027o f19632a;

    /* renamed from: b */
    final /* synthetic */ Context f19633b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC3452gj(AbstractC1027o oVar, Context context) {
        this.f19632a = oVar;
        this.f19633b = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ((SwitchPreferenceCompat) this.f19632a.mo7391a((CharSequence) "pref_show_status_bar_icon")).m7412f(false);
        BlockService.m367a(this.f19633b);
        FirebaseAnalytics.getInstance(this.f19633b).m646a("show_icon_disable_yes", new Bundle());
    }
}
