package com.android.contacts.activities;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentUris;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SearchView;
import com.android.contacts.d;
import com.android.contacts.e;
import com.android.contacts.group.GroupEditorFragment;
import com.android.contacts.group.f;
import com.android.contacts.list.ad;
import com.android.contacts.list.ao;
import com.android.contacts.list.ap;
import com.android.contacts.list.aq;
import com.android.contacts.list.ax;
import com.android.contacts.list.az;
import com.android.contacts.list.ba;
import com.android.contacts.list.bb;
import com.android.contacts.list.bd;
import com.android.contacts.list.bf;
import com.android.contacts.list.z;
import com.android.contacts.p;
import com.android.contacts.s;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.skin.a;
import com.android.contacts.u;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.widget.b;
import com.android.vcard.VCardConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity.class */
public class MultiSelecetDialogContactActivity extends p implements View.OnClickListener, View.OnCreateContextMenuListener, View.OnFocusChangeListener, SearchView.OnCloseListener, SearchView.OnQueryTextListener {
    public static final String ACTION_SAVE_COMPLETED = "saveCompleted";
    private static final int DEFAULT_DIRECTORY_RESULT_LIMIT = 20;
    private static final String KEY_ACCOUNT_NAME = "accountName";
    private static final String KEY_ACCOUNT_TYPE = "accountType";
    private static final String KEY_ACTION_CODE = "actionCode";
    private static final String KEY_BACKUP_MEMBERS_TO_DISPLAY = "backupMembersToDisplay";
    private static final String KEY_GROUP_NAME = "group_name";
    private static final String KEY_IS_DONE_ENABLE = "doneEnable";
    private static final int LOADER_EXISTING_MEMBERS = 2;
    private static final int LOADER_GROUP_METADATA = 1;
    private static final int SUBACTIVITY_ADD_TO_EXISTING_CONTACT = 0;
    private static final String TAG = "ContactSelectionActivity";
    private static WeakReference<ProgressDialog> sProgressDialog;
    private String mAccountName;
    private String mAccountType;
    private String mCallerFragment;
    private long[] mExistingMembersArray;
    private long[] mFavoriteListToDisplay;
    private long mGroupId;
    private String mGroupName;
    private Uri mGroupUri;
    protected com.android.contacts.list.p<?> mListFragment;
    private ad mRequest;
    private SearchView mSearchView;
    private int mActionCode = -1;
    private boolean mIsFromFavoriteEditActivity = false;
    private boolean mIsCarMode = false;
    private boolean isDoneEnable = false;
    private boolean mIsAsusDevice = false;
    private MenuItem mSaveMenuItem = null;
    private final LoaderManager.LoaderCallbacks<Cursor> mGroupMetaDataLoaderListener = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            return new u(MultiSelecetDialogContactActivity.this, MultiSelecetDialogContactActivity.this.mGroupUri);
        }

        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            MultiSelecetDialogContactActivity.this.bindGroupMetaData(cursor);
            MultiSelecetDialogContactActivity.this.getLoaderManager().initLoader(2, null, MultiSelecetDialogContactActivity.this.mGroupMemberListLoaderListener);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> mGroupMemberListLoaderListener = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.3
        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            return s.a(MultiSelecetDialogContactActivity.this, MultiSelecetDialogContactActivity.this.mGroupId);
        }

        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long j = cursor.getLong(0);
                arrayList.add(new GroupEditorFragment.Member(cursor.getString(3), j, cursor.getString(1), cursor.getString(2)));
                arrayList2.add(Long.valueOf(j));
            }
            MultiSelecetDialogContactActivity.this.addExistingMembers(arrayList);
            MultiSelecetDialogContactActivity.this.mExistingMembersArray = MultiSelecetDialogContactActivity.this.changeLongListToArray(arrayList2);
            MultiSelecetDialogContactActivity.this.getLoaderManager().destroyLoader(2);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> mAsusGroupMetaDataLoaderListener = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.4
        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            return new e(MultiSelecetDialogContactActivity.this, MultiSelecetDialogContactActivity.this.mGroupUri, false);
        }

        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            MultiSelecetDialogContactActivity.this.bindGlobalGroupMetaData(cursor);
            MultiSelecetDialogContactActivity.this.getLoaderManager().initLoader(2, null, MultiSelecetDialogContactActivity.this.mAsusGroupMemberListLoaderListener);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private final LoaderManager.LoaderCallbacks<Cursor> mAsusGroupMemberListLoaderListener = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.5
        @Override // android.app.LoaderManager.LoaderCallbacks
        /* renamed from: onCreateLoader */
        public Loader<Cursor> onCreateLoader2(int i, Bundle bundle) {
            return d.a(MultiSelecetDialogContactActivity.this, MultiSelecetDialogContactActivity.this.mGroupId, f.a(MultiSelecetDialogContactActivity.this.mGroupName) ? 0 : f.b(MultiSelecetDialogContactActivity.this.mGroupName) ? 1 : 2);
        }

        public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                long j = cursor.getLong(0);
                arrayList.add(new GroupEditorFragment.Member(cursor.getString(3), j, cursor.getString(1), cursor.getString(2)));
                arrayList2.add(Long.valueOf(j));
            }
            MultiSelecetDialogContactActivity.this.addExistingMembers(arrayList);
            MultiSelecetDialogContactActivity.this.mExistingMembersArray = MultiSelecetDialogContactActivity.this.changeLongListToArray(arrayList2);
            MultiSelecetDialogContactActivity.this.getLoaderManager().destroyLoader(2);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private z mIntentResolver = new z(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity$ContactPickerActionListener.class */
    public final class ContactPickerActionListener implements ax {
        private ContactPickerActionListener() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
            if (r9 != false) goto L_0x0086;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00b6, code lost:
            if (r0.contains("email") != false) goto L_0x00b9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean launchAddToContactDialog(android.os.Bundle r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r4
                if (r0 != 0) goto L_0x000a
                r0 = r5
                r6 = r0
            L_0x0008:
                r0 = r6
                return r0
            L_0x000a:
                java.util.HashSet r0 = new java.util.HashSet
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = r7
                r1 = r4
                java.util.Set r1 = r1.keySet()
                boolean r0 = r0.addAll(r1)
                r0 = r7
                java.lang.String r1 = "name"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0035
                r0 = r7
                java.lang.String r1 = "name"
                boolean r0 = r0.remove(r1)
            L_0x0035:
                r0 = r7
                int r0 = r0.size()
                r8 = r0
                r0 = r8
                r1 = 2
                if (r0 != r1) goto L_0x0097
                r0 = r7
                java.lang.String r1 = "phone"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x008b
                r0 = r7
                java.lang.String r1 = "phone_type"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x008b
                r0 = 1
                r8 = r0
            L_0x005f:
                r0 = r7
                java.lang.String r1 = "email"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0091
                r0 = r7
                java.lang.String r1 = "email_type"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0091
                r0 = 1
                r9 = r0
            L_0x007a:
                r0 = r8
                if (r0 != 0) goto L_0x0086
                r0 = r5
                r6 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0008
            L_0x0086:
                r0 = 1
                r6 = r0
                goto L_0x0008
            L_0x008b:
                r0 = 0
                r8 = r0
                goto L_0x005f
            L_0x0091:
                r0 = 0
                r9 = r0
                goto L_0x007a
            L_0x0097:
                r0 = r5
                r6 = r0
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L_0x0008
                r0 = r7
                java.lang.String r1 = "phone"
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L_0x00b9
                r0 = r5
                r6 = r0
                r0 = r7
                java.lang.String r1 = "email"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L_0x0008
            L_0x00b9:
                r0 = 1
                r6 = r0
                goto L_0x0008
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.activities.MultiSelecetDialogContactActivity.ContactPickerActionListener.launchAddToContactDialog(android.os.Bundle):boolean");
        }

        @Override // com.android.contacts.list.ax
        public final void onCreateNewContactAction() {
            MultiSelecetDialogContactActivity.this.startCreateNewContactActivity();
        }

        @Override // com.android.contacts.list.ax
        public final void onEditContactAction(Uri uri) {
            Bundle extras = MultiSelecetDialogContactActivity.this.getIntent().getExtras();
            if (launchAddToContactDialog(extras)) {
                Intent intent = new Intent(MultiSelecetDialogContactActivity.this, ConfirmAddDetailActivity.class);
                intent.setData(uri);
                if (extras != null) {
                    extras.remove(ContactDetailCallogActivity.EXTRA_NAME);
                    intent.putExtras(extras);
                }
                MultiSelecetDialogContactActivity.this.startActivityForResult(intent, 0);
                return;
            }
            MultiSelecetDialogContactActivity.this.startActivityAndForwardResult(new Intent("android.intent.action.EDIT", uri));
        }

        @Override // com.android.contacts.list.ax
        public final void onEditContactAction(Uri uri, long j) {
            Bundle extras = MultiSelecetDialogContactActivity.this.getIntent().getExtras();
            if (launchAddToContactDialog(extras)) {
                Intent intent = new Intent(MultiSelecetDialogContactActivity.this, ConfirmAddDetailActivity.class);
                intent.setData(uri);
                intent.putExtra("Override_Data_Id", j);
                if (extras != null) {
                    intent.putExtras(extras);
                }
                MultiSelecetDialogContactActivity.this.startActivityForResult(intent, 0);
                return;
            }
            MultiSelecetDialogContactActivity.this.startActivityAndForwardResult(new Intent("android.intent.action.EDIT", uri));
        }

        @Override // com.android.contacts.list.ax
        public final void onPickContactAction(Uri uri) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(uri);
        }

        public final void onRemoveContactAction(Long l) {
        }

        @Override // com.android.contacts.list.ax
        public final void onSelectAContact(boolean z) {
            if (MultiSelecetDialogContactActivity.this.mSaveMenuItem != null) {
                MultiSelecetDialogContactActivity.this.isDoneEnable = z;
                MultiSelecetDialogContactActivity.this.mSaveMenuItem.setEnabled(z);
                a.a(MultiSelecetDialogContactActivity.this.getApplicationContext(), MultiSelecetDialogContactActivity.this.mSaveMenuItem);
            }
        }

        @Override // com.android.contacts.list.ax
        public final void onShortcutIntentCreated(Intent intent) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity$EmailAddressPickerActionListener.class */
    public final class EmailAddressPickerActionListener implements az {
        private EmailAddressPickerActionListener() {
        }

        @Override // com.android.contacts.list.az
        public final void onPickEmailAddressAction(Uri uri) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(uri);
        }

        public final void onSelectAContact(boolean z) {
            if (MultiSelecetDialogContactActivity.this.mSaveMenuItem != null) {
                MultiSelecetDialogContactActivity.this.mSaveMenuItem.setEnabled(z);
                a.a(MultiSelecetDialogContactActivity.this.getApplicationContext(), MultiSelecetDialogContactActivity.this.mSaveMenuItem);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity$OverrideDialogFragment.class */
    public static class OverrideDialogFragment extends DialogFragment {
        public static final int CAN_NOT_EDIT_SIM = 3;
        public static final int OVERRIDE_CONFIRM = 0;
        public static final int OVERRIDE_CONFIRM_ADDITION_NUMBER = 1;
        public static final int OVERRIDE_OR_NEW = 2;
        private static com.android.contacts.list.u fragment = null;
        private static Boolean isOpen = false;
        private static Uri mUri = null;
        private Dialog mDialog = null;

        private Dialog cannotUpdateSimContact() {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setMessage(getString(2131755344)).setPositiveButton(getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
            return builder.show();
        }

        public static DialogFragment newInstance(int i, com.android.contacts.list.u uVar, Uri uri) {
            OverrideDialogFragment overrideDialogFragment = new OverrideDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("tag", i);
            overrideDialogFragment.setArguments(bundle);
            fragment = uVar;
            isOpen = true;
            mUri = uri;
            return overrideDialogFragment;
        }

        private Dialog overrideChoose(final SimCardContact simCardContact) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            final CharSequence[] charSequenceArr = {simCardContact.c, simCardContact.g};
            final long[] jArr = {simCardContact.k, simCardContact.n};
            builder.setTitle(getString(2131755936)).setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                    final long j = jArr[i];
                    com.android.contacts.list.u unused = OverrideDialogFragment.fragment;
                    com.android.contacts.list.u.a((Boolean) true);
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(OverrideDialogFragment.this.getActivity());
                    builder2.setMessage(String.format(OverrideDialogFragment.this.getString(2131755935), charSequenceArr[i])).setTitle(OverrideDialogFragment.this.getString(2131755936)).setPositiveButton(OverrideDialogFragment.this.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.3.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i2) {
                            dialogInterface2.cancel();
                            com.android.contacts.list.u unused2 = OverrideDialogFragment.fragment;
                            com.android.contacts.list.u.a((Boolean) false);
                            OverrideTask overrideTask = new OverrideTask(OverrideDialogFragment.fragment.getActivity());
                            overrideTask.setUri(OverrideDialogFragment.mUri);
                            overrideTask.setSimIndex(simCardContact.i);
                            overrideTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j), Long.valueOf(simCardContact.h));
                        }
                    }).setNegativeButton(OverrideDialogFragment.this.getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.3.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface2, int i2) {
                            dialogInterface2.cancel();
                        }
                    });
                    builder2.show();
                }
            });
            return builder.show();
        }

        private Dialog overrideConfirm(String str, final long j, final int i, final long j2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setMessage(String.format(getString(2131755935), str)).setTitle(getString(2131755936)).setPositiveButton(getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.cancel();
                    com.android.contacts.list.u unused = OverrideDialogFragment.fragment;
                    com.android.contacts.list.u.a((Boolean) false);
                    OverrideTask overrideTask = new OverrideTask(OverrideDialogFragment.fragment.getActivity());
                    overrideTask.setUri(OverrideDialogFragment.mUri);
                    overrideTask.setSimIndex(i);
                    overrideTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j), Long.valueOf(j2));
                }
            }).setNegativeButton(getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.cancel();
                }
            });
            return builder.show();
        }

        private Dialog overrideOrNew(final String str, final long j, final int i, final long j2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle(getString(2131755934)).setItems(new CharSequence[]{String.format(getString(2131755937), str), getString(2131755878)}, new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (i2 == 0) {
                        dialogInterface.cancel();
                        com.android.contacts.list.u unused = OverrideDialogFragment.fragment;
                        com.android.contacts.list.u.a((Boolean) true);
                        AlertDialog.Builder builder2 = new AlertDialog.Builder(OverrideDialogFragment.this.getActivity());
                        builder2.setMessage(String.format(OverrideDialogFragment.this.getString(2131755935), str)).setTitle(OverrideDialogFragment.this.getString(2131755936)).setPositiveButton(OverrideDialogFragment.this.getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.2.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface2, int i3) {
                                dialogInterface2.cancel();
                                com.android.contacts.list.u unused2 = OverrideDialogFragment.fragment;
                                com.android.contacts.list.u.a((Boolean) false);
                                OverrideTask overrideTask = new OverrideTask(OverrideDialogFragment.fragment.getActivity());
                                overrideTask.setUri(OverrideDialogFragment.mUri);
                                overrideTask.setSimIndex(i);
                                overrideTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, Long.valueOf(j), Long.valueOf(j2));
                            }
                        }).setNegativeButton(OverrideDialogFragment.this.getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.OverrideDialogFragment.2.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface2, int i3) {
                                dialogInterface2.cancel();
                            }
                        });
                        builder2.show();
                    } else if (i2 == 1) {
                        dialogInterface.cancel();
                        OverrideDialogFragment.fragment.a(j2);
                    }
                }
            });
            return builder.show();
        }

        @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            super.onCancel(dialogInterface);
            com.android.contacts.list.u.a((Boolean) false);
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            String str;
            long j;
            int i = getArguments().getInt("tag");
            SimCardContact simCardContact = fragment.d;
            switch (i) {
                case 0:
                    if (simCardContact != null) {
                        this.mDialog = overrideConfirm(simCardContact.c, simCardContact.k, simCardContact.i, simCardContact.h);
                        break;
                    }
                    break;
                case 1:
                    if (simCardContact != null) {
                        this.mDialog = overrideChoose(simCardContact);
                        break;
                    }
                    break;
                case 2:
                    if (simCardContact != null) {
                        if (!TextUtils.isEmpty(simCardContact.c)) {
                            str = simCardContact.c;
                            j = simCardContact.k;
                        } else {
                            str = simCardContact.g;
                            j = simCardContact.n;
                        }
                        this.mDialog = overrideOrNew(str, j, simCardContact.i, simCardContact.h);
                        break;
                    }
                    break;
                case 3:
                    this.mDialog = cannotUpdateSimContact();
                    break;
            }
            return this.mDialog;
        }

        @Override // android.app.DialogFragment, android.app.Fragment
        public void onStart() {
            super.onStart();
            if (!isOpen.booleanValue()) {
                this.mDialog.dismiss();
            }
        }

        @Override // android.app.DialogFragment, android.app.Fragment
        public void onStop() {
            super.onStop();
            isOpen = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity$OverrideTask.class */
    public static class OverrideTask extends AsyncTask<Long, Void, Integer> {
        private Activity mContext;
        com.android.contacts.simcardmanage.d mgr;
        String phoneNumber = null;
        private Uri mUri = null;
        private int mSimIndex = 1;

        public OverrideTask(Activity activity) {
            this.mContext = activity;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Integer doInBackground(Long... lArr) {
            int valueOf;
            if (NecessaryPermissionDenyActivity.startPermissionActivity(this.mContext)) {
                valueOf = 0;
            } else {
                SimCardContact b2 = this.mgr.b(this.mSimIndex, lArr[1].longValue());
                if (b2.k == lArr[0].longValue()) {
                    b2.b(this.phoneNumber, lArr[0].longValue());
                } else if (b2.n == lArr[0].longValue()) {
                    b2.d(this.phoneNumber, lArr[0].longValue());
                }
                if (TextUtils.isEmpty(b2.f2134b)) {
                    b2.a(this.phoneNumber, b2.j);
                }
                valueOf = Integer.valueOf(this.mgr.a(b2, b2));
            }
            return valueOf;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Integer num) {
            super.onPostExecute((OverrideTask) num);
            if (num.intValue() > 0) {
                ImplicitIntentsUtil.startActivityInApp(this.mContext, new Intent("android.intent.action.VIEW", this.mUri));
            } else {
                Log.d("ContactPickerFragment", "Save Fail: " + num);
            }
            MultiSelecetDialogContactActivity.dismissOverrideProcessDialog();
            this.mContext.finish();
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            WeakReference unused = MultiSelecetDialogContactActivity.sProgressDialog = new WeakReference(ProgressDialog.show(this.mContext, null, this.mContext.getText(2131756075)));
            this.mgr = com.android.contacts.simcardmanage.e.a(this.mContext);
            Bundle extras = this.mContext.getIntent().getExtras();
            if (extras != null && extras.size() > 0) {
                this.phoneNumber = extras.getString("phone");
            }
        }

        public void setSimIndex(int i) {
            this.mSimIndex = i;
        }

        public void setUri(Uri uri) {
            this.mUri = uri;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity$PhoneNumberPickerActionListener.class */
    public final class PhoneNumberPickerActionListener implements ba {
        private PhoneNumberPickerActionListener() {
        }

        @Override // com.android.contacts.list.ba
        public final void onHomeInActionBarSelected() {
            MultiSelecetDialogContactActivity.this.onBackPressed();
        }

        public final void onPickPhoneNumberAction(Uri uri) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(uri);
        }

        @Override // com.android.contacts.list.ba
        public final void onPickPhoneNumberAction(Uri uri, String str) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(uri);
        }

        public final void onSelectAContact(boolean z) {
            if (MultiSelecetDialogContactActivity.this.mSaveMenuItem != null) {
                MultiSelecetDialogContactActivity.this.mSaveMenuItem.setEnabled(z);
                a.a(MultiSelecetDialogContactActivity.this.getApplicationContext(), MultiSelecetDialogContactActivity.this.mSaveMenuItem);
            }
        }

        @Override // com.android.contacts.list.ba
        public final void onShortcutIntentCreated(Intent intent) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/activities/MultiSelecetDialogContactActivity$PostalAddressPickerActionListener.class */
    public final class PostalAddressPickerActionListener implements bb {
        private PostalAddressPickerActionListener() {
        }

        @Override // com.android.contacts.list.bb
        public final void onPickPostalAddressAction(Uri uri) {
            MultiSelecetDialogContactActivity.this.returnPickerResult(uri);
        }

        public final void onSelectAContact(boolean z) {
            if (MultiSelecetDialogContactActivity.this.mSaveMenuItem != null) {
                MultiSelecetDialogContactActivity.this.mSaveMenuItem.setEnabled(z);
                a.a(MultiSelecetDialogContactActivity.this.getApplicationContext(), MultiSelecetDialogContactActivity.this.mSaveMenuItem);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addExistingMembers(List<GroupEditorFragment.Member> list) {
        if (this.mListFragment != null) {
            ((com.android.contacts.list.f) this.mListFragment).a(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindGlobalGroupMetaData(Cursor cursor) {
        if (!cursor.moveToFirst()) {
            Log.i(TAG, "Group not found with URI: " + this.mGroupUri + " Closing activity now.");
            return;
        }
        this.mGroupName = cursor.getString(1);
        ((com.android.contacts.list.f) this.mListFragment).a(this.mGroupName);
        ((com.android.contacts.list.f) this.mListFragment).a(this.mGroupUri, this.mGroupId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindGroupMetaData(Cursor cursor) {
        if (!cursor.moveToFirst()) {
            Log.i(TAG, "Group not found with URI: " + this.mGroupUri + " Closing activity now.");
            return;
        }
        this.mGroupName = cursor.getString(4);
        this.mAccountName = cursor.getString(0);
        this.mAccountType = cursor.getString(1);
        ((com.android.contacts.list.f) this.mListFragment).f1822b = this.mAccountName;
        ((com.android.contacts.list.f) this.mListFragment).c = this.mAccountType;
        ((com.android.contacts.list.f) this.mListFragment).a(this.mGroupName);
        ((com.android.contacts.list.f) this.mListFragment).a(this.mGroupUri, this.mGroupId);
    }

    private ArrayList<Long> changLongArrayToList(long[] jArr) {
        ArrayList<Long> arrayList = new ArrayList<>();
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long[] changeLongListToArray(ArrayList<Long> arrayList) {
        long[] jArr = new long[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        return jArr;
    }

    private void configureActivityTitle() {
        if (this.mRequest.d != null) {
            setTitle(this.mRequest.d);
            return;
        }
        switch (this.mRequest.f1765b) {
            case 60:
                setTitle(2131755441);
                return;
            case 70:
                setTitle(2131755441);
                return;
            case 80:
                setTitle(2131755441);
                return;
            case 90:
                setTitle(2131755441);
                return;
            case 100:
                setTitle(2131755441);
                return;
            case 105:
                setTitle(2131755441);
                return;
            case 110:
                setTitle(2131756126);
                return;
            case 120:
                setTitle(2131755256);
                return;
            case 130:
                setTitle(2131755853);
                return;
            case 170:
                setTitle(2131755806);
                return;
            case 180:
                setTitle(2131755466);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dismissOverrideProcessDialog() {
        ProgressDialog progressDialog = sProgressDialog == null ? null : sProgressDialog.get();
        if (progressDialog != null) {
            try {
                progressDialog.dismiss();
            } catch (Exception e) {
                Log.i(TAG, e.getMessage().toString());
            }
        }
        sProgressDialog = null;
    }

    private void prepareSearchViewAndActionBar() {
        if (this.mRequest.f1765b == 100 || this.mRequest.h) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setDisplayHomeAsUpEnabled(true);
                actionBar.setDisplayShowTitleEnabled(true);
                return;
            }
            return;
        }
        ActionBar actionBar2 = getActionBar();
        if (actionBar2 != null) {
            View findViewById = findViewById(2131297252);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            actionBar2.setDisplayShowHomeEnabled(false);
            actionBar2.setDisplayHomeAsUpEnabled(true);
            actionBar2.setDisplayShowTitleEnabled(true);
            actionBar2.setDisplayShowCustomEnabled(true);
        }
        this.mSearchView = (SearchView) findViewById(2131297252);
        this.mSearchView.setQueryHint(getString(2131755688));
        this.mSearchView.setOnQueryTextListener(this);
        setSearchView();
        this.mSearchView.setVisibility(0);
        this.mSearchView.setFocusable(false);
    }

    private void setSearchView() {
        this.mSearchView.setVisibility(0);
        this.mSearchView.setFocusable(false);
        this.mSearchView.setBackgroundColor(getResources().getColor(2131034116));
    }

    private void showInputMethod(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null && !inputMethodManager.showSoftInput(view, 0)) {
            Log.w(TAG, "Failed to show soft input method.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCreateNewContactActivity() {
        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        intent.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
        startActivityAndForwardResult(intent);
    }

    public void configureListFragment() {
        switch (this.mActionCode) {
            case 60:
                com.android.contacts.list.u uVar = new com.android.contacts.list.u();
                uVar.h(this.mRequest.g);
                this.mListFragment = uVar;
                break;
            case 70:
                this.mListFragment = new com.android.contacts.list.u();
                break;
            case 80:
                com.android.contacts.list.u uVar2 = new com.android.contacts.list.u();
                uVar2.f1880b = true;
                uVar2.q = 0;
                this.mListFragment = uVar2;
                break;
            case 90:
                this.mListFragment = new bd();
                break;
            case 100:
                this.mListFragment = new bf();
                break;
            case 105:
                this.mListFragment = new ao();
                break;
            case 110:
                com.android.contacts.list.u uVar3 = new com.android.contacts.list.u();
                uVar3.c = true;
                this.mListFragment = uVar3;
                break;
            case 120:
                bd bdVar = new bd();
                bdVar.f1798b = "android.intent.action.CALL";
                this.mListFragment = bdVar;
                break;
            case 130:
                bd bdVar2 = new bd();
                bdVar2.f1798b = "android.intent.action.SENDTO";
                this.mListFragment = bdVar2;
                break;
            case 150:
                this.mListFragment = new bd();
                break;
            case 170:
                aq aqVar = new aq();
                aqVar.h(this.mRequest.g);
                this.mListFragment = aqVar;
                break;
            case 180:
                com.android.contacts.list.f fVar = new com.android.contacts.list.f();
                fVar.h(this.mRequest.g);
                fVar.e = true;
                this.mListFragment = fVar;
                break;
            default:
                throw new IllegalStateException("Invalid action code: " + this.mActionCode);
        }
        this.mListFragment.s = this.mRequest.h;
        this.mListFragment.w = 20;
        getFragmentManager().beginTransaction().replace(2131296998, this.mListFragment).commitAllowingStateLoss();
    }

    public long[] getFavoriteListToDisplay() {
        return this.mFavoriteListToDisplay;
    }

    public boolean isFromFavoriteEditActivity() {
        return this.mIsFromFavoriteEditActivity;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 0 && i2 == -1) {
            if (intent != null) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        if (fragment instanceof com.android.contacts.list.p) {
            this.mListFragment = (com.android.contacts.list.p) fragment;
            setupActionListener();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.mListFragment instanceof com.android.contacts.list.f) {
            ((com.android.contacts.list.f) this.mListFragment).h = this.mCallerFragment;
            ((com.android.contacts.list.f) this.mListFragment).a(false, this.mGroupUri);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
    }

    @Override // android.widget.SearchView.OnCloseListener
    public boolean onClose() {
        if (TextUtils.isEmpty(this.mSearchView.getQuery())) {
            return true;
        }
        this.mSearchView.setQuery(null, true);
        return true;
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        b bVar = this.mListFragment.x;
        return bVar != null ? bVar.a() : super.onContextItemSelected(menuItem);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            if ("saveCompleted".equals(getIntent().getAction())) {
                finish();
                return;
            }
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                this.mFavoriteListToDisplay = extras.getLongArray(FavoriteEditorActivity.KEY_BACKUP_FAVORITE_TO_DISPLAY);
                this.mIsFromFavoriteEditActivity = extras.getBoolean("fromFavoriteEditActivity");
            }
            if (extras != null && !TextUtils.isEmpty(extras.getString("group_uri"))) {
                this.mGroupUri = Uri.parse(extras.getString("group_uri"));
                this.mGroupId = this.mGroupUri != null ? ContentUris.parseId(this.mGroupUri) : 0L;
            }
            this.mCallerFragment = getIntent().getStringExtra("CallerFragment");
            if (bundle != null) {
                this.mActionCode = bundle.getInt(KEY_ACTION_CODE);
                if (!TextUtils.isEmpty(bundle.getString("group_uri"))) {
                    this.mGroupUri = Uri.parse(extras.getString("group_uri"));
                    this.mGroupId = this.mGroupUri != null ? ContentUris.parseId(this.mGroupUri) : 0L;
                    this.mExistingMembersArray = bundle.getLongArray(KEY_BACKUP_MEMBERS_TO_DISPLAY);
                    this.mAccountName = bundle.getString(KEY_ACCOUNT_NAME);
                    this.mAccountType = bundle.getString(KEY_ACCOUNT_TYPE);
                    this.mGroupName = bundle.getString(KEY_GROUP_NAME);
                    if (this.mListFragment != null && (this.mListFragment instanceof com.android.contacts.list.f)) {
                        ((com.android.contacts.list.f) this.mListFragment).d = bundle;
                        ((com.android.contacts.list.f) this.mListFragment).e = true;
                        ((com.android.contacts.list.f) this.mListFragment).f1822b = this.mAccountName;
                        ((com.android.contacts.list.f) this.mListFragment).c = this.mAccountType;
                        ((com.android.contacts.list.f) this.mListFragment).a(this.mGroupUri, this.mGroupId);
                    }
                }
                this.isDoneEnable = bundle.getBoolean(KEY_IS_DONE_ENABLE, false);
            }
            this.mRequest = this.mIntentResolver.a(getIntent());
            if (!this.mRequest.f1764a) {
                setResult(0);
                finish();
                return;
            }
            Intent intent = this.mRequest.c;
            if (intent != null) {
                ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
                finish();
                return;
            }
            configureActivityTitle();
            this.mIsCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || this.mIsCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
            this.mIsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            setContentView(2131427555);
            if (this.mActionCode != this.mRequest.f1765b) {
                this.mActionCode = this.mRequest.f1765b;
                configureListFragment();
            }
            prepareSearchViewAndActionBar();
            try {
                ImageView imageView = (ImageView) this.mSearchView.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
                LinearLayout linearLayout = (LinearLayout) this.mSearchView.findViewById(getResources().getIdentifier("android:id/search_plate", null, null));
                LinearLayout linearLayout2 = (LinearLayout) this.mSearchView.findViewById(getResources().getIdentifier("android:id/submit_area", null, null));
                LinearLayout linearLayout3 = (LinearLayout) this.mSearchView.findViewById(getResources().getIdentifier("android:id/search_edit_frame", null, null));
                if (imageView != null) {
                    ((ViewGroup.MarginLayoutParams) imageView.getLayoutParams()).setMargins(0, 0, 0, 0);
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.activities.MultiSelecetDialogContactActivity.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (MultiSelecetDialogContactActivity.this.mSearchView != null) {
                                EditText editText = (EditText) MultiSelecetDialogContactActivity.this.mSearchView.findViewById(MultiSelecetDialogContactActivity.this.getResources().getIdentifier("android:id/search_src_text", null, null));
                                if (editText != null) {
                                    editText.setFocusable(true);
                                    editText.requestFocus();
                                    ((InputMethodManager) MultiSelecetDialogContactActivity.this.getSystemService("input_method")).showSoftInput(editText, 1);
                                }
                            }
                        }
                    });
                    imageView.requestLayout();
                }
                if (linearLayout2 != null) {
                    linearLayout2.setBackground(new ColorDrawable(0));
                }
                if (linearLayout != null) {
                    linearLayout.setBackground(new ColorDrawable(0));
                }
                if (linearLayout3 != null) {
                    linearLayout3.setBackground(getResources().getDrawable(2131165914));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                    layoutParams.gravity = 16;
                    layoutParams.setMargins((int) getResources().getDimension(2131099965), 0, (int) getResources().getDimension(2131099965), 0);
                    linearLayout3.setLayoutParams(layoutParams);
                }
            } catch (Exception e) {
                Log.d(TAG, "searchview resource exception: " + e.toString());
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492894, menu);
        this.mSaveMenuItem = menu.findItem(2131296616);
        if (this.mSaveMenuItem != null) {
            this.mSaveMenuItem.setEnabled(Boolean.valueOf(((this.mListFragment == null || !(this.mListFragment instanceof com.android.contacts.list.f)) ? 0 : ((com.android.contacts.list.f) this.mListFragment).g) > 0).booleanValue());
            a.a(this, this.mSaveMenuItem);
            if (this.mListFragment != null && (this.mListFragment instanceof aq)) {
                this.mSaveMenuItem.setEnabled(this.isDoneEnable);
                a.a(this, this.mSaveMenuItem);
            }
        }
        MenuItem findItem = menu.findItem(2131296844);
        if (findItem == null) {
            return true;
        }
        a.a(this, findItem);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.p, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MemoryUtils.fixInputMethodManagerLeak(this);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        switch (view.getId()) {
            case 2131297252:
                if (z) {
                    showInputMethod(this.mSearchView.findFocus());
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.mListFragment != null && (this.mListFragment instanceof com.android.contacts.list.f) && "saveCompleted".equals(intent.getAction())) {
            ((com.android.contacts.list.f) this.mListFragment).a(true, intent.getData());
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                setResult(0);
                finish();
                z = true;
                break;
            case 2131296616:
                if (this.mListFragment instanceof aq) {
                    aq aqVar = (aq) this.mListFragment;
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                    Iterator<Map.Entry<Uri, Integer>> it = ((ap) aqVar.t).e.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<Uri, Integer> next = it.next();
                        if (next.getValue().intValue() == 1) {
                            arrayList.add(next.getKey());
                        }
                        it.remove();
                    }
                    Intent intent = new Intent();
                    intent.putParcelableArrayListExtra("uri_array", arrayList);
                    aqVar.getActivity().setResult(-1, intent);
                    aqVar.getActivity().finish();
                } else if ((this.mListFragment instanceof com.android.contacts.list.f) && f.a((com.android.contacts.list.f) this.mListFragment)) {
                    ((com.android.contacts.list.f) this.mListFragment).d();
                }
                z = true;
                break;
            case 2131296844:
                setResult(0);
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null && this.mSearchView != null) {
            inputMethodManager.hideSoftInputFromWindow(this.mSearchView.getWindowToken(), 0);
        }
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        this.mListFragment.a(str, true);
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (this.mSearchView == null) {
            return true;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.mSearchView.getWindowToken(), 0);
        }
        this.mSearchView.clearFocus();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onResume() {
        if (this.mListFragment != null && (this.mListFragment instanceof com.android.contacts.list.f)) {
            ((com.android.contacts.list.f) this.mListFragment).a(this.mGroupName);
            if (this.mExistingMembersArray != null) {
                ((com.android.contacts.list.f) this.mListFragment).b(changLongArrayToList(this.mExistingMembersArray));
            }
        }
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(KEY_ACTION_CODE, this.mActionCode);
        if (this.mListFragment instanceof com.android.contacts.list.f) {
            bundle.putString("group_uri", this.mGroupUri.toString());
            com.android.contacts.list.e eVar = (com.android.contacts.list.e) ((com.android.contacts.list.f) this.mListFragment).t;
            ArrayList<String> arrayList = new ArrayList<>();
            for (Map.Entry<Uri, Integer> entry : eVar.g.entrySet()) {
                Uri key = entry.getKey();
                if (entry.getValue().intValue() == 1) {
                    arrayList.add(key.toString());
                }
            }
            bundle.putStringArrayList("mapAsusAllMemberList", arrayList);
            bundle.putLongArray(KEY_BACKUP_MEMBERS_TO_DISPLAY, this.mExistingMembersArray);
            bundle.putString(KEY_ACCOUNT_NAME, this.mAccountName);
            bundle.putString(KEY_ACCOUNT_TYPE, this.mAccountType);
            bundle.putString(KEY_GROUP_NAME, this.mGroupName);
            bundle.putInt("to_add_count", ((com.android.contacts.list.f) this.mListFragment).g);
        } else if (this.mListFragment instanceof aq) {
            bundle.putBoolean(KEY_IS_DONE_ENABLE, this.isDoneEnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.activities.TransactionSafeActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (!(this.mListFragment instanceof com.android.contacts.list.f)) {
            return;
        }
        if (!this.mIsAsusDevice) {
            getLoaderManager().initLoader(1, null, this.mGroupMetaDataLoaderListener);
        } else {
            getLoaderManager().initLoader(1, null, this.mAsusGroupMetaDataLoaderListener);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        dismissOverrideProcessDialog();
    }

    public void returnPickerResult(Intent intent) {
        intent.setFlags(1);
        setResult(-1, intent);
        finish();
    }

    public void returnPickerResult(Uri uri) {
        Intent intent = new Intent();
        if (this.mActionCode == 150) {
            Parcelable[] parcelableArrayExtra = getIntent().getParcelableArrayExtra("com.android.contacts.extra.PHONE_URIS");
            Parcelable[] parcelableArr = new Parcelable[(parcelableArrayExtra != null ? parcelableArrayExtra.length : 0) + 1];
            if (parcelableArrayExtra != null) {
                int length = parcelableArrayExtra.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    parcelableArr[i2] = parcelableArrayExtra[i];
                    i++;
                    i2++;
                }
            }
            parcelableArr[parcelableArr.length - 1] = uri;
            intent.putExtra("com.android.contacts.extra.PHONE_URIS", parcelableArr);
        }
        intent.setData(uri);
        returnPickerResult(intent);
    }

    public void setupActionListener() {
        if (this.mListFragment instanceof com.android.contacts.list.u) {
            ((com.android.contacts.list.u) this.mListFragment).f1879a = new ContactPickerActionListener();
        } else if (this.mListFragment instanceof bd) {
            ((bd) this.mListFragment).f1797a = new PhoneNumberPickerActionListener();
        } else if (this.mListFragment instanceof bf) {
            ((bf) this.mListFragment).f1801a = new PostalAddressPickerActionListener();
        } else if (this.mListFragment instanceof ao) {
            ((ao) this.mListFragment).f1786a = new EmailAddressPickerActionListener();
        } else if (this.mListFragment instanceof aq) {
            ((aq) this.mListFragment).f1787a = new ContactPickerActionListener();
        } else if (this.mListFragment instanceof com.android.contacts.list.f) {
            ((com.android.contacts.list.f) this.mListFragment).f1821a = new ContactPickerActionListener();
        } else {
            throw new IllegalStateException("Unsupported list fragment type: " + this.mListFragment);
        }
    }

    public void startActivityAndForwardResult(Intent intent) {
        intent.setFlags(VCardConfig.FLAG_REFRAIN_PHONE_NUMBER_FORMATTING);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        ImplicitIntentsUtil.startActivityInAppIfPossible(this, intent);
        finish();
    }
}
