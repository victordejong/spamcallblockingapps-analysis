package com.scand.realmbrowser;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ProgressDialogFragment.class */
public class ProgressDialogFragment extends DialogFragment {

    /* renamed from: f */
    static final String f12523f = ProgressDialogFragment.class.getCanonicalName();

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        ProgressDialog progressDialog = new ProgressDialog(getContext(), C1506R.style.realm_browser_ProgressDialogStyle);
        progressDialog.setIndeterminate(true);
        progressDialog.setProgressStyle(16973854);
        progressDialog.setCanceledOnTouchOutside(false);
        return progressDialog;
    }
}
