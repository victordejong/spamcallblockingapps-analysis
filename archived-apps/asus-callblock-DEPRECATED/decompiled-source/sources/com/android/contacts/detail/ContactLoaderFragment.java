package com.android.contacts.detail;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.graphics.drawable.Drawable;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.Telephony;
import android.util.Log;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.android.contacts.AsusContactsMultipleSelectionActivity;
import com.android.contacts.ContactSaveService;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.b;
import com.android.contacts.editor.g;
import com.android.contacts.list.bi;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.c;
import com.android.contacts.model.d;
import com.android.contacts.model.e;
import com.android.contacts.t;
import com.android.contacts.util.AccountsListAdapter;
import com.android.contacts.util.AsusCopySingleContactAyncTask;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.StreamItemEntry;
import com.asus.a.a;
import com.asus.contacts.b.f;
import com.asus.contacts.b.h;
import com.asus.contacts.interactions.SetSmsRingtoneActivity;
import com.google.a.b.ae;
import com.google.a.b.m;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactLoaderFragment.class */
public class ContactLoaderFragment extends Fragment implements ContactDetailActivity.FragmentKeyListener, g.a, f.a {
    private static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final String KEY_CONTACT_URI = "contactUri";
    private static final String LOADER_ARG_CONTACT_URI = "contactUri";
    private static final int LOADER_DETAILS = 1;
    private static final int REQUEST_CODE_PICK_RINGTONE = 1;
    private static final int REQUEST_CODE_PICK_SMS_RINGTONE = 2;
    private static final String TAG = ContactLoaderFragment.class.getSimpleName();
    private c mContactData;
    private Context mContext;
    private String mCustomRingtone;
    private ContactLoaderFragment mFragment;
    private ContactLoaderFragmentListener mListener;
    private Uri mLookupUri;
    private boolean mOptionsMenuCanCreateShortcut;
    private boolean mOptionsMenuEditable;
    private boolean mOptionsMenuOptions;
    private boolean mOptionsMenuShareable;
    private boolean mSendToVoicemailState;
    private String mSmsRingtone;
    private boolean mHasOptionMenu = true;
    private boolean isSupportSmsRingtone = false;
    private boolean isTwoPane = false;
    private final LoaderManager.LoaderCallbacks<c> mDetailLoaderListener = new LoaderManager.LoaderCallbacks<c>() { // from class: com.android.contacts.detail.ContactLoaderFragment.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public Loader<c> onCreateLoader(int i, Bundle bundle) {
            return new d(ContactLoaderFragment.this.mContext, (Uri) bundle.getParcelable("contactUri"), bundle.getInt("filter_from"));
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLoadFinished(android.content.Loader<com.android.contacts.model.c> r9, com.android.contacts.model.c r10) {
            /*
                Method dump skipped, instructions count: 377
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.ContactLoaderFragment.AnonymousClass1.onLoadFinished(android.content.Loader, com.android.contacts.model.c):void");
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<c> loader) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener.class */
    public interface ContactLoaderFragmentListener {
        void onContactNotFound();

        void onDeleteRequested(Uri uri);

        void onDetailsLoaded(c cVar);

        void onEditRequested(Uri uri);

        void onLinkRequested(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactLoaderFragment$QueryCouponAsyncTask.class */
    public class QueryCouponAsyncTask extends AsyncTask<Void, Integer, Void> {
        QueryCouponAsyncTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Void... voidArr) {
            Loader loader;
            if (!ContactLoaderFragment.this.isFragmentAdded() || (loader = ContactLoaderFragment.this.mFragment.getLoader(1)) == null) {
                return null;
            }
            d dVar = (d) loader;
            c cVar = ContactLoaderFragment.this.mContactData;
            List<a.e> a2 = a.a(dVar.getContext(), d.a(cVar));
            if (cVar == null || a2 == null) {
                return null;
            }
            LongSparseArray longSparseArray = new LongSparseArray();
            ArrayList arrayList = new ArrayList();
            try {
                int i = 0;
                for (a.e eVar : a2) {
                    StreamItemEntry streamItemEntry = new StreamItemEntry(true, i, eVar.f2359a, eVar.f2360b, eVar.c, eVar.d);
                    longSparseArray.put(streamItemEntry.getId(), streamItemEntry);
                    arrayList.add(streamItemEntry);
                    i++;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (cVar == null) {
                return null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((StreamItemEntry) it.next()).decodeHtml(dVar.getContext());
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (d.f2027b) {
                Log.d(d.f2026a, "Decoded HTML for " + arrayList.size() + " items, took " + (currentTimeMillis2 - currentTimeMillis) + " ms");
            }
            boolean z = a2 != null;
            try {
                synchronized (cVar.H) {
                    cVar.G = z;
                }
                Collections.sort(arrayList);
                cVar.p = m.a((Collection) new m.a().b(arrayList.iterator()).f3704a);
                return null;
            } catch (Exception e2) {
                Log.d(d.f2026a, "Failed to load coupon info...");
                e2.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r4) {
            if (ContactLoaderFragment.this.mListener != null && ContactLoaderFragment.this.isFragmentAdded()) {
                if (ContactLoaderFragment.this.mContactData == null) {
                    ContactLoaderFragment.this.mListener.onContactNotFound();
                } else {
                    ContactLoaderFragment.this.mListener.onDetailsLoaded(ContactLoaderFragment.this.mContactData);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactLoaderFragment$checkSmsRingtoneTask.class */
    public class checkSmsRingtoneTask extends AsyncTask<Long, Void, String> {
        checkSmsRingtoneTask() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00d0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.Long... r8) {
            /*
                Method dump skipped, instructions count: 234
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.detail.ContactLoaderFragment.checkSmsRingtoneTask.doInBackground(java.lang.Long[]):java.lang.String");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(String str) {
            super.onPostExecute((checkSmsRingtoneTask) str);
            ContactLoaderFragment.this.mSmsRingtone = str;
        }
    }

    private void createLauncherShortcutWithContact() {
        final Activity activity = getActivity();
        new bi(activity, new bi.c() { // from class: com.android.contacts.detail.ContactLoaderFragment.2
            @Override // com.android.contacts.list.bi.c
            public void onShortcutIntentCreated(Uri uri, Intent intent) {
                intent.setAction(ContactLoaderFragment.ACTION_INSTALL_SHORTCUT);
                activity.sendBroadcast(intent);
                Toast.makeText(activity, 2131755474, 0).show();
            }
        }).a(this.mLookupUri);
    }

    private void doPickRingtone() {
        Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
        intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
        intent.putExtra("android.intent.extra.ringtone.TYPE", 1);
        intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", false);
        intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", this.mCustomRingtone != null ? Uri.parse(this.mCustomRingtone) : RingtoneManager.getDefaultUri(1));
        startActivityForResult(intent, 1);
    }

    private void handleRingtonePicked(Uri uri) {
        if (uri == null || RingtoneManager.isDefault(uri)) {
            this.mCustomRingtone = null;
        } else {
            this.mCustomRingtone = uri.toString();
        }
        this.mContext.startService(ContactSaveService.a(this.mContext, this.mLookupUri, this.mCustomRingtone));
    }

    private void handleSmsRingtonePicked(String str) {
        Log.i(TAG, "pickedUri = " + str);
        this.mSmsRingtone = str;
        this.mContext.startService(ContactSaveService.b(this.mContext, this.mLookupUri, this.mSmsRingtone));
    }

    private boolean isContactLinkable() {
        boolean z = false;
        if (this.mContactData != null) {
            if (this.mContactData.e()) {
                z = false;
            } else {
                z = false;
                if (!isSimCardContact()) {
                    z = false;
                    if (!this.mContactData.B) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    private boolean isSimCardContact() {
        boolean z;
        if (this.mContactData != null && !this.mContactData.e()) {
            ae<e> b2 = this.mContactData.o.iterator();
            while (true) {
                if (!b2.hasNext()) {
                    z = false;
                    break;
                }
                e next = b2.next();
                String d = next.d();
                String c = next.c();
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    if (b.a.c.equals(c)) {
                        z = true;
                        break;
                    }
                } else if (b.a.d.equals(d)) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    public boolean getLoadStreamItems() {
        d dVar = (d) getLoaderManager().getLoader(1);
        return dVar != null && dVar.e;
    }

    public Loader getLoader(int i) {
        return getLoaderManager().getLoader(i);
    }

    @Override // com.android.contacts.activities.ContactDetailActivity.FragmentKeyListener
    public boolean handleKeyDown(int i) {
        boolean z;
        switch (i) {
            case 67:
                if (this.mListener != null) {
                    this.mListener.onDeleteRequested(this.mLookupUri);
                }
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    public boolean hasInvitableAccounts() {
        return this.mContactData != null && this.mContactData.r.size() > 0;
    }

    public boolean isContactCanCreateShortcut() {
        return this.mContactData != null && !this.mContactData.B && !this.mContactData.e();
    }

    public boolean isContactEditable() {
        return this.mContactData != null && !this.mContactData.e();
    }

    public boolean isContactOptionsChangeEnabled() {
        return this.mContactData != null && !this.mContactData.e() && PhoneCapabilityTester.isPhone(this.mContext);
    }

    public boolean isContactShareable() {
        return this.mContactData != null && !this.mContactData.e();
    }

    public boolean isFragmentAdded() {
        return isAdded();
    }

    public boolean isHasPhoneModule() {
        return PhoneCapabilityTester.isPhone(this.mContext);
    }

    public boolean isInVipGroup() {
        boolean z;
        Long valueOf;
        if (this.mContactData != null) {
            m<t> mVar = this.mContactData.x;
            m<e> mVar2 = this.mContactData.o;
            z = false;
            if (mVar2 != null) {
                if (mVar != null) {
                    Iterator<e> it = mVar2.iterator();
                    boolean z2 = false;
                    while (true) {
                        z = z2;
                        if (!it.hasNext()) {
                            break;
                        }
                        Iterator<com.android.contacts.model.a.a> it2 = it.next().h().iterator();
                        boolean z3 = z2;
                        while (true) {
                            z2 = z3;
                            if (it2.hasNext()) {
                                com.android.contacts.model.a.a next = it2.next();
                                if (next.b() != null && (next instanceof com.android.contacts.model.a.e) && (valueOf = Long.valueOf(((com.android.contacts.model.a.e) next).k())) != null) {
                                    Iterator<t> it3 = mVar.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            t next2 = it3.next();
                                            if (next2.f2170a == valueOf.longValue() && "VIP".equals(next2.f2171b)) {
                                                z3 = true;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    z = false;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public boolean isOptionsMenuChanged() {
        return (this.mOptionsMenuOptions == isContactOptionsChangeEnabled() && this.mOptionsMenuEditable == isContactEditable() && this.mOptionsMenuShareable == isContactShareable() && this.mOptionsMenuCanCreateShortcut == isContactCanCreateShortcut() && this.isSupportSmsRingtone == h.a(getActivity())) ? false : true;
    }

    public void loadUri(Uri uri) {
        if (!com.google.a.a.c.a(uri, this.mLookupUri)) {
            this.mLookupUri = uri;
            if (this.mLookupUri == null) {
                getLoaderManager().destroyLoader(1);
                this.mContactData = null;
                if (this.mListener != null) {
                    this.mListener.onDetailsLoaded(this.mContactData);
                }
            } else if (getActivity() != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("contactUri", this.mLookupUri);
                getLoaderManager().restartLoader(1, bundle, this.mDetailLoaderListener);
            }
        }
    }

    public void loadUri(Uri uri, int i) {
        if (!com.google.a.a.c.a(uri, this.mLookupUri)) {
            this.mLookupUri = uri;
            if (this.mLookupUri == null) {
                getLoaderManager().destroyLoader(1);
                this.mContactData = null;
                if (this.mListener != null) {
                    this.mListener.onDetailsLoaded(this.mContactData);
                }
            } else if (getActivity() != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("contactUri", this.mLookupUri);
                if (i == 1) {
                    bundle.putInt("filter_from", i);
                }
                getLoaderManager().restartLoader(1, bundle, this.mDetailLoaderListener);
            }
        }
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountChosen(AccountWithDataSet accountWithDataSet, Bundle bundle) {
        if (!com.asus.contacts.b.d.a(accountWithDataSet)) {
            FragmentManager fragmentManager = getFragmentManager();
            boolean g = this.mContactData.g();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("selected_account", accountWithDataSet);
            bundle2.putBoolean("is_from_contact_detail", true);
            bundle2.putBoolean("is_sim", g);
            f a2 = f.a(bundle2);
            a2.f2592a = this;
            a2.show(fragmentManager, (String) null);
            return;
        }
        new AsusCopySingleContactAyncTask(accountWithDataSet, (Context) getActivity(), this.mContactData.f, this.mContactData.g(), true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // com.android.contacts.editor.g.a
    public void onAccountSelectorCancelled() {
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            switch (i) {
                case 1:
                    handleRingtonePicked((Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI"));
                    return;
                case 2:
                    handleSmsRingtonePicked(intent.getStringExtra("ringtone_uri"));
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.mContext = activity;
    }

    @Override // com.asus.contacts.b.f.a
    public void onClickKeep(AccountWithDataSet accountWithDataSet) {
        new AsusCopySingleContactAyncTask(accountWithDataSet, (Context) getActivity(), this.mContactData, this.mContactData.g(), true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // com.asus.contacts.b.f.a
    public void onClickNotKeep(AccountWithDataSet accountWithDataSet) {
        new AsusCopySingleContactAyncTask(accountWithDataSet, (Context) getActivity(), this.mContactData, this.mContactData.g(), false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragment = this;
        if (bundle != null) {
            this.mLookupUri = (Uri) bundle.getParcelable("contactUri");
        }
        this.isTwoPane = PhoneCapabilityTester.isUsingTwoPanes(this.mContext);
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (this.mHasOptionMenu) {
            menuInflater.inflate(2131492907, menu);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        return layoutInflater.inflate(2131427465, viewGroup, false);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AsusRedPointNotificationDualPanelHelper.getInstance().clearMenuItem(1);
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131297030:
                showAddConnectionPopupWindow();
                z = true;
                break;
            case 2131297042:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Connection history", null, null);
                }
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(getActivity(), "AllContacts", "Contact_details", "Connection_history");
                Intent intent = new Intent(getActivity(), ContactDetailCallogActivity.class);
                Bundle bundle = new Bundle();
                bundle.putString(ContactDetailCallogActivity.EXTRA_NAME, this.mContactData.k);
                bundle.putLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID, this.mContactData.f);
                ArrayList<String> arrayList = new ArrayList<>();
                ContactDetailDisplayUtils.getContactPhoneNumberList(this.mContactData, arrayList);
                bundle.putStringArrayList("phone_list", arrayList);
                intent.putExtras(bundle);
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                z = true;
                break;
            case 2131297043:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Copy contact", null, null);
                }
                if (com.android.contacts.model.a.a(this.mContext).a(true).size() != 1) {
                    g.a(getFragmentManager(), this, 2131755097, AccountsListAdapter.AccountListFilter.ACCOUNTS_CONTACT_WRITABLE, null);
                    z = true;
                    break;
                } else {
                    Toast.makeText(this.mContext, getString(2131755093), 0).show();
                    z = true;
                    break;
                }
            case 2131297044:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Place on home screen", null, null);
                }
                createLauncherShortcutWithContact();
                z = true;
                break;
            case 2131297045:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Delete", null, null);
                }
                ArrayList<String> arrayList2 = new ArrayList<>();
                ContactDetailDisplayUtils.getContactPhoneNumberList(this.mContactData, arrayList2);
                com.asus.prefersim.a aVar = new com.asus.prefersim.a(7);
                aVar.f2941a = arrayList2;
                try {
                    aVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.mContext, Long.valueOf(this.mContactData.f));
                } catch (Exception e) {
                    Log.d(TAG, "Delete Prefer Sim when Contact Detail Delete Contact task error: " + e.toString());
                }
                z = true;
                if (this.mListener != null) {
                    this.mListener.onDeleteRequested(this.mLookupUri);
                    z = true;
                    break;
                }
                break;
            case 2131297049:
                if (this.mListener != null) {
                    this.mListener.onEditRequested(this.mLookupUri);
                }
                Activity activity = getActivity();
                if (activity instanceof ContactDetailActivity) {
                    ((ContactDetailActivity) activity).getContactDetailLayoutController().getContactDetailFragment().clearPreferSimHashMap();
                }
                z = false;
                break;
            case 2131297058:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Link", null, null);
                }
                z = true;
                if (this.mContactData != null) {
                    this.mListener.onLinkRequested(this.mContactData.f);
                    z = true;
                    break;
                }
                break;
            case 2131297068:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- All calls to voicemail", null, null);
                }
                this.mSendToVoicemailState = !this.mSendToVoicemailState;
                menuItem.setChecked(this.mSendToVoicemailState);
                this.mContext.startService(ContactSaveService.b(this.mContext, this.mLookupUri, this.mSendToVoicemailState));
                z = true;
                break;
            case 2131297069:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Set default SIM", null, null);
                }
                ArrayList arrayList3 = new ArrayList();
                ContactDetailDisplayUtils.getContactPhoneNumberList(this.mContactData, arrayList3);
                Activity activity2 = getActivity();
                if (!(activity2 instanceof ContactDetailActivity)) {
                    z = true;
                    if (activity2 instanceof MainDialtactsActivity) {
                        com.asus.prefersim.b.a(getFragmentManager(), arrayList3, this.mContactData.f, ((MainDialtactsActivity) activity2).getDefaultContactBrowseListFragment().E.getContactDetailFragment());
                        z = true;
                        break;
                    }
                } else {
                    com.asus.prefersim.b.a(getFragmentManager(), arrayList3, this.mContactData.f, ((ContactDetailActivity) activity2).getContactDetailLayoutController().getContactDetailFragment());
                    z = true;
                    break;
                }
                break;
            case 2131297074:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Set ringtone", null, null);
                }
                if (this.mContactData != null) {
                    doPickRingtone();
                    z = true;
                    break;
                } else {
                    z = false;
                    break;
                }
            case 2131297075:
                if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Set message notification", null, null);
                }
                if (this.mContactData != null) {
                    Intent intent2 = new Intent(getActivity(), SetSmsRingtoneActivity.class);
                    intent2.putExtra(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, 2131755847);
                    intent2.putExtra("ringtone_uri", this.mSmsRingtone);
                    startActivityForResult(intent2, 2);
                    z = true;
                    break;
                } else {
                    z = false;
                    break;
                }
                break;
            case 2131297077:
                if (!PhoneCapabilityTester.IsAsusDevice()) {
                    if (this.mContactData != null) {
                        Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, this.mContactData.e);
                        Intent intent3 = new Intent("android.intent.action.SEND");
                        intent3.setType("text/x-vcard");
                        intent3.putExtra("android.intent.extra.STREAM", withAppendedPath);
                        try {
                            ImplicitIntentsUtil.startActivityOutsideApp(this.mContext, Intent.createChooser(intent3, getText(2131756121)));
                            z = true;
                            break;
                        } catch (ActivityNotFoundException e2) {
                            Toast.makeText(this.mContext, 2131756119, 0).show();
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                } else {
                    if (!this.isTwoPane && PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "ContactDetail", "ContactDetail- Share contact", null, null);
                    }
                    if (!getResources().getBoolean(2130968593)) {
                        Intent intent4 = new Intent();
                        intent4.setClass(getActivity(), AsusContactsSharedEntriesFilterActivity.class);
                        intent4.setData(getActivity().getIntent().getData());
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent4);
                        z = true;
                        break;
                    } else {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(getActivity(), "AllContacts", "Settings", "Share_multiple_contacts");
                        Intent intent5 = new Intent();
                        intent5.setClass(getActivity(), AsusContactsMultipleSelectionActivity.class);
                        intent5.setAction("send_contacts");
                        startActivityForResult(intent5, 2);
                        z = true;
                        break;
                    }
                }
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131297049);
        if (findItem == null && this.mHasOptionMenu) {
            getActivity().getMenuInflater().inflate(2131492907, menu);
            MenuItem findItem2 = menu.findItem(2131297049);
            if (findItem2 != null) {
                com.android.contacts.skin.a.a(getActivity(), findItem2);
            }
        }
        if (findItem != null) {
            com.android.contacts.skin.a.a(getActivity(), findItem);
        }
        this.mOptionsMenuOptions = isContactOptionsChangeEnabled();
        if (this.mContactData == null || !this.mContactData.g()) {
            this.mOptionsMenuEditable = isContactEditable();
        } else {
            com.android.contacts.simcardmanage.e a2 = com.android.contacts.simcardmanage.e.a(this.mContext);
            this.mOptionsMenuEditable = isContactEditable() && Boolean.valueOf(a2.e(this.mContactData.h())).booleanValue() && Boolean.valueOf(a2.a(this.mContactData.h())).booleanValue();
        }
        this.isSupportSmsRingtone = h.a(getActivity());
        this.mOptionsMenuShareable = isContactShareable();
        this.mOptionsMenuCanCreateShortcut = isContactCanCreateShortcut();
        if (this.mContactData != null) {
            this.mSendToVoicemailState = this.mContactData.z;
            this.mCustomRingtone = this.mContactData.A;
        }
        MenuItem findItem3 = menu.findItem(2131297068);
        if (findItem3 != null) {
            findItem3.setChecked(this.mSendToVoicemailState);
            findItem3.setVisible(this.mOptionsMenuOptions && this.mHasOptionMenu);
        }
        MenuItem findItem4 = menu.findItem(2131297074);
        if (findItem4 != null) {
            findItem4.setVisible(this.mOptionsMenuOptions && this.mHasOptionMenu && PhoneCapabilityTester.isInOwnerMode(getActivity()));
        }
        MenuItem findItem5 = menu.findItem(2131297075);
        if (findItem5 != null) {
            findItem5.setVisible(this.mOptionsMenuOptions && this.mHasOptionMenu && this.isSupportSmsRingtone && PhoneCapabilityTester.isInOwnerMode(getActivity()));
        }
        MenuItem findItem6 = menu.findItem(2131297049);
        if (findItem6 != null) {
            findItem6.setVisible(this.mOptionsMenuEditable && this.mHasOptionMenu);
            if (!PhoneCapabilityTester.isUsingTwoPanes(this.mContext)) {
                Drawable b2 = android.support.v4.a.a.a.b(findItem6.getIcon().mutate());
                android.support.v4.a.a.a.a(b2, this.mContext.getResources().getColor(2131034181));
                findItem6.setIcon(b2);
            }
        }
        MenuItem findItem7 = menu.findItem(2131297045);
        if (findItem7 != null) {
            findItem7.setVisible(this.mOptionsMenuEditable && this.mHasOptionMenu);
        }
        MenuItem findItem8 = menu.findItem(2131297077);
        if (findItem8 != null) {
            findItem8.setTitle((!getResources().getBoolean(2130968593) || !PhoneCapabilityTester.IsAsusDevice()) ? 2131756118 : 2131756120);
            findItem8.setVisible(this.mOptionsMenuShareable && this.mHasOptionMenu);
        }
        MenuItem findItem9 = menu.findItem(2131297044);
        if (findItem9 != null) {
            findItem9.setVisible(this.mOptionsMenuCanCreateShortcut && this.mHasOptionMenu);
        }
        MenuItem findItem10 = menu.findItem(2131297042);
        if (findItem10 != null) {
            findItem10.setVisible(this.mOptionsMenuCanCreateShortcut && this.mHasOptionMenu && isHasPhoneModule());
        }
        MenuItem findItem11 = menu.findItem(2131297058);
        if (findItem11 != null) {
            findItem11.setVisible(isContactLinkable() && this.mHasOptionMenu);
        }
        MenuItem findItem12 = menu.findItem(2131297030);
        if (findItem12 != null) {
            findItem12.setVisible(hasInvitableAccounts() && this.mHasOptionMenu);
        }
        MenuItem findItem13 = menu.findItem(2131297043);
        if (findItem13 != null) {
            findItem13.setVisible(this.mOptionsMenuCanCreateShortcut && this.mHasOptionMenu);
        }
        MenuItem findItem14 = menu.findItem(2131297069);
        if (findItem14 != null) {
            if (!com.asus.prefersim.c.a(getActivity()) || this.mContactData == null) {
                findItem14.setVisible(false);
            } else {
                ArrayList arrayList = new ArrayList();
                ContactDetailDisplayUtils.getContactPhoneNumberList(this.mContactData, arrayList);
                if (arrayList.size() == 0) {
                    findItem14.setVisible(false);
                }
            }
        }
        AsusRedPointNotificationDualPanelHelper instance = AsusRedPointNotificationDualPanelHelper.getInstance();
        instance.addMenuItem(1, menu.findItem(2131297077));
        instance.addMenuItem(1, menu.findItem(2131297030));
        instance.addMenuItem(1, menu.findItem(2131297058));
        instance.addMenuItem(1, menu.findItem(2131297043));
        instance.addMenuItem(1, menu.findItem(2131297045));
        instance.addMenuItem(1, menu.findItem(2131297042));
        instance.addMenuItem(1, menu.findItem(2131297074));
        instance.addMenuItem(1, menu.findItem(2131297075));
        instance.addMenuItem(1, menu.findItem(2131297044));
        instance.addMenuItem(1, menu.findItem(2131297045));
        instance.spanningMenuItemList(getActivity(), 1);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.mLookupUri != null) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("contactUri", this.mLookupUri);
            getLoaderManager().initLoader(1, bundle, this.mDetailLoaderListener);
        }
        Log.i(TAG, "Default message is: " + Telephony.Sms.getDefaultSmsPackage(getActivity()));
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("contactUri", this.mLookupUri);
    }

    public void setHasOptionMenu(boolean z) {
        this.mHasOptionMenu = z;
        setHasOptionsMenu(z);
        getActivity().invalidateOptionsMenu();
    }

    public void setListener(ContactLoaderFragmentListener contactLoaderFragmentListener) {
        this.mListener = contactLoaderFragmentListener;
    }

    public void showAddConnectionPopupWindow() {
        Activity activity = getActivity();
        if (activity instanceof ContactDetailActivity) {
            ((ContactDetailActivity) activity).getContactDetailLayoutController().getContactDetailFragment().showPopupListWindow();
        } else if (activity instanceof MainDialtactsActivity) {
            ((MainDialtactsActivity) activity).getDefaultContactBrowseListFragment().E.getContactDetailFragment().showPopupListWindow();
        }
    }

    public void showMenu(boolean z) {
        if (this.mHasOptionMenu != z) {
            this.mHasOptionMenu = z;
            setHasOptionsMenu(true);
            getFragmentManager().invalidateOptionsMenu();
        }
    }

    public void toggleLoadStreamItems() {
        boolean z = true;
        d dVar = (d) getLoaderManager().getLoader(1);
        if (dVar.e) {
            z = false;
        }
        if (dVar.e != z) {
            dVar.e = z;
            dVar.onContentChanged();
        }
    }
}
