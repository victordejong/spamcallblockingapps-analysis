package com.vladlee.easyblacklist;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.DialogInterfaceC0308m;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.vladlee.easyblacklist.cr */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cr.class */
public final class View$OnClickListenerC3345cr implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ TabLayout f19455a;

    /* renamed from: b */
    final /* synthetic */ EasyBlacklistActivity f19456b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC3345cr(EasyBlacklistActivity easyBlacklistActivity, TabLayout tabLayout) {
        this.f19456b = easyBlacklistActivity;
        this.f19455a = tabLayout;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C3454gl glVar;
        int b = this.f19455a.m891b();
        int i = b;
        glVar = this.f19456b.f19254p;
        if (glVar.mo39c() < 4) {
            i = b + 1;
        }
        if (i == 0) {
            this.f19456b.startActivity(new Intent(this.f19456b, SmsNewMessageActivity.class));
        } else if (i == 1) {
            C3324bz.m158a(this.f19456b, 1);
            FirebaseAnalytics.getInstance(this.f19456b).m646a("blacklistFragment_addButton", new Bundle());
        } else if (i == 2) {
            DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(this.f19456b);
            aVar.m9797a(this.f19456b.getString(2131624043));
            aVar.m9788b(this.f19456b.getString(2131624034));
            aVar.m9803a(new DialogInterface$OnClickListenerC3346cs(this));
            aVar.m9790b(new DialogInterface$OnClickListenerC3347ct(this));
            aVar.m9792b().show();
        }
    }
}
