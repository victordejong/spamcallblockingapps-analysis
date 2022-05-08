package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import com.android.contacts.a.b;
import com.android.contacts.editor.ContactEditorFragment;
import com.android.contacts.ezmode.h;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.account.a;
import com.android.contacts.p;
import com.android.contacts.util.DialogManager;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ContactEditorActivity.class */
public class ContactEditorActivity extends p implements DialogManager.DialogShowingViewActivity {
    public static final String ACTION_JOIN_COMPLETED = "joinCompleted";
    public static final String ACTION_SAVE_COMPLETED = "saveCompleted";
    public static final String INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED = "finishActivityOnSaveCompleted";
    private static final String TAG = "ContactEditorActivity";
    private boolean mFinishActivityOnSaveCompleted;
    private ContactEditorFragment mFragment;
    private DialogManager mDialogManager = new DialogManager(this);
    private boolean mExitFromBDListener = false;
    private int mBDListenerRawId = -1;
    private final ContactEditorFragment.e mFragmentListener = new ContactEditorFragment.e() { // from class: com.android.contacts.activities.ContactEditorActivity.1
        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onContactNotFound() {
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onContactSplit(Uri uri) {
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onContactsSaveAuto(Uri uri, Bundle bundle) {
            if (uri != null && ContactEditorActivity.this.getIntent() != null) {
                ContactEditorActivity.this.getIntent().setAction("android.intent.action.EDIT");
                ContactEditorActivity.this.getIntent().setData(uri);
            }
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onCustomCreateContactActivityRequested(AccountWithDataSet accountWithDataSet, Bundle bundle) {
            a a2 = com.android.contacts.model.a.a(ContactEditorActivity.this).a(accountWithDataSet.type, accountWithDataSet.f1998a);
            Intent intent = new Intent();
            intent.setClassName(a2.d, a2.f());
            intent.setAction("android.intent.action.INSERT");
            intent.setType("vnd.android.cursor.item/contact");
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            intent.putExtra(SelectAccountActivity.ACCOUNT_NAME, accountWithDataSet.name);
            intent.putExtra(SelectAccountActivity.ACCOUNT_TYPE, accountWithDataSet.type);
            intent.putExtra(SelectAccountActivity.DATA_SET, accountWithDataSet.f1998a);
            intent.setFlags(41943040);
            ImplicitIntentsUtil.startActivityInAppIfPossible(ContactEditorActivity.this, intent);
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onCustomEditContactActivityRequested(AccountWithDataSet accountWithDataSet, Uri uri, Bundle bundle, boolean z) {
            a a2 = com.android.contacts.model.a.a(ContactEditorActivity.this).a(accountWithDataSet.type, accountWithDataSet.f1998a);
            Intent intent = new Intent();
            intent.setClassName(a2.d, a2.e());
            intent.setAction("android.intent.action.EDIT");
            intent.setData(uri);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            if (z) {
                intent.setFlags(41943040);
                ImplicitIntentsUtil.startActivityInAppIfPossible(ContactEditorActivity.this, intent);
                ContactEditorActivity.this.finish();
                return;
            }
            ImplicitIntentsUtil.startActivityInAppIfPossible(ContactEditorActivity.this, intent);
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onEditOtherContactRequested(Uri uri, ArrayList<ContentValues> arrayList) {
            Intent intent = new Intent("android.intent.action.EDIT", uri);
            intent.setFlags(41943040);
            intent.putExtra("addToDefaultDirectory", BuildConfig.FLAVOR);
            if (!(arrayList == null || arrayList.size() == 0)) {
                intent.putParcelableArrayListExtra("data", arrayList);
            }
            ImplicitIntentsUtil.startActivityInAppIfPossible(ContactEditorActivity.this, intent);
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onReverted() {
            ContactEditorActivity.this.finish();
        }

        @Override // com.android.contacts.editor.ContactEditorFragment.e
        public void onSaveFinished(Intent intent) {
            int i = 0;
            Intent intent2 = intent;
            if (ContactEditorActivity.this.mExitFromBDListener) {
                intent2 = intent;
                if (intent == null) {
                    intent2 = new Intent();
                }
                ContactEditorActivity.this.setResult(1000, intent2);
                intent2.putExtra("raw_contact_id", ContactEditorActivity.this.mBDListenerRawId);
                ContactEditorActivity.this.mExitFromBDListener = false;
            }
            if (ContactEditorActivity.this.mFinishActivityOnSaveCompleted) {
                if (!ContactEditorActivity.this.mExitFromBDListener) {
                    ContactEditorActivity contactEditorActivity = ContactEditorActivity.this;
                    if (intent2 != null) {
                        i = -1;
                    }
                    contactEditorActivity.setResult(i, intent2);
                }
            } else if (intent2 != null) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(ContactEditorActivity.this, intent2);
            }
            ContactEditorActivity.this.finish();
        }
    };

    @Override // com.android.contacts.util.DialogManager.DialogShowingViewActivity
    public DialogManager getDialogManager() {
        return this.mDialogManager;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (ContactEditorFragment.a(this)) {
            this.mFragment.c();
        } else {
            this.mFragment.a(0);
        }
    }

    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            if (h.a(this)) {
                finish();
            }
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            Intent intent = getIntent();
            String action = intent.getAction();
            this.mFinishActivityOnSaveCompleted = intent.getBooleanExtra(INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, false);
            if (ACTION_JOIN_COMPLETED.equals(action)) {
                finish();
            } else if ("saveCompleted".equals(action)) {
                finish();
            } else {
                setContentView(2131427474);
                ActionBar actionBar = getActionBar();
                if (actionBar != null) {
                    if ("android.intent.action.EDIT".equals(action)) {
                        actionBar.setTitle(2131755595);
                    } else {
                        actionBar.setTitle(2131755525);
                    }
                    actionBar.setDisplayShowHomeEnabled(false);
                    actionBar.setDisplayHomeAsUpEnabled(true);
                    actionBar.setDisplayShowTitleEnabled(true);
                }
                try {
                    this.mFragment = (ContactEditorFragment) getFragmentManager().findFragmentById(2131296565);
                    this.mFragment.c = this.mFragmentListener;
                    this.mFragment.a(action, "android.intent.action.EDIT".equals(action) ? getIntent().getData() : null, getIntent().getExtras());
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        b.a();
                        b.a(18, (Activity) this, "Edit contact", true);
                        return;
                    }
                    b.a();
                    b.a(10, (Activity) this, "Edit contact", true);
                } catch (Exception e) {
                    Log.d(TAG, "Fail to init viewPager, Exception : " + e.toString());
                    finish();
                }
            }
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

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.mFragment != null) {
            String action = intent.getAction();
            if ("android.intent.action.EDIT".equals(action)) {
                this.mFragment.a(intent.getExtras());
            } else if ("saveCompleted".equals(action)) {
                this.mFragment.a(true, intent.getIntExtra("saveMode", 0), intent.getBooleanExtra("saveSucceeded", false), intent.getData(), intent.getBooleanExtra("saveFailStorageFull", false));
            } else if (ACTION_JOIN_COMPLETED.equals(action)) {
                this.mFragment.b(intent.getData());
            }
        }
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
}
