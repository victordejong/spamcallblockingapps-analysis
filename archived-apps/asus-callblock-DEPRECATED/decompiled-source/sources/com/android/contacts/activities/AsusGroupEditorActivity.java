package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ContentUris;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.widget.Toast;
import com.android.contacts.a.b;
import com.android.contacts.group.GroupEditorFragment;
import com.android.contacts.p;
import com.android.contacts.util.DialogManager;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/AsusGroupEditorActivity.class */
public class AsusGroupEditorActivity extends p implements DialogManager.DialogShowingViewActivity {
    public static final String ACTION_ADD_MEMBER_COMPLETED = "addMemberCompleted";
    public static final String ACTION_REMOVE_MEMBER_COMPLETED = "removeMemberCompleted";
    public static final String ACTION_SAVE_COMPLETED = "saveCompleted";
    public static final String EXTRA_TARGET_CONTACT_ID = "com.android.contacts.action.CONTACT_ID";
    public static final String JOIN_CONTACT = "com.android.contacts.action.ASUS_GROUP_EDIT";
    private static final String KEY_ON_SAVING = "onSaving";
    private static final String KEY_TARGET_CONTACT_ID = "targetContactId";
    private static final String TAG = "AsusGroupEditorActivity";
    private String mCallerFragment;
    private GroupEditorFragment mFragment;
    private ProgressDialog mProgressDialog;
    private long mTargetContactId;
    private DialogManager mDialogManager = new DialogManager(this);
    private boolean mIsRemoveFrequent = false;
    private boolean mIsSaving = false;
    private final GroupEditorFragment.b mFragmentListener = new GroupEditorFragment.b() { // from class: com.android.contacts.activities.AsusGroupEditorActivity.1
        @Override // com.android.contacts.group.GroupEditorFragment.b
        public void onAccountsNotFound() {
            AsusGroupEditorActivity.this.finish();
        }

        @Override // com.android.contacts.group.GroupEditorFragment.b
        public void onGroupNotFound() {
            AsusGroupEditorActivity.this.finish();
        }

        @Override // com.android.contacts.group.GroupEditorFragment.b
        public void onReverted() {
            AsusGroupEditorActivity.this.finish();
        }

        @Override // com.android.contacts.group.GroupEditorFragment.b
        public void onSaveFinished(int i, Intent intent) {
            if (!AsusGroupEditorActivity.this.getIntent().getBooleanExtra("direct_close", false)) {
                if (PhoneCapabilityTester.isUsingTwoPanes(AsusGroupEditorActivity.this)) {
                    AsusGroupEditorActivity.this.setResult(i, intent);
                } else if (intent != null && AsusGroupEditorActivity.this.mCallerFragment == null) {
                    Intent intent2 = new Intent(AsusGroupEditorActivity.this, GroupDetailActivity.class);
                    intent2.setData(intent.getData());
                    intent2.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
                    ImplicitIntentsUtil.startActivityInApp(AsusGroupEditorActivity.this, intent2);
                }
            }
            AsusGroupEditorActivity.this.finish();
        }
    };

    public void closeProgressDialog() {
        if (this.mProgressDialog != null) {
            this.mProgressDialog.cancel();
            this.mProgressDialog.dismiss();
        }
    }

    @Override // com.android.contacts.util.DialogManager.DialogShowingViewActivity
    public DialogManager getDialogManager() {
        return this.mDialogManager;
    }

    public boolean isRemoveFrequentMember() {
        return this.mIsRemoveFrequent;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mFragment != null && !this.mFragment.a()) {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            Intent intent = getIntent();
            this.mTargetContactId = intent.getLongExtra(EXTRA_TARGET_CONTACT_ID, -1L);
            String action = getIntent().getAction();
            this.mCallerFragment = intent.getStringExtra("CallerFragment");
            if ("saveCompleted".equals(action)) {
                closeProgressDialog();
                setIsSaving(false);
                finish();
                return;
            }
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            setContentView(2131427380);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayOptions(12, 12);
                actionBar.setTitle(2131755771);
                actionBar.setDisplayShowHomeEnabled(false);
                if (getIntent().getExtras() != null) {
                    String string = getIntent().getExtras().getString("activity_title");
                    if (string != null) {
                        actionBar.setTitle(string);
                        if (string.equals(getResources().getString(2131756064))) {
                            this.mIsRemoveFrequent = true;
                        }
                    }
                } else if (!PhoneCapabilityTester.IsAsusDevice() && "android.intent.action.INSERT".equals(action)) {
                    actionBar.setTitle(2131755833);
                }
            }
            this.mFragment = (GroupEditorFragment) getFragmentManager().findFragmentById(2131296897);
            this.mFragment.f = this.mFragmentListener;
            this.mFragment.h = getContentResolver();
            if (bundle == null) {
                Uri data = "android.intent.action.EDIT".equals(action) ? getIntent().getData() : null;
                GroupEditorFragment groupEditorFragment = this.mFragment;
                Bundle extras = getIntent().getExtras();
                groupEditorFragment.f1346b = action;
                groupEditorFragment.d = data;
                groupEditorFragment.e = data != null ? ContentUris.parseId(groupEditorFragment.d) : 0L;
                groupEditorFragment.c = extras;
            }
            this.mProgressDialog = new ProgressDialog(this);
            this.mProgressDialog.setCancelable(false);
            this.mProgressDialog.setMessage(getString(2131755350));
            if (PhoneCapabilityTester.IsSystemApp()) {
                b.a();
                b.a(18, (Activity) this, "Edit group", true);
                return;
            }
            b.a();
            b.a(10, (Activity) this, "Edit group", true);
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i, Bundle bundle) {
        Dialog dialog;
        if (DialogManager.isManagedId(i)) {
            dialog = this.mDialogManager.onCreateDialog(i, bundle);
        } else {
            Log.w(TAG, "Unknown dialog requested, id: " + i + ", args: " + bundle);
            dialog = null;
        }
        return dialog;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        closeProgressDialog();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.mFragment == null || !"saveCompleted".equals(intent.getAction())) {
            return;
        }
        if (intent.getIntExtra("duplicate_group_name", 0) == -2) {
            closeProgressDialog();
            setIsSaving(false);
            Toast.makeText(this, getResources().getString(2131755666), 0).show();
            this.mFragment.g = GroupEditorFragment.c.EDITING;
            return;
        }
        this.mFragment.a(true, intent.getData());
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                onBackPressed();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mTargetContactId = bundle.getLong(KEY_TARGET_CONTACT_ID);
        this.mIsSaving = bundle.getBoolean(KEY_ON_SAVING);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.mIsSaving) {
            showProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong(KEY_TARGET_CONTACT_ID, this.mTargetContactId);
        bundle.putBoolean(KEY_ON_SAVING, this.mIsSaving);
    }

    public void setIsSaving(boolean z) {
        this.mIsSaving = z;
    }

    public void showProgressDialog() {
        if (this.mProgressDialog != null && !this.mProgressDialog.isShowing()) {
            this.mProgressDialog.show();
        }
    }
}
