package com.android.contacts.ezmode;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.PeopleActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.calllog.t;
import com.android.contacts.dialpad.AdditionalButtonFragment;
import com.android.contacts.k;
import com.android.contacts.list.af;
import com.android.contacts.list.bh;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzDetailContactActivity.class */
public class EzDetailContactActivity extends Activity implements View.OnClickListener, bh.b {

    /* renamed from: a  reason: collision with root package name */
    public static String f1237a = "0";

    /* renamed from: b  reason: collision with root package name */
    private Uri f1238b;
    private TextView c;
    private TextView d;
    private String e;
    private String f;
    private Uri g;
    private ImageView h;
    private Uri i;
    private int k;
    private ActionBar p;
    private View q;
    private View r;
    private boolean s;
    private ContentResolver u;
    private bh v;
    private bh.c w;
    private af x;
    private MenuItem y;
    private k j = null;
    private String l = BuildConfig.FLAVOR;
    private String m = BuildConfig.FLAVOR;
    private long n = 0;
    private long o = 0;
    private a t = new a(new Handler());
    private ContentObserver z = new ContentObserver(new Handler()) { // from class: com.android.contacts.ezmode.EzDetailContactActivity.1
        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            Log.d("EzDetailContactActivity", "selfChange = " + z);
            EzDetailContactActivity.this.getContentResolver().unregisterContentObserver(EzDetailContactActivity.this.z);
            EzDetailContactActivity.this.finish();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzDetailContactActivity$a.class */
    private final class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            EzDetailContactActivity.this.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzDetailContactActivity$b.class */
    public final class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        boolean f1241a;

        private b() {
            this.f1241a = false;
        }

        /* synthetic */ b(EzDetailContactActivity ezDetailContactActivity, byte b2) {
            this();
        }

        private Void a() {
            Throwable th;
            Cursor cursor;
            String[] strArr;
            Cursor cursor2;
            String[] strArr2;
            boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
            try {
                try {
                    if (EzDetailContactActivity.this.f1238b != null) {
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            strArr2 = new String[7];
                            strArr2[0] = "_id";
                            strArr2[1] = "display_name";
                            strArr2[2] = CoverUtils.CoverData.COVER_URI;
                            strArr2[3] = "lookup";
                            strArr2[4] = ContactDetailCallogActivity.EXTRA_CONTACT_ID;
                            strArr2[5] = PhotoSelectionActivity.PHOTO_URI;
                            strArr2[6] = SpeedDialList.Columns.ISSIM;
                        } else {
                            strArr2 = new String[6];
                            strArr2[0] = "_id";
                            strArr2[1] = "display_name";
                            strArr2[2] = CoverUtils.CoverData.COVER_URI;
                            strArr2[3] = "lookup";
                            strArr2[4] = ContactDetailCallogActivity.EXTRA_CONTACT_ID;
                            strArr2[5] = PhotoSelectionActivity.PHOTO_URI;
                        }
                        Cursor query = EzDetailContactActivity.this.u.query(EzDetailContactActivity.this.f1238b, strArr2, null, null, null);
                        cursor2 = query;
                        if (query != null) {
                            cursor2 = query;
                            if (query.moveToFirst()) {
                                EzDetailContactActivity.this.o = query.getLong(0);
                                EzDetailContactActivity.this.l = query.getString(1);
                                EzDetailContactActivity.f1237a = query.getString(2);
                                EzDetailContactActivity.this.m = query.getString(3);
                                EzDetailContactActivity.this.n = query.getLong(4);
                                String string = query.getString(5);
                                if (IsAsusDevice) {
                                    EzDetailContactActivity.this.k = query.getInt(6);
                                } else {
                                    EzDetailContactActivity.this.k = e.a(EzDetailContactActivity.this.n, EzDetailContactActivity.this.getBaseContext());
                                }
                                EzDetailContactActivity.this.i = string == null ? null : Uri.parse(string);
                                this.f1241a = true;
                                cursor2 = query;
                            }
                        }
                    } else {
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            strArr = new String[7];
                            strArr[0] = "_id";
                            strArr[1] = "display_name";
                            strArr[2] = CoverUtils.CoverData.COVER_URI;
                            strArr[3] = "lookup";
                            strArr[4] = ContactDetailCallogActivity.EXTRA_CONTACT_ID;
                            strArr[5] = PhotoSelectionActivity.PHOTO_URI;
                            strArr[6] = SpeedDialList.Columns.ISSIM;
                        } else {
                            strArr = new String[6];
                            strArr[0] = "_id";
                            strArr[1] = "display_name";
                            strArr[2] = CoverUtils.CoverData.COVER_URI;
                            strArr[3] = "lookup";
                            strArr[4] = ContactDetailCallogActivity.EXTRA_CONTACT_ID;
                            strArr[5] = PhotoSelectionActivity.PHOTO_URI;
                        }
                        EzDetailContactActivity.this.n = ContentUris.parseId(EzDetailContactActivity.this.g);
                        Cursor query2 = EzDetailContactActivity.this.u.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, strArr, "contact_id = " + EzDetailContactActivity.this.n, null, null);
                        cursor2 = query2;
                        if (query2 != null) {
                            cursor2 = query2;
                            if (query2.moveToFirst()) {
                                while (true) {
                                    EzDetailContactActivity.this.o = query2.getLong(0);
                                    EzDetailContactActivity.this.l = query2.getString(1);
                                    EzDetailContactActivity.f1237a = query2.getString(2);
                                    EzDetailContactActivity.this.m = query2.getString(3);
                                    EzDetailContactActivity.this.n = query2.getLong(4);
                                    String string2 = query2.getString(5);
                                    if (IsAsusDevice) {
                                        EzDetailContactActivity.this.k = query2.getInt(6);
                                    } else {
                                        EzDetailContactActivity.this.k = e.a(EzDetailContactActivity.this.n, EzDetailContactActivity.this.getBaseContext());
                                    }
                                    EzDetailContactActivity.this.i = string2 == null ? null : Uri.parse(string2);
                                    if (!PhoneNumberUtils.compare(EzDetailContactActivity.this.f, EzDetailContactActivity.f1237a)) {
                                        if (!query2.moveToNext()) {
                                            cursor2 = query2;
                                            break;
                                        }
                                    } else {
                                        this.f1241a = true;
                                        cursor2 = query2;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (cursor2 == null) {
                        return null;
                    }
                    cursor2.close();
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (0 != 0) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r7) {
            Log.d("EzDetailContactActivity", "Contact detail loaded: " + this.f1241a);
            if (!this.f1241a) {
                EzDetailContactActivity.this.finish();
                return;
            }
            View findViewById = EzDetailContactActivity.this.findViewById(2131297016);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
            if (EzDetailContactActivity.this.y != null) {
                if (EzDetailContactActivity.this.k <= 0 || e.a(EzDetailContactActivity.this).a(EzDetailContactActivity.this.k)) {
                    EzDetailContactActivity.this.y.setVisible(true);
                } else {
                    EzDetailContactActivity.this.y.setVisible(false);
                }
            }
            EzDetailContactActivity.this.c.setText(EzDetailContactActivity.this.l);
            EzDetailContactActivity.this.d.setText(EzDetailContactActivity.f1237a);
            EzDetailContactActivity.this.p.setTitle(EzDetailContactActivity.this.l);
            EzDetailContactActivity.this.h.setTag(8);
            EzDetailContactActivity.this.h.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (EzDetailContactActivity.this.k == 2) {
                EzDetailContactActivity.this.j.a(EzDetailContactActivity.this.h, -2L, 6);
            } else if (EzDetailContactActivity.this.k == 1) {
                EzDetailContactActivity.this.j.a(EzDetailContactActivity.this.h, -1L, 6);
            } else {
                EzDetailContactActivity.this.j.a(EzDetailContactActivity.this.h, EzDetailContactActivity.this.i, -1, 6);
            }
            if (!new t(EzDetailContactActivity.this).b(EzDetailContactActivity.f1237a)) {
                EzDetailContactActivity.this.r.setVisibility(8);
            } else {
                EzDetailContactActivity.this.r.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        boolean z2;
        bh.c c = this.v.c();
        Log.d("EzDetailContactActivity", "updateViewConfiguration: forceUpdate = " + z + " status = " + c.f1810a);
        if (z || this.w == null || c.f1810a != this.w.f1810a) {
            this.w = c;
            View findViewById = findViewById(2131296603);
            View findViewById2 = findViewById(2131297016);
            if (CompatUtils.isMarshmallowCompatible()) {
                z2 = true;
                if (this.w.f1810a != 0) {
                    z2 = this.w.f1810a == 2;
                }
            } else {
                z2 = true;
                if (this.w.f1810a != 0) {
                    z2 = true;
                    if (this.w.f1810a != 4) {
                        z2 = false;
                    }
                }
            }
            if (z2) {
                if (findViewById != null) {
                    findViewById.setVisibility(8);
                }
                new b(this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                return;
            }
            if (this.x == null) {
                this.x = new af();
                getFragmentManager().beginTransaction().replace(2131296602, this.x).commitAllowingStateLoss();
            }
            if (findViewById != null) {
                this.x.a(this.w);
                findViewById.setVisibility(0);
            }
            if (findViewById2 != null) {
                findViewById2.setVisibility(8);
            }
            if (this.y != null) {
                this.y.setVisible(false);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131296823) {
            this.s = PhoneCapabilityTester.isSmsIntentRegistered(getBaseContext());
            Intent intent = this.s ? new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_SMSTO, f1237a, null)) : null;
            if (intent != null) {
                try {
                    ImplicitIntentsUtil.startActivityOutsideApp(this, intent);
                    Log.d("EzDetailContactActivity", "send smsIntent");
                } catch (ActivityNotFoundException e) {
                    Log.e("EzDetailContactActivity", "No activity found for intent: " + intent);
                } catch (Exception e2) {
                    Log.e("EzDetailContactActivity", e2.toString());
                }
            } else {
                Log.d("EzDetailContactActivity", "smsIntent = null");
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            boolean a2 = h.a(getApplicationContext());
            if (PhoneCapabilityTester.isUsingTwoPanes(this) || !a2) {
                Intent intent = getIntent();
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.VIEW");
                intent2.setDataAndType(intent.getData(), intent.getType());
                if (shouldUpRecreateTask(intent2)) {
                    intent2.setFlags(268468224);
                } else {
                    intent2.setFlags(645922816);
                }
                intent2.setClass(this, PeopleActivity.class);
                ImplicitIntentsUtil.startActivityInApp(this, intent2);
                finish();
                return;
            }
            setContentView(2131427550);
            this.v = bh.a((Context) this);
            this.v.a((bh.b) this);
            this.p = getActionBar();
            this.p.setDisplayHomeAsUpEnabled(true);
            if (getIntent().getParcelableExtra("INDEX_PHONE_URI") != null) {
                this.f1238b = (Uri) getIntent().getParcelableExtra("INDEX_PHONE_URI");
            }
            this.f = getIntent().getStringExtra("PHONE_NUMBER");
            this.g = getIntent().getData();
            this.e = getIntent().getExtras().getString("INDEX_CONTACT_DETAIL_TITLE");
            this.c = (TextView) findViewById(2131296808);
            this.d = (TextView) findViewById(2131296809);
            this.h = (ImageView) findViewById(2131296807);
            this.j = k.a(this);
            this.p.setTitle(this.e);
            this.q = findViewById(2131296823);
            this.q.setOnClickListener(this);
            this.r = findViewById(2131296824);
            this.u = getContentResolver();
            this.u.registerContentObserver(ContactsContract.Data.CONTENT_URI, true, this.t);
            View findViewById = findViewById(2131297016);
            if (findViewById != null) {
                findViewById.setVisibility(8);
            }
            if (PhoneCapabilityTester.IsAsusDevice()) {
                getContentResolver().registerContentObserver(Settings.System.getUriFor("asus_easy_launcher"), true, this.z);
            }
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(2, (Activity) this, "Ez_Contact_Detail", true);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131492889, menu);
        this.y = menu.findItem(2131296814);
        if (this.w != null && this.w.f1810a == 0) {
            if (this.k <= 0 || e.a(this).a(this.k)) {
                this.y.setVisible(true);
            } else {
                this.y.setVisible(false);
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        getContentResolver().unregisterContentObserver(this.z);
        super.onDestroy();
        if (this.u != null) {
            this.u.unregisterContentObserver(this.t);
        }
        if (this.v != null) {
            this.v.b(this);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131296814:
                Intent intent = new Intent("android.intent.action.EZ_EDIT_CONTACT", ContactsContract.Contacts.getLookupUri(this.n, this.m));
                intent.putExtra("PHONE_ID", this.o);
                ImplicitIntentsUtil.startActivityInApp(this, intent);
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
        AdditionalButtonFragment.v = false;
        this.v.b();
    }

    @Override // com.android.contacts.list.bh.b
    public void onProviderStatusChange() {
        a(false);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        AdditionalButtonFragment.v = true;
        this.v.a();
        a(true);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        new b(this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
