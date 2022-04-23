package com.hiya.stingray.p000ui.local.settings;

import android.content.DialogInterface;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.app.b;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$j.class */
final class CallSettingsFragment$j implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f88f;

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$j$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a.class */
    static final class DialogInterface$OnClickListenerC0042a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC0042a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialogInterface");
            CallSettingsFragment$j.this.f88f.q1().h();
            dialogInterface.dismiss();
            Toast.makeText(CallSettingsFragment$j.this.f88f.getContext(), CallSettingsFragment$j.this.f88f.getString(2131821556), 0).show();
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$j$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$j$b.class */
    static final class DialogInterface$OnClickListenerC0043b implements DialogInterface.OnClickListener {

        /* renamed from: f */
        public static final DialogInterface$OnClickListenerC0043b f90f = new DialogInterface$OnClickListenerC0043b();

        DialogInterface$OnClickListenerC0043b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialogInterface");
            dialogInterface.dismiss();
        }
    }

    CallSettingsFragment$j(CallSettingsFragment callSettingsFragment) {
        this.f88f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        b.a aVar = new b.a(this.f88f.requireContext());
        aVar.h(this.f88f.getString(2131820988));
        aVar.m(2131820755, new DialogInterface$OnClickListenerC0042a());
        aVar.i(2131820707, DialogInterface$OnClickListenerC0043b.f90f);
        aVar.s();
    }
}
