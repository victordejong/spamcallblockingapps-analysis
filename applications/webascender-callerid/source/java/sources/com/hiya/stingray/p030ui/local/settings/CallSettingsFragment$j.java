package com.hiya.stingray.p030ui.local.settings;

import android.content.DialogInterface;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.app.b$a;
import kotlin.w.c.k;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$j */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$j.class */
public final class CallSettingsFragment$j implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f4767f;

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$j$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$j$a.class */
    static final class DialogInterface$OnClickListenerC1704a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC1704a() {
            CallSettingsFragment$j.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialogInterface");
            CallSettingsFragment$j.this.f4767f.q1().h();
            dialogInterface.dismiss();
            Toast.makeText(CallSettingsFragment$j.this.f4767f.getContext(), CallSettingsFragment$j.this.f4767f.getString(2131821556), 0).show();
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$j$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$j$b.class */
    static final class DialogInterface$OnClickListenerC1705b implements DialogInterface.OnClickListener {

        /* renamed from: f */
        public static final DialogInterface$OnClickListenerC1705b f4769f = new DialogInterface$OnClickListenerC1705b();

        DialogInterface$OnClickListenerC1705b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            k.g(dialogInterface, "dialogInterface");
            dialogInterface.dismiss();
        }
    }

    CallSettingsFragment$j(CallSettingsFragment callSettingsFragment) {
        this.f4767f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        b$a b_a = new b$a(this.f4767f.requireContext());
        b_a.m6883h(this.f4767f.getString(2131820988));
        b_a.m6878m(2131820755, new DialogInterface$OnClickListenerC1704a());
        b_a.m6882i(2131820707, DialogInterface$OnClickListenerC1705b.f4769f);
        b_a.m6872s();
    }
}
