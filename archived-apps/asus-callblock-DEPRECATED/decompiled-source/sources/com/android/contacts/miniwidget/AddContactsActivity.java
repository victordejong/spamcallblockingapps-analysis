package com.android.contacts.miniwidget;

import android.app.ActionBar;
import android.app.Activity;
import android.appwidget.AppWidgetManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RemoteViews;
import android.widget.SearchView;
import android.widget.TextView;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AddContactsActivity.class */
public class AddContactsActivity extends Activity implements View.OnClickListener, AdapterView.OnItemClickListener, SearchView.OnQueryTextListener {
    private static ArrayList<a> d;
    private static b w;

    /* renamed from: a  reason: collision with root package name */
    String[] f1907a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<Integer> f1908b;
    private ListView e;
    private View f;
    private d g;
    private HashMap<Long, a> h;
    private boolean j;
    private com.android.contacts.miniwidget.c k;
    private ArrayList<String> l;
    private TextView n;
    private TextView o;
    private TextView p;
    private View t;
    private View u;
    private boolean x;
    private int i = -1;
    public char[] c = " ".toCharArray();
    private boolean m = false;
    private boolean q = true;
    private ArrayList<String> r = new ArrayList<>();
    private int s = 0;
    private boolean v = false;
    private MenuItem y = null;
    private int z = 0;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AddContactsActivity$a.class */
    public final class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        long f1911a;

        /* renamed from: b  reason: collision with root package name */
        long f1912b;
        g e;
        String f;
        int g;
        String h;
        String i;
        int m;
        Bitmap n;
        private boolean q;
        private String s;
        private String t;
        int o = -1;
        boolean c = false;
        private boolean r = true;
        boolean d = true;
        boolean j = false;
        ImageView k = null;
        ImageView l = null;

        public a(long j, long j2, boolean z, String str, String str2, String str3, String str4, int i) {
            this.m = 0;
            this.n = null;
            this.f1911a = j;
            this.f1912b = j2;
            this.q = z;
            this.h = str;
            this.s = str2;
            this.i = str3;
            this.t = str4;
            this.e = new g(AddContactsActivity.this, -1, (String) null);
            this.m = i;
            this.n = null;
        }

        public final String a() {
            return this.s == null ? AddContactsActivity.this.getResources().getString(2131756043) : this.s;
        }

        public final void a(Bitmap bitmap) {
            if (this.k != null) {
                this.k.setImageBitmap(bitmap);
                if (this.n == null) {
                    this.n = bitmap;
                }
            }
        }

        public final void a(String str) {
            if (str == null || str.equals(BuildConfig.FLAVOR)) {
                this.f = " ";
            } else {
                this.f = str;
            }
        }

        public final String b() {
            return this.t == null ? "unKnow" : this.t;
        }

        public final boolean c() {
            return !this.c && ((!AddContactsActivity.this.j && this.r) || (this.d && AddContactsActivity.this.j));
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AddContactsActivity$b.class */
    public final class b extends Thread {
        private b() {
        }

        /* synthetic */ b(AddContactsActivity addContactsActivity, byte b2) {
            this();
        }

        private boolean a(long j) {
            boolean z;
            if (AddContactsActivity.this.l != null) {
                Iterator it = AddContactsActivity.this.l.iterator();
                while (it.hasNext()) {
                    if (((String) it.next()).equals(String.valueOf(j))) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            return z;
        }

        /* JADX WARN: Removed duplicated region for block: B:186:0x0542  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 1662
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.miniwidget.AddContactsActivity.b.run():void");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AddContactsActivity$c.class */
    final class c extends AsyncTask<String, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        AddContactsActivity f1914a;

        /* renamed from: b  reason: collision with root package name */
        String f1915b;

        public c(AddContactsActivity addContactsActivity) {
            this.f1914a = addContactsActivity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            Throwable th;
            Cursor cursor;
            this.f1915b = strArr[0];
            Uri build = !TextUtils.isEmpty(this.f1915b) ? ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon().appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true").build().buildUpon().appendEncodedPath(Uri.encode(this.f1915b)).appendQueryParameter("directory", "0").build() : ContactsContract.Contacts.CONTENT_URI.buildUpon().appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true").build().buildUpon().appendQueryParameter("directory", "0").build();
            if (AddContactsActivity.w == null || AddContactsActivity.w.isAlive() || AddContactsActivity.d == null || AddContactsActivity.this.h == null) {
                return null;
            }
            Iterator it = AddContactsActivity.d.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                if (aVar != null) {
                    aVar.d = false;
                }
            }
            try {
                cursor = this.f1914a.getContentResolver().query(build, null, BuildConfig.FLAVOR, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            do {
                                a aVar2 = (a) AddContactsActivity.this.h.get(new Long(cursor.getLong(cursor.getColumnIndex("_id"))));
                                if (aVar2 != null) {
                                    aVar2.d = true;
                                }
                            } while (cursor.moveToNext());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor == null) {
                    return null;
                }
                cursor.close();
                return null;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            if (AddContactsActivity.this.isFinishing()) {
                return;
            }
            if (AddContactsActivity.this.e == null || this.f1915b.length() != AddContactsActivity.this.c.length) {
                Log.d("AddContactsActivity", "query finish not load");
                return;
            }
            Log.d("AddContactsActivity", "query finish mContactListView.invalidateViews()");
            AddContactsActivity.this.e.invalidateViews();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AddContactsActivity$d.class */
    public final class d extends Handler {
        public d() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            switch (message.what) {
                case 0:
                    AddContactsActivity.this.k = new com.android.contacts.miniwidget.c(AddContactsActivity.this, AddContactsActivity.d);
                    if (AddContactsActivity.this.r != null && AddContactsActivity.this.r.size() > 0) {
                        Iterator it = AddContactsActivity.this.r.iterator();
                        while (it.hasNext()) {
                            String str = (String) it.next();
                            synchronized (AddContactsActivity.this.k.f1965b) {
                                AddContactsActivity.this.k.f1964a.put(Long.valueOf(Long.parseLong(str)), true);
                            }
                        }
                    }
                    Iterator it2 = AddContactsActivity.d.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z = false;
                        } else if (!((a) it2.next()).c) {
                            z = true;
                        }
                    }
                    if (!z) {
                        AddContactsActivity.this.e.setVisibility(8);
                        AddContactsActivity.this.n.setVisibility(0);
                        AddContactsActivity.this.n.setText(2131755904);
                        AddContactsActivity.this.t.setVisibility(8);
                        AddContactsActivity.this.u.setVisibility(8);
                        if (AddContactsActivity.this.f != null) {
                            AddContactsActivity.this.f.setVisibility(8);
                            return;
                        }
                        return;
                    } else if (AddContactsActivity.this.e != null) {
                        AddContactsActivity.this.e.setVisibility(0);
                        AddContactsActivity.this.n.setVisibility(8);
                        AddContactsActivity.this.e.setAdapter((ListAdapter) AddContactsActivity.this.k);
                        AddContactsActivity.this.e.setOnItemClickListener(AddContactsActivity.this);
                        if (AddContactsActivity.this.f != null) {
                            AddContactsActivity.this.f.setVisibility(0);
                            return;
                        }
                        return;
                    } else {
                        return;
                    }
                case 1:
                    Bundle data = message.getData();
                    int i = data.getInt("position");
                    long j = data.getLong("contactId");
                    Bitmap bitmap = (Bitmap) data.getParcelable("photo");
                    if (!AddContactsActivity.w.isAlive()) {
                        if (AddContactsActivity.d == null || AddContactsActivity.d.size() < i || ((a) AddContactsActivity.d.get(i)).k == null) {
                            if (com.android.contacts.b.f607a.booleanValue()) {
                                Log.d("AddContactsActivity", "contactId = " + j);
                            }
                        } else if (com.android.contacts.b.f607a.booleanValue()) {
                            Log.d("AddContactsActivity", "contactId = " + j + " tag = " + ((a) AddContactsActivity.d.get(i)).k.getTag());
                        }
                        if (AddContactsActivity.d != null && AddContactsActivity.d.size() > 0 && ((a) AddContactsActivity.d.get(i)).k != null && AddContactsActivity.d.size() >= i && ((a) AddContactsActivity.d.get(i)).k.getTag().equals(Long.valueOf(j))) {
                            ((a) AddContactsActivity.d.get(i)).a(bitmap);
                            return;
                        }
                        return;
                    }
                    return;
                case 2:
                    Bundle data2 = message.getData();
                    int i2 = data2.getInt("position");
                    Bitmap bitmap2 = (Bitmap) data2.getParcelable("photo");
                    if (AddContactsActivity.d.size() > 0) {
                        a aVar = (a) AddContactsActivity.d.get(i2);
                        if (aVar.l != null) {
                            aVar.l.setImageBitmap(bitmap2);
                            if (aVar.n == null) {
                                aVar.n = bitmap2;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/AddContactsActivity$e.class */
    public final class e extends AsyncTask<Uri, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        AddContactsActivity f1917a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1918b = true;

        public e(AddContactsActivity addContactsActivity) {
            this.f1917a = addContactsActivity;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Uri[] uriArr) {
            if (!AddContactsActivity.w.isAlive()) {
                AddContactsActivity.a(AddContactsActivity.this, this.f1918b);
            }
            AppWidgetManager.getInstance(this.f1917a).updateAppWidget(AddContactsActivity.this.i, new RemoteViews(AddContactsActivity.this.getPackageName(), 2131427606));
            Intent intent = new Intent();
            intent.putExtra("appWidgetId", AddContactsActivity.this.i);
            AddContactsActivity.this.setResult(-1, intent);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f1917a.a(AddContactsActivity.this.i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f1, code lost:
        r14 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.android.contacts.miniwidget.AddContactsActivity r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.miniwidget.AddContactsActivity.a(com.android.contacts.miniwidget.AddContactsActivity, boolean):void");
    }

    private void c() {
        if (this.q) {
            if (this.i == -1) {
                this.i = e();
            }
            if (this.i > 0) {
                AppWidgetManager.getInstance(this).updateAppWidget(this.i, new RemoteViews(getPackageName(), 2131427606));
                Intent intent = new Intent();
                intent.putExtra("appWidgetId", this.i);
                setResult(-1, intent);
                a(this.i);
            }
        }
        finish();
    }

    private void d() {
        if (this.m) {
            new e(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[0]);
            return;
        }
        Intent intent = new Intent();
        ArrayList<String> arrayList = new ArrayList<>();
        if (!(this.k == null || this.k.f1964a == null || this.k.f1964a.size() <= 0)) {
            if (this.k.f1964a.containsValue(true)) {
                synchronized (this.k.f1965b) {
                    for (Map.Entry<Long, Boolean> entry : this.k.f1964a.entrySet()) {
                        if (entry.getValue().booleanValue()) {
                            arrayList.add(String.valueOf(entry.getKey()));
                        }
                    }
                }
            }
            intent.putStringArrayListExtra("addToWidget", arrayList);
        }
        setResult(-1, intent);
        super.finish();
    }

    private int e() {
        Intent intent = getIntent();
        int i = -1;
        if (intent != null) {
            i = -1;
            if (intent.getExtras() != null) {
                i = intent.getExtras().getInt("appWidgetId", 0);
            }
        }
        Log.d("AddContactsActivity", "New widget id is " + i);
        return i;
    }

    static /* synthetic */ int m(AddContactsActivity addContactsActivity) {
        int i = addContactsActivity.s;
        addContactsActivity.s = i + 1;
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.contacts.miniwidget.AddContactsActivity$1] */
    public final void a(final int i) {
        ContactsWidget.a(getApplicationContext(), AppWidgetManager.getInstance(getApplicationContext()), new int[]{i});
        if (getResources().getBoolean(2130968593)) {
            new Thread() { // from class: com.android.contacts.miniwidget.AddContactsActivity.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    ContactsWidget.a(AddContactsActivity.this.getApplicationContext(), AppWidgetManager.getInstance(AddContactsActivity.this.getApplicationContext()), new int[]{i});
                }
            }.start();
        }
        super.finish();
    }

    public final void a(Message message) {
        if (this.g != null) {
            this.g.sendMessage(message);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296352) {
            d();
            this.o.setEnabled(false);
            this.p.setEnabled(false);
        }
        if (id == 2131296357) {
            c();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            Intent intent = getIntent();
            if (intent != null) {
                this.l = intent.getStringArrayListExtra("existedInWidget");
            }
            this.x = getResources().getBoolean(2130968593);
            if (!this.x) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            if (bundle != null) {
                this.r = bundle.getStringArrayList("mCheckedId");
                boolean z = bundle.getBoolean("configuration");
                if ((this.x && !z) || (!this.x && z)) {
                    finish();
                }
            }
            Intent intent2 = getIntent();
            if (intent2 != null && intent2.getAction() != null && intent2.getAction().toString().equals("android.appwidget.action.APPWIDGET_CONFIGURE")) {
                this.i = e();
                this.q = true;
            } else if (intent2 != null) {
                Bundle extras = intent2.getExtras();
                if (extras != null) {
                    this.i = extras.getInt("id");
                    this.q = false;
                    Log.d("AddContactsActivity", "AP Call widget id=" + this.i);
                } else {
                    Log.d("AddContactsActivity", "extras null");
                }
            } else {
                Log.d("AddContactsActivity", "getIntent null");
            }
            if (this.i > 0 || this.q) {
                this.m = true;
            }
            setContentView(2131427342);
            this.e = (ListView) findViewById(2131296570);
            this.n = (TextView) findViewById(2131297116);
            this.o = (TextView) findViewById(2131296352);
            this.p = (TextView) findViewById(2131296357);
            this.t = findViewById(2131296750);
            this.u = findViewById(2131296752);
            this.f = findViewById(2131296571);
            this.t.setVisibility(0);
            this.u.setVisibility(8);
            if (this.o != null) {
                this.o.setOnClickListener(this);
            }
            if (this.p != null) {
                this.p.setOnClickListener(this);
            }
            if (this.e != null) {
                this.e.setDividerHeight(0);
                this.e.setSelector(17170445);
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setTitle(2131755033);
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayHomeAsUpEnabled(false);
            }
            SearchView searchView = (SearchView) findViewById(2131297252);
            searchView.setOnQueryTextListener(this);
            searchView.setQuery(BuildConfig.FLAVOR, true);
            searchView.setFocusable(false);
            searchView.setBackgroundColor(getResources().getColor(2131034116));
            this.j = false;
            this.h = new HashMap<>();
            this.g = new d();
            b bVar = new b(this, (byte) 0);
            w = bVar;
            bVar.start();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492865, menu);
        this.y = menu.findItem(2131297048);
        if (this.y != null) {
            this.y.setEnabled(false);
            com.android.contacts.skin.a.a(this, this.y);
        }
        MenuItem findItem = menu.findItem(2131297041);
        if (findItem == null) {
            return true;
        }
        com.android.contacts.skin.a.a(this, findItem);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.k != null) {
            a aVar = d.get(i);
            synchronized (this.k.f1965b) {
                if (this.k.f1964a.get(Long.valueOf(aVar.f1911a)).booleanValue()) {
                    this.k.f1964a.put(Long.valueOf(aVar.f1911a), false);
                    this.z--;
                } else {
                    this.k.f1964a.put(Long.valueOf(aVar.f1911a), true);
                    this.z++;
                }
            }
            if (this.e != null) {
                this.e.invalidateViews();
            }
        }
        if (this.y != null) {
            this.y.setEnabled(Boolean.valueOf(this.z > 0).booleanValue());
            com.android.contacts.skin.a.a(this, this.y);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        synchronized (this) {
            switch (menuItem.getItemId()) {
                case 2131297041:
                    c();
                    break;
                case 2131297048:
                    d();
                    menuItem.setEnabled(false);
                    break;
                default:
                    z = super.onOptionsItemSelected(menuItem);
                    break;
            }
        }
        return z;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.t.setVisibility(8);
            this.u.setVisibility(0);
            this.j = true;
        } else {
            this.j = false;
            this.t.setVisibility(0);
            this.u.setVisibility(8);
        }
        new c(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        this.c = str.toUpperCase().toCharArray();
        return false;
    }

    @Override // android.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        return false;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!(this.k == null || this.k.f1964a == null || this.k.f1964a.size() <= 0)) {
            ArrayList<String> arrayList = new ArrayList<>();
            synchronized (this.k.f1965b) {
                for (Map.Entry<Long, Boolean> entry : this.k.f1964a.entrySet()) {
                    if (entry.getValue().booleanValue()) {
                        arrayList.add(String.valueOf(entry.getKey()));
                    }
                }
            }
            if (arrayList.size() > 0) {
                bundle.putStringArrayList("mCheckedId", arrayList);
            }
        }
        bundle.putBoolean("configuration", this.x);
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (w.isAlive()) {
            Log.d("AddContactsActivity", "mThread.interrupt()");
            w.interrupt();
        }
        Log.d("AddContactsActivity", "AddContactsActivity, onStop");
        super.onStop();
    }
}
