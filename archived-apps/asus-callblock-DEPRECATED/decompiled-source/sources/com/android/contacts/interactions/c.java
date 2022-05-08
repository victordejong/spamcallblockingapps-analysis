package com.android.contacts.interactions;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/c.class */
public class c extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1456a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final String f1457b = ":settings:fragment_args_key";
    private final String c = ":settings:fragment_args_key_highlight_times";
    private final String d = "permission_settings";
    private final int e = 3;

    public static void a(FragmentManager fragmentManager, String str) {
        try {
            c cVar = new c();
            Bundle bundle = new Bundle();
            bundle.putString("DIALOG_CONTENT", str);
            cVar.setArguments(bundle);
            cVar.show(fragmentManager, f1456a);
        } catch (Exception e) {
            Log.i(f1456a, e.toString());
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        String string = getArguments().getString("DIALOG_CONTENT");
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(2131755944);
        builder.setMessage(Html.fromHtml(string));
        builder.setPositiveButton(2131755941, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + c.this.getActivity().getPackageName()));
                intent.putExtra(":settings:fragment_args_key", "permission_settings");
                intent.putExtra(":settings:fragment_args_key_highlight_times", 3);
                c.this.startActivity(intent);
                c.this.getActivity().finish();
            }
        });
        builder.setNegativeButton(2131755345, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.c.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                c.this.getActivity().finish();
            }
        });
        setCancelable(false);
        return builder.show();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (getActivity() != null) {
            getActivity().finish();
        }
    }
}
