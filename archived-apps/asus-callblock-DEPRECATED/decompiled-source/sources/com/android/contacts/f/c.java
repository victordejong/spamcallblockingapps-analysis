package com.android.contacts.f;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Switch;
import com.asus.a.a;
import com.asus.a.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/f/c.class */
public class c extends DialogFragment implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: b  reason: collision with root package name */
    public a f1285b = null;
    boolean c = false;
    AlertDialog e;
    private String g;
    private static final String f = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    static boolean f1284a = false;
    static int d = 0;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/f/c$a.class */
    public interface a {
        void a_(boolean z);
    }

    public static c a(boolean z, int i) {
        f1284a = z;
        d = i;
        return new c();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (d) {
            case 1:
                if (!z) {
                    this.e.getButton(-1).setText(17039360);
                    return;
                } else {
                    this.e.getButton(-1).setText(17039370);
                    return;
                }
            default:
                return;
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog alertDialog = null;
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        LayoutInflater layoutInflater = getActivity().getLayoutInflater();
        this.g = getTag();
        switch (d) {
            case 1:
                View inflate = layoutInflater.inflate(2131427440, (ViewGroup) null);
                final CheckBox checkBox = (CheckBox) inflate.findViewById(2131296531);
                checkBox.setOnCheckedChangeListener(this);
                if (!f1284a) {
                    builder.setMessage(2131755336).setTitle(2131755337).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.c.3
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (c.this.f1285b != null) {
                                a aVar = c.this.f1285b;
                                String unused = c.this.g;
                                aVar.a_(true);
                            }
                        }
                    }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.c.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (c.this.f1285b != null) {
                                a aVar = c.this.f1285b;
                                String unused = c.this.g;
                                aVar.a_(false);
                            }
                            c.this.dismiss();
                        }
                    });
                    break;
                } else {
                    builder.setMessage(2131755334).setTitle(2131755335).setView(inflate).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.c.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (c.this.f1285b != null) {
                                a aVar = c.this.f1285b;
                                boolean isChecked = checkBox.isChecked();
                                String unused = c.this.g;
                                aVar.a_(isChecked);
                            }
                            c.this.c = checkBox.isChecked();
                        }
                    });
                    break;
                }
            case 2:
                View inflate2 = layoutInflater.inflate(2131427442, (ViewGroup) null);
                final Switch r0 = (Switch) inflate2.findViewById(2131297363);
                builder.setTitle(2131755314).setView(inflate2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.c.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        Log.d(c.f, "onClick");
                        if (r0.isChecked()) {
                            com.asus.a.c.k(c.this.getActivity(), true);
                            if (com.asus.a.c.r(c.this.getActivity())) {
                                com.asus.a.c.e(c.this.getActivity());
                                com.asus.a.c.f(c.this.getActivity());
                            }
                            if (!com.asus.a.a.h(c.this.getActivity())) {
                                com.asus.a.c.a((Context) c.this.getActivity(), false);
                            }
                            com.asus.a.c.a(new c.b() { // from class: com.android.contacts.f.c.4.1
                                @Override // com.asus.a.c.b
                                public final void a(Context context) {
                                    if (com.asus.a.a.h(context)) {
                                        com.asus.a.c.a(context);
                                    }
                                }
                            });
                            return;
                        }
                        com.asus.a.c.k(c.this.getActivity(), false);
                        com.asus.a.c.a((Context) c.this.getActivity(), false, false);
                        c.this.getActivity().getContentResolver().call(a.AbstractC0061a.f2352a, "delete_engine_info", (String) null, (Bundle) null);
                        com.asus.a.c.b(c.this.getActivity(), false, false);
                    }
                });
                break;
            case 3:
                builder.setMessage(2131756485).setTitle(2131756486).setPositiveButton(2131756487, new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.c.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        com.asus.a.a.f(c.this.getActivity());
                        if (c.this.f1285b != null) {
                            a aVar = c.this.f1285b;
                            String unused = c.this.g;
                            aVar.a_(true);
                        }
                        c.this.dismiss();
                    }
                }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.contacts.f.c.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        if (c.this.f1285b != null) {
                            a aVar = c.this.f1285b;
                            String unused = c.this.g;
                            aVar.a_(true);
                        }
                        c.this.dismiss();
                    }
                });
                break;
            default:
                return alertDialog;
        }
        this.e = builder.create();
        alertDialog = this.e;
        return alertDialog;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        Log.d(f, "onDismiss mIsSwitchOn:" + f1284a + ", !mIsAccept:" + (!this.c));
        switch (d) {
            case 1:
                if (f1284a && !this.c && this.f1285b != null) {
                    this.f1285b.a_(false);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
