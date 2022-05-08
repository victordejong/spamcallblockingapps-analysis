package com.android.contacts;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/w.class */
public final class w extends DialogFragment implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f2178a = false;

    /* renamed from: b  reason: collision with root package name */
    private static String f2179b = null;
    private boolean c = false;

    public static w a() {
        return new w();
    }

    public static boolean b() {
        return f2178a;
    }

    public static String c() {
        return f2179b;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.c = z;
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        String tag = getTag();
        char c = 65535;
        switch (tag.hashCode()) {
            case -1267364011:
                if (tag.equals("callguard_disable_notifier")) {
                    c = 1;
                    break;
                }
                break;
            case 317207377:
                if (tag.equals("default_dialer_checker")) {
                    c = 0;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                builder.setTitle(2131755914).setMessage(2131755913).setPositiveButton(2131755915, new DialogInterface.OnClickListener() { // from class: com.android.contacts.w.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        ImplicitIntentsUtil.startActivityOutsideApp(w.this.getActivity(), new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"));
                        w.this.dismiss();
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.contacts.w.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        w.this.dismiss();
                    }
                });
                break;
            case 1:
                View inflate = getActivity().getLayoutInflater().inflate(2131427609, (ViewGroup) null);
                ((CheckBox) inflate.findViewById(2131297124)).setOnCheckedChangeListener(this);
                builder.setTitle(2131755327).setMessage(2131755326).setView(inflate).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.w.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        if (w.this.getActivity() != null) {
                            PreferenceManager.getDefaultSharedPreferences(w.this.getActivity()).edit().putBoolean("do_not_ask", w.this.c).apply();
                        }
                        w.this.dismiss();
                    }
                });
                break;
        }
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        f2178a = false;
        f2179b = null;
    }

    @Override // android.app.DialogFragment
    public final int show(FragmentTransaction fragmentTransaction, String str) {
        f2178a = true;
        f2179b = str;
        return super.show(fragmentTransaction, str);
    }

    @Override // android.app.DialogFragment
    public final void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        f2178a = true;
        f2179b = str;
    }
}
