package com.android.contacts.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/DialogManager.class */
public class DialogManager {
    private static final String DIALOG_ID_KEY = "dialog_id";
    private static final String TAG = "DialogManager";
    public static final String VIEW_ID_KEY = "view_id";
    private int dateDialogId;
    private final Activity mActivity;
    private boolean mUseDialogId2 = false;
    private BroadcastReceiver mPowerKeyReceiver = null;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/DialogManager$DialogShowingView.class */
    public interface DialogShowingView {
        Dialog createDialog(Bundle bundle);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/DialogManager$DialogShowingViewActivity.class */
    public interface DialogShowingViewActivity {
        DialogManager getDialogManager();
    }

    public DialogManager(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("activity must not be null");
        }
        this.mActivity = activity;
    }

    public static final boolean isManagedId(int i) {
        return i == 2131296714 || i == 2131296715;
    }

    private void registBroadcastReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        this.mPowerKeyReceiver = new BroadcastReceiver() { // from class: com.android.contacts.util.DialogManager.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String stringExtra;
                String action = intent.getAction();
                if (action.equals("android.intent.action.SCREEN_OFF")) {
                    DialogManager.this.mActivity.removeDialog(DialogManager.this.dateDialogId);
                    Log.d(DialogManager.TAG, "DialogManager ACTION_SCREEN_OFF");
                }
                if (action.equals("android.intent.action.CLOSE_SYSTEM_DIALOGS") && (stringExtra = intent.getStringExtra("reason")) != null && stringExtra.equals("homekey")) {
                    DialogManager.this.mActivity.removeDialog(DialogManager.this.dateDialogId);
                    Log.d(DialogManager.TAG, "DialogManager SYSTEM_DIALOG_REASON_HOME_KEY");
                }
            }
        };
        this.mActivity.getApplicationContext().registerReceiver(this.mPowerKeyReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterBroadcastReceiver() {
        int i = Build.VERSION.SDK_INT;
        if (this.mActivity != null && this.mPowerKeyReceiver != null) {
            if (i >= 7) {
                try {
                    this.mActivity.getApplicationContext().unregisterReceiver(this.mPowerKeyReceiver);
                } catch (IllegalArgumentException e) {
                    Log.d(TAG, "DialogManager - IllegalArgumentException:" + e.getMessage());
                    this.mPowerKeyReceiver = null;
                }
            } else {
                this.mActivity.getApplicationContext().unregisterReceiver(this.mPowerKeyReceiver);
                this.mPowerKeyReceiver = null;
            }
        }
    }

    public Dialog onCreateDialog(final int i, final Bundle bundle) {
        Dialog dialog;
        if (i == 2131296714) {
            this.mUseDialogId2 = true;
        } else if (i == 2131296715) {
            this.mUseDialogId2 = false;
        } else {
            dialog = null;
            return dialog;
        }
        if (!bundle.containsKey(VIEW_ID_KEY)) {
            throw new IllegalArgumentException("Bundle does not contain a ViewId");
        }
        View findViewById = this.mActivity.findViewById(bundle.getInt(VIEW_ID_KEY));
        if (findViewById == null || !(findViewById instanceof DialogShowingView)) {
            dialog = null;
        } else {
            Dialog createDialog = ((DialogShowingView) findViewById).createDialog(bundle);
            dialog = createDialog;
            if (createDialog != null) {
                if (bundle.getInt(DIALOG_ID_KEY) == 2131296708) {
                    Log.d(TAG, "DialogManager registBroadcastReceiver");
                    this.dateDialogId = i;
                    registBroadcastReceiver();
                }
                createDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.android.contacts.util.DialogManager.1
                    @Override // android.content.DialogInterface.OnDismissListener
                    public void onDismiss(DialogInterface dialogInterface) {
                        DialogManager.this.mActivity.removeDialog(i);
                        if (bundle.getInt(DialogManager.DIALOG_ID_KEY) == 2131296708) {
                            Log.d(DialogManager.TAG, "DialogManager dismiss-unregisterBroadcastReceiver");
                            DialogManager.this.unregisterBroadcastReceiver();
                        }
                    }
                });
                dialog = createDialog;
            }
        }
        return dialog;
    }

    public void showDialogInView(View view, Bundle bundle) {
        int id = view.getId();
        if (bundle.containsKey(VIEW_ID_KEY)) {
            throw new IllegalArgumentException("Bundle already contains a view_id");
        } else if (id == -1) {
            throw new IllegalArgumentException("View does not have a proper ViewId");
        } else {
            bundle.putInt(VIEW_ID_KEY, id);
            this.mActivity.showDialog(this.mUseDialogId2 ? 2131296715 : 2131296714, bundle);
        }
    }
}
