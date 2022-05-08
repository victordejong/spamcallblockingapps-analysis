package com.android.contacts.interactions;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.android.contacts.ContactSaveService;
/* loaded from: classes-dex2jar.jar:com/android/contacts/interactions/f.class */
public final class f extends DialogFragment {
    public static void a(FragmentManager fragmentManager, long j, String str, boolean z) {
        f fVar = new f();
        Bundle bundle = new Bundle();
        bundle.putLong("groupId", j);
        bundle.putString("label", str);
        bundle.putBoolean("endActivity", z);
        fVar.setArguments(bundle);
        fVar.show(fragmentManager, "deleteGroup");
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        return new AlertDialog.Builder(getActivity()).setTitle(2131755770).setMessage(getActivity().getString(2131755523, new Object[]{getArguments().getString("label")})).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.interactions.f.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                f fVar = f.this;
                fVar.getActivity().startService(ContactSaveService.a(fVar.getActivity(), fVar.getArguments().getLong("groupId")));
                if (fVar.getArguments().getBoolean("endActivity")) {
                    fVar.getActivity().finish();
                }
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
    }
}
