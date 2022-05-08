package com.android.contacts.activities;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.p;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.NotifyingAsyncQueryHandler;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ShowOrCreateActivity.class */
public final class ShowOrCreateActivity extends p implements NotifyingAsyncQueryHandler.AsyncQueryListener {
    static final int CONTACT_ID_INDEX = 0;
    static final int CREATE_CONTACT_DIALOG = 1;
    static final boolean LOGD = false;
    static final int LOOKUP_KEY_INDEX = 1;
    static final int QUERY_TOKEN = 42;
    static final String TAG = "ShowOrCreateActivity";
    private String mCreateDescrip;
    private Bundle mCreateExtras;
    private boolean mCreateForce;
    private NotifyingAsyncQueryHandler mQueryHandler;
    static final String[] PHONES_PROJECTION = {"_id", "lookup"};
    static final String[] CONTACTS_PROJECTION = {ContactDetailCallogActivity.EXTRA_CONTACT_ID, "lookup"};

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ShowOrCreateActivity$IntentClickListener.class */
    private static class IntentClickListener implements DialogInterface.OnClickListener {
        private Intent mIntent;
        private Activity mParent;

        public IntentClickListener(Activity activity, Intent intent) {
            this.mParent = activity;
            this.mIntent = intent;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.mIntent != null) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(this.mParent, this.mIntent);
            }
            this.mParent.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        String str2;
        super.onCreate(bundle);
        if (this.mQueryHandler == null) {
            this.mQueryHandler = new NotifyingAsyncQueryHandler(this, this);
        } else {
            this.mQueryHandler.cancelOperation(QUERY_TOKEN);
        }
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data != null) {
            str2 = data.getScheme();
            str = data.getSchemeSpecificPart();
        } else {
            str = null;
            str2 = null;
        }
        this.mCreateExtras = new Bundle();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.mCreateExtras.putAll(extras);
        }
        this.mCreateDescrip = intent.getStringExtra("com.android.contacts.action.CREATE_DESCRIPTION");
        if (this.mCreateDescrip == null) {
            this.mCreateDescrip = str;
        }
        this.mCreateForce = intent.getBooleanExtra("com.android.contacts.action.FORCE_CREATE", false);
        if (Constants.SCHEME_MAILTO.equals(str2)) {
            this.mCreateExtras.putString("email", str);
            this.mQueryHandler.startQuery(QUERY_TOKEN, null, Uri.withAppendedPath(ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI, Uri.encode(str)), CONTACTS_PROJECTION, null, null, null);
        } else if (Constants.SCHEME_TEL.equals(str2)) {
            this.mCreateExtras.putString("phone", str);
            this.mQueryHandler.startQuery(QUERY_TOKEN, null, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str), PHONES_PROJECTION, null, null, null);
        } else {
            Log.w(TAG, "Invalid intent:" + getIntent());
            finish();
        }
    }

    @Override // android.app.Activity
    protected final Dialog onCreateDialog(int i) {
        Dialog create;
        switch (i) {
            case 1:
                Intent intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                intent.putExtras(this.mCreateExtras);
                intent.setType("vnd.android.cursor.item/raw_contact");
                create = new AlertDialog.Builder(this, 5).setMessage(getResources().getString(2131755032, this.mCreateDescrip)).setPositiveButton(17039370, new IntentClickListener(this, intent)).setNegativeButton(17039360, new IntentClickListener(this, null)).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.contacts.activities.ShowOrCreateActivity.1
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        ShowOrCreateActivity.this.finish();
                    }
                }).create();
                break;
            default:
                create = super.onCreateDialog(i);
                break;
        }
        return create;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.android.contacts.util.NotifyingAsyncQueryHandler.AsyncQueryListener
    public final void onQueryComplete(int i, Object obj, Cursor cursor) {
        long j;
        if (cursor == null) {
            finish();
            return;
        }
        String str = null;
        try {
            int count = cursor.getCount();
            if (count != 1 || !cursor.moveToFirst()) {
                j = -1;
            } else {
                j = cursor.getLong(0);
                str = cursor.getString(1);
            }
            cursor.close();
            if (count == 1 && j != -1) {
                ImplicitIntentsUtil.startActivityInApp(this, new Intent("android.intent.action.VIEW", ContactsContract.Contacts.getLookupUri(j, str)));
                finish();
            } else if (count > 1) {
                Intent intent = new Intent("android.intent.action.SEARCH");
                intent.setComponent(new ComponentName(this, PeopleActivity.class));
                intent.putExtras(this.mCreateExtras);
                ImplicitIntentsUtil.startActivityInApp(this, intent);
                finish();
            } else if (this.mCreateForce) {
                Intent intent2 = new Intent("android.intent.action.INSERT", ContactsContract.RawContacts.CONTENT_URI);
                intent2.putExtras(this.mCreateExtras);
                intent2.setType("vnd.android.cursor.dir/raw_contact");
                ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent2);
                finish();
            } else {
                showDialog(1);
            }
        } catch (Throwable th) {
            cursor.close();
            throw th;
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        super.onStop();
        if (this.mQueryHandler != null) {
            this.mQueryHandler.cancelOperation(QUERY_TOKEN);
        }
    }
}
