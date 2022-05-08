package com.android.contacts.activities;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.AsyncQueryHandler;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.editor.ViewIdGenerator;
import com.android.contacts.editor.d;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.a;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.e;
import com.android.contacts.model.f;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DialogManager;
import com.android.contacts.util.EmptyService;
import com.android.contacts.util.PhoneCapabilityTester;
import com.uservoice.uservoicesdk.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity.class */
public class ConfirmAddDetailActivity extends Activity implements DialogManager.DialogShowingViewActivity {
    private static final int TOKEN_CONTACT_INFO = 0;
    private static final int TOKEN_DISAMBIGUATION_QUERY = 2;
    private static final int TOKEN_EXTRA_INFO_QUERY = 3;
    private static final int TOKEN_PHOTO_QUERY = 1;
    private static WeakReference<ProgressDialog> sProgressDialog;
    private a mAccountTypeManager;
    private long mContactId;
    private Uri mContactUri;
    private ContentResolver mContentResolver;
    private String mDisplayName;
    private TextView mDisplayNameView;
    private com.android.contacts.model.account.a mEditableAccountType;
    private ViewGroup mEditorContainerView;
    private RawContactDeltaList mEntityDeltaList;
    private LayoutInflater mInflater;
    private boolean mIsReadOnly;
    private ImageView mPhotoView;
    private QueryHandler mQueryHandler;
    private RawContactDelta mRawContactDelta;
    private TextView mReadOnlyWarningView;
    private View mRootView;
    private static final String TAG = "ConfirmAdd";
    private static final boolean VERBOSE_LOGGING = Log.isLoggable(TAG, 2);
    private static final String[] MIME_TYPE_PRIORITY_LIST = {"vnd.android.cursor.item/nickname", "vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/im", "vnd.android.cursor.item/postal-address_v2", "vnd.android.cursor.item/phone_v2"};
    private String mMimetype = "vnd.android.cursor.item/phone_v2";
    private final DialogManager mDialogManager = new DialogManager(this);
    private final View.OnClickListener mDetailsButtonClickListener = new View.OnClickListener() { // from class: com.android.contacts.activities.ConfirmAddDetailActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ConfirmAddDetailActivity.this.mIsReadOnly) {
                ConfirmAddDetailActivity.this.onSaveCompleted(true);
            } else {
                ConfirmAddDetailActivity.this.doSaveAction();
            }
        }
    };
    private final View.OnClickListener mDoneButtonClickListener = new View.OnClickListener() { // from class: com.android.contacts.activities.ConfirmAddDetailActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConfirmAddDetailActivity.this.doSaveAction();
        }
    };
    private final View.OnClickListener mCancelButtonClickListener = new View.OnClickListener() { // from class: com.android.contacts.activities.ConfirmAddDetailActivity.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConfirmAddDetailActivity.this.setResult(0);
            ConfirmAddDetailActivity.this.finish();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery.class */
    public interface ContactQuery {
        public static final String[] COLUMNS = {"_id", "lookup", "photo_id", "display_name"};
        public static final int DISPLAY_NAME = 3;
        public static final int LOOKUP_KEY = 1;
        public static final int PHOTO_ID = 2;
        public static final int _ID = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery.class */
    public interface ExtraInfoQuery {
        public static final String[] COLUMNS = {ContactDetailCallogActivity.EXTRA_CONTACT_ID, "mimetype", CoverUtils.CoverData.COVER_URI};
        public static final int CONTACT_ID = 0;
        public static final int DATA1 = 2;
        public static final int MIMETYPE = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity$PersistTask.class */
    public static class PersistTask extends AsyncTask<RawContactDeltaList, Void, Integer> {
        private static final int PERSIST_TRIES = 3;
        private static final int RESULT_FAILURE = 2;
        private static final int RESULT_SUCCESS = 1;
        private static final int RESULT_UNCHANGED = 0;
        private ConfirmAddDetailActivity activityTarget;
        private a mAccountTypeManager;

        public PersistTask(ConfirmAddDetailActivity confirmAddDetailActivity, a aVar) {
            this.activityTarget = confirmAddDetailActivity;
            this.mAccountTypeManager = aVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(RawContactDeltaList... rawContactDeltaListArr) {
            int i;
            int i2 = 0;
            ContentResolver contentResolver = this.activityTarget.getContentResolver();
            RawContactDeltaList rawContactDeltaList = rawContactDeltaListArr[0];
            if (rawContactDeltaList == null) {
                i = 2;
            } else {
                f.a(rawContactDeltaList, this.mAccountTypeManager);
                i = 2;
                try {
                    ArrayList<ContentProviderOperation> a2 = rawContactDeltaList.a();
                    if (!a2.isEmpty()) {
                        contentResolver.applyBatch("com.android.contacts", a2);
                    }
                    if (a2.size() > 0) {
                        i2 = 1;
                    }
                    i = Integer.valueOf(i2);
                } catch (OperationApplicationException e) {
                    Log.e(ConfirmAddDetailActivity.TAG, "Version consistency failed", e);
                } catch (RemoteException e2) {
                    Log.e(ConfirmAddDetailActivity.TAG, "Problem persisting user edits", e2);
                }
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            boolean z = true;
            ConfirmAddDetailActivity confirmAddDetailActivity = this.activityTarget;
            ConfirmAddDetailActivity.dismissProgressDialog();
            if (num.intValue() == 1) {
                Toast.makeText(confirmAddDetailActivity, 2131755444, 0).show();
            } else if (num.intValue() == 2) {
                Toast.makeText(confirmAddDetailActivity, 2131755443, 1).show();
            }
            confirmAddDetailActivity.stopService(new Intent(confirmAddDetailActivity, EmptyService.class));
            ConfirmAddDetailActivity confirmAddDetailActivity2 = this.activityTarget;
            if (num.intValue() == 2) {
                z = false;
            }
            confirmAddDetailActivity2.onSaveCompleted(z);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            WeakReference unused = ConfirmAddDetailActivity.sProgressDialog = new WeakReference(ProgressDialog.show(this.activityTarget, null, this.activityTarget.getText(2131756075)));
            ConfirmAddDetailActivity confirmAddDetailActivity = this.activityTarget;
            confirmAddDetailActivity.startService(new Intent(confirmAddDetailActivity, EmptyService.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery.class */
    public interface PhotoQuery {
        public static final String[] COLUMNS = {"data15"};
        public static final int PHOTO = 0;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask.class */
    private static class QueryEntitiesTask extends AsyncTask<Intent, Void, RawContactDeltaList> {
        private ConfirmAddDetailActivity activityTarget;
        private String mSelection;

        public QueryEntitiesTask(ConfirmAddDetailActivity confirmAddDetailActivity) {
            this.activityTarget = confirmAddDetailActivity;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static long queryForContactId(android.content.ContentResolver r10, long r11) {
            /*
                r0 = r10
                android.net.Uri r1 = android.provider.ContactsContract.RawContacts.CONTENT_URI     // Catch: all -> 0x0040
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0040
                r3 = r2
                r4 = 0
                java.lang.String r5 = "contact_id"
                r3[r4] = r5     // Catch: all -> 0x0040
                java.lang.String r3 = "_id=?"
                r4 = 1
                java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x0040
                r5 = r4
                r6 = 0
                r7 = r11
                java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: all -> 0x0040
                r5[r6] = r7     // Catch: all -> 0x0040
                r5 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x0040
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0053
                r0 = r10
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x004f
                if (r0 == 0) goto L_0x0053
                r0 = r10
                r1 = 0
                long r0 = r0.getLong(r1)     // Catch: all -> 0x004f
                r11 = r0
            L_0x0034:
                r0 = r10
                if (r0 == 0) goto L_0x003e
                r0 = r10
                r0.close()
            L_0x003e:
                r0 = r11
                return r0
            L_0x0040:
                r13 = move-exception
                r0 = 0
                r10 = r0
            L_0x0043:
                r0 = r10
                if (r0 == 0) goto L_0x004d
                r0 = r10
                r0.close()
            L_0x004d:
                r0 = r13
                throw r0
            L_0x004f:
                r13 = move-exception
                goto L_0x0043
            L_0x0053:
                r0 = -1
                r11 = r0
                goto L_0x0034
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.ConfirmAddDetailActivity.QueryEntitiesTask.queryForContactId(android.content.ContentResolver, long):long");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public RawContactDeltaList doInBackground(Intent... intentArr) {
            Intent intent = intentArr[0];
            ContentResolver contentResolver = this.activityTarget.getContentResolver();
            Uri data = intent.getData();
            String authority = data.getAuthority();
            String resolveType = intent.resolveType(contentResolver);
            this.mSelection = "0";
            String str = null;
            if ("com.android.contacts".equals(authority)) {
                if ("vnd.android.cursor.item/contact".equals(resolveType)) {
                    str = String.valueOf(ContentUris.parseId(data));
                    this.mSelection = "contact_id=?";
                } else if ("vnd.android.cursor.item/raw_contact".equals(resolveType)) {
                    str = String.valueOf(queryForContactId(contentResolver, ContentUris.parseId(data)));
                    this.mSelection = "contact_id=?";
                }
            } else if ("contacts".equals(authority)) {
                str = String.valueOf(ContentUris.parseId(data));
                this.mSelection = "raw_contact_id=?";
            }
            return RawContactDeltaList.a(ContactsContract.RawContactsEntity.CONTENT_URI, this.activityTarget.getContentResolver(), this.mSelection, new String[]{str});
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(RawContactDeltaList rawContactDeltaList) {
            if (!this.activityTarget.isFinishing()) {
                if (rawContactDeltaList == null || rawContactDeltaList.size() == 0) {
                    Log.e(ConfirmAddDetailActivity.TAG, "Contact not found.");
                    this.activityTarget.finish();
                    return;
                }
                this.activityTarget.setEntityDeltaList(rawContactDeltaList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler.class */
    public class QueryHandler extends AsyncQueryHandler {
        public QueryHandler(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // android.content.AsyncQueryHandler
        protected void onQueryComplete(int i, Object obj, Cursor cursor) {
            Bitmap bitmap;
            int i2 = 0;
            try {
                if (this != ConfirmAddDetailActivity.this.mQueryHandler) {
                    Log.d(ConfirmAddDetailActivity.TAG, "onQueryComplete: discard result, the query handler is reset!");
                    if (cursor != null) {
                        cursor.close();
                    }
                } else if (!ConfirmAddDetailActivity.this.isFinishing()) {
                    switch (i) {
                        case 0:
                            if (cursor != null && cursor.moveToFirst()) {
                                ConfirmAddDetailActivity.this.mDisplayName = cursor.getString(3);
                                long j = cursor.getLong(2);
                                if (j != 0) {
                                    ConfirmAddDetailActivity.this.startPhotoQuery(j, ContactsContract.Contacts.getLookupUri(ConfirmAddDetailActivity.this.mContactId, cursor.getString(1)));
                                    ConfirmAddDetailActivity.this.setDisplayName();
                                    ConfirmAddDetailActivity.this.showDialogContent();
                                    break;
                                } else {
                                    ConfirmAddDetailActivity.this.mContactId = cursor.getLong(0);
                                    ConfirmAddDetailActivity.this.startDisambiguationQuery(ConfirmAddDetailActivity.this.mDisplayName);
                                    break;
                                }
                            }
                            break;
                        case 1:
                            if (cursor == null || !cursor.moveToFirst() || cursor.isNull(0)) {
                                bitmap = null;
                            } else {
                                byte[] blob = cursor.getBlob(0);
                                bitmap = BitmapFactory.decodeByteArray(blob, 0, blob.length, null);
                            }
                            if (bitmap != null) {
                                ConfirmAddDetailActivity.this.mPhotoView.setImageBitmap(bitmap);
                                break;
                            }
                            break;
                        case 2:
                            if (cursor != null && cursor.getCount() > 0) {
                                ConfirmAddDetailActivity.this.startExtraInfoQuery();
                                break;
                            } else {
                                ConfirmAddDetailActivity.this.setDisplayName();
                                ConfirmAddDetailActivity.this.showDialogContent();
                                break;
                            }
                        case 3:
                            if (cursor != null && cursor.moveToFirst()) {
                                HashMap hashMap = new HashMap();
                                while (!cursor.isAfterLast()) {
                                    String string = cursor.getString(1);
                                    if (!TextUtils.isEmpty(string)) {
                                        String string2 = cursor.getString(2);
                                        if (!TextUtils.isEmpty(string2)) {
                                            String str = string2;
                                            if ("vnd.android.cursor.item/phone_v2".equals(string)) {
                                                str = PhoneNumberUtils.formatNumber(string2);
                                            }
                                            hashMap.put(string, str);
                                        }
                                    }
                                    cursor.moveToNext();
                                }
                                String[] strArr = ConfirmAddDetailActivity.MIME_TYPE_PRIORITY_LIST;
                                int length = strArr.length;
                                while (true) {
                                    if (i2 < length) {
                                        String str2 = strArr[i2];
                                        if (hashMap.containsKey(str2)) {
                                            ConfirmAddDetailActivity.this.setDisplayName();
                                            ConfirmAddDetailActivity.this.setExtraInfoField((String) hashMap.get(str2));
                                        } else {
                                            i2++;
                                        }
                                    }
                                }
                                ConfirmAddDetailActivity.this.showDialogContent();
                                break;
                            }
                            break;
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } else if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    private static RawContactDelta addEditableRawContact(Context context, RawContactDeltaList rawContactDeltaList) {
        RawContactDelta rawContactDelta;
        a a2 = a.a(context);
        List<AccountWithDataSet> a3 = a2.a(true);
        if (a3.size() == 0) {
            rawContactDelta = null;
        } else {
            AccountWithDataSet accountWithDataSet = a3.get(0);
            com.android.contacts.model.account.a a4 = a2.a(accountWithDataSet.type, accountWithDataSet.f1998a);
            e eVar = new e(context);
            eVar.a(accountWithDataSet);
            rawContactDelta = new RawContactDelta(RawContactDelta.ValuesDelta.c(eVar.f2032b));
            Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
            while (true) {
                if (it.hasNext()) {
                    ArrayList<RawContactDelta.ValuesDelta> a5 = it.next().a("vnd.android.cursor.item/name", false);
                    if (a5 != null && a5.size() > 0) {
                        RawContactDelta.ValuesDelta valuesDelta = a5.get(0);
                        RawContactDelta.ValuesDelta a6 = f.a(rawContactDelta, a4, "vnd.android.cursor.item/name");
                        a6.a(valuesDelta, CoverUtils.CoverData.COVER_URI);
                        a6.a(valuesDelta, CoverUtils.CoverData.COVER_TYPE);
                        a6.a(valuesDelta, CoverUtils.CoverData.USER_SET);
                        a6.a(valuesDelta, "data4");
                        a6.a(valuesDelta, "data5");
                        a6.a(valuesDelta, "data6");
                        a6.a(valuesDelta, "data7");
                        a6.a(valuesDelta, "data8");
                        a6.a(valuesDelta, "data9");
                        a6.a(valuesDelta, "data10");
                        a6.a(valuesDelta, "data11");
                        break;
                    }
                } else {
                    break;
                }
            }
            rawContactDeltaList.add(rawContactDelta);
        }
        return rawContactDelta;
    }

    private void bindEditor() {
        if (this.mEntityDeltaList == null) {
            throw new IllegalStateException();
        } else if (this.mIsReadOnly) {
            this.mReadOnlyWarningView.setText(getString(2131755450));
            this.mReadOnlyWarningView.setVisibility(0);
            this.mEditorContainerView.setVisibility(8);
            findViewById(2131296408).setVisibility(8);
            showDialogContent();
        } else {
            Iterator<b> it = this.mEditableAccountType.r().iterator();
            while (it.hasNext()) {
                b next = it.next();
                if (next.g && this.mMimetype.equals(next.f1997b) && this.mRawContactDelta != null && this.mRawContactDelta.a(this.mMimetype, false) != null) {
                    Iterator<RawContactDelta.ValuesDelta> it2 = this.mRawContactDelta.a(this.mMimetype, false).iterator();
                    while (it2.hasNext()) {
                        RawContactDelta.ValuesDelta next2 = it2.next();
                        if (next2.b() && next2.n()) {
                            inflateEditorView(next, next2, this.mRawContactDelta);
                            return;
                        }
                    }
                    continue;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dismissProgressDialog() {
        ProgressDialog progressDialog = sProgressDialog == null ? null : sProgressDialog.get();
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        sProgressDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSaveAction() {
        new PersistTask(this, this.mAccountTypeManager).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mEntityDeltaList);
    }

    private void inflateEditorView(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta) {
        View inflate = this.mInflater.inflate(bVar.q, this.mEditorContainerView, false);
        if (inflate instanceof d) {
            d dVar = (d) inflate;
            dVar.setDeletable(false);
            dVar.setValues(bVar, valuesDelta, rawContactDelta, false, new ViewIdGenerator());
        }
        this.mEditorContainerView.addView(inflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSaveCompleted(boolean z) {
        if (z) {
            setResult(-1, new Intent("android.intent.action.VIEW", this.mContactUri));
        } else {
            setResult(0);
        }
        finish();
    }

    private void resetAsyncQueryHandler() {
        this.mQueryHandler = new QueryHandler(this.mContentResolver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayName() {
        this.mDisplayNameView.setText(this.mDisplayName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEntityDeltaList(RawContactDeltaList rawContactDeltaList) {
        if (rawContactDeltaList == null) {
            throw new IllegalStateException();
        }
        if (VERBOSE_LOGGING) {
            Log.v(TAG, "setEntityDeltaList: " + rawContactDeltaList);
        }
        this.mEntityDeltaList = rawContactDeltaList;
        this.mRawContactDelta = this.mEntityDeltaList.b(this);
        if (this.mRawContactDelta == null) {
            this.mRawContactDelta = addEditableRawContact(this, this.mEntityDeltaList);
            if (this.mRawContactDelta != null && VERBOSE_LOGGING) {
                Log.v(TAG, "setEntityDeltaList: created editable raw_contact " + rawContactDeltaList);
            }
        }
        if (this.mRawContactDelta == null) {
            this.mIsReadOnly = true;
            this.mEditableAccountType = null;
        } else {
            this.mIsReadOnly = false;
            this.mEditableAccountType = this.mRawContactDelta.a(this);
            Bundle extras = getIntent().getExtras();
            if (extras != null && extras.size() > 0) {
                f.a(this, this.mEditableAccountType, this.mRawContactDelta, extras);
            }
        }
        bindEditor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setExtraInfoField(String str) {
        TextView textView = (TextView) findViewById(2131296797);
        textView.setVisibility(0);
        textView.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialogContent() {
        this.mRootView.setVisibility(0);
    }

    private void startContactQuery(Uri uri) {
        this.mQueryHandler.startQuery(0, uri, uri, ContactQuery.COLUMNS, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDisambiguationQuery(String str) {
        String str2;
        String[] strArr;
        Uri.Builder buildUpon = ContactsContract.Contacts.CONTENT_URI.buildUpon();
        buildUpon.appendQueryParameter("limit", "1");
        Uri build = buildUpon.build();
        if (TextUtils.isEmpty(str)) {
            strArr = new String[]{String.valueOf(this.mContactId)};
            str2 = "display_name IS NULL";
        } else {
            str2 = "display_name = ?";
            strArr = new String[]{str, String.valueOf(this.mContactId)};
        }
        this.mQueryHandler.startQuery(2, null, build, new String[]{"_id"}, str2 + " AND photo_id IS NULL AND _id <> ?", strArr, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startExtraInfoQuery() {
        this.mQueryHandler.startQuery(3, null, ContactsContract.Data.CONTENT_URI, ExtraInfoQuery.COLUMNS, "contact_id = ?", new String[]{String.valueOf(this.mContactId)}, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPhotoQuery(long j, Uri uri) {
        this.mQueryHandler.startQuery(1, uri, ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, j), PhotoQuery.COLUMNS, null, null, null);
    }

    @Override // com.android.contacts.util.DialogManager.DialogShowingViewActivity
    public DialogManager getDialogManager() {
        return this.mDialogManager;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean z = (getResources().getConfiguration().uiMode & 15) == 3;
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || z) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            this.mInflater = (LayoutInflater) getSystemService("layout_inflater");
            this.mContentResolver = getContentResolver();
            Intent intent = getIntent();
            this.mContactUri = intent.getData();
            if (this.mContactUri == null) {
                setResult(0);
                finish();
            }
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (extras.containsKey("phone")) {
                    this.mMimetype = "vnd.android.cursor.item/phone_v2";
                } else if (extras.containsKey("email")) {
                    this.mMimetype = "vnd.android.cursor.item/email_v2";
                } else {
                    throw new IllegalStateException("Error: No valid mimetype found in intent extras");
                }
            }
            this.mAccountTypeManager = a.a(this);
            setContentView(2131427453);
            this.mRootView = findViewById(2131297241);
            this.mReadOnlyWarningView = (TextView) findViewById(2131297222);
            findViewById(2131297135).setOnClickListener(this.mDetailsButtonClickListener);
            findViewById(2131296408).setOnClickListener(this.mDoneButtonClickListener);
            findViewById(2131296407).setOnClickListener(this.mCancelButtonClickListener);
            this.mDisplayNameView = (TextView) findViewById(d.b.g);
            this.mPhotoView = (ImageView) findViewById(2131297153);
            this.mEditorContainerView = (ViewGroup) findViewById(2131296781);
            resetAsyncQueryHandler();
            startContactQuery(this.mContactUri);
            new QueryEntitiesTask(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, intent);
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
    protected void onStop() {
        super.onStop();
        dismissProgressDialog();
    }
}
