package com.vladlee.easyblacklist;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
/* renamed from: com.vladlee.easyblacklist.ew */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ew.class */
final class View$OnClickListenerC3411ew implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ SettingsActivity f19582a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3411ew(SettingsActivity settingsActivity) {
        this.f19582a = settingsActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C3365dk dkVar;
        FirebaseAnalytics.getInstance(this.f19582a).m646a("button_remove_ads", new Bundle());
        dkVar = this.f19582a.f19270k;
        dkVar.m142a((AppCompatActivity) this.f19582a);
    }
}
