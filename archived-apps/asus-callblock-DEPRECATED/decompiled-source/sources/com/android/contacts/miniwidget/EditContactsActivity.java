package com.android.contacts.miniwidget;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.appwidget.AppWidgetManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.list.TouchListView;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/EditContactsActivity.class */
public class EditContactsActivity extends Activity implements AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener {
    private static Object m = new Object();
    private static b o;

    /* renamed from: a  reason: collision with root package name */
    TouchListView f1938a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<a> f1939b;
    String[] c;
    ArrayList<Integer> d;
    private c f;
    private boolean g;
    private HashMap<Long, a> h;
    private HashMap<Long, a> j;
    private ArrayList<a> k;
    private boolean p;
    private ArrayList<a> t;
    public char[] e = " ".toCharArray();
    private int i = -1;
    private boolean l = true;
    private MenuItem n = null;
    private d q = null;
    private d r = null;
    private boolean s = false;
    private TouchListView.b u = new TouchListView.b() { // from class: com.android.contacts.miniwidget.EditContactsActivity.2
        @Override // com.android.contacts.list.TouchListView.b
        public final void drop(int i, int i2) {
            a aVar = (a) EditContactsActivity.this.r.getItem(i);
            EditContactsActivity.this.r.a(i);
            d dVar = EditContactsActivity.this.r;
            dVar.f1971a.add(i2, aVar);
            dVar.notifyDataSetChanged();
            EditContactsActivity.this.s = true;
            EditContactsActivity.this.r.f1972b = false;
        }
    };
    private TouchListView.a v = new TouchListView.a() { // from class: com.android.contacts.miniwidget.EditContactsActivity.3
        @Override // com.android.contacts.list.TouchListView.a
        public final void a() {
            EditContactsActivity.this.r.f1972b = true;
        }
    };
    private TouchListView.c w = new TouchListView.c() { // from class: com.android.contacts.miniwidget.EditContactsActivity.4
        @Override // com.android.contacts.list.TouchListView.c
        public final void remove(int i) {
            EditContactsActivity.this.r.a(i);
            EditContactsActivity.this.s = true;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/EditContactsActivity$a.class */
    public final class a implements DialogInterface.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        long f1945a;

        /* renamed from: b  reason: collision with root package name */
        long f1946b;
        g d;
        ArrayList<g> e;
        AlertDialog.Builder f;
        String h;
        int i;
        String j;
        String k;
        int o;
        private boolean r;
        private String u;
        private String v;
        boolean c = false;
        private boolean s = true;
        private boolean t = true;
        int g = -1;
        boolean l = false;
        ImageView m = null;
        ImageView n = null;
        Bitmap p = null;

        public a(long j, long j2, boolean z, String str, String str2, String str3, String str4, int i) {
            this.o = 0;
            this.f1945a = j;
            this.f1946b = j2;
            this.r = z;
            this.j = str;
            this.u = str2;
            this.k = str3;
            this.v = str4;
            this.d = new g(EditContactsActivity.this, -1, (String) null);
            this.o = i;
        }

        public final String a() {
            return this.u == null ? EditContactsActivity.this.getResources().getString(2131756043) : this.u;
        }

        public final void a(int i, String str) {
            this.d = new g(EditContactsActivity.this, i, str);
        }

        public final void a(Bitmap bitmap) {
            if (this.m != null) {
                this.m.setImageBitmap(bitmap);
                if (this.p == null) {
                    this.p = bitmap;
                }
            }
        }

        public final void a(String str) {
            if (str == null || str.equals(BuildConfig.FLAVOR)) {
                this.h = " ";
            } else {
                this.h = str;
            }
        }

        public final String b() {
            return this.v == null ? "unKnow" : this.v;
        }

        public final void b(Bitmap bitmap) {
            if (this.n != null) {
                this.n.setImageBitmap(bitmap);
                if (this.p == null) {
                    this.p = bitmap;
                }
            }
        }

        public final boolean c() {
            return !this.c && ((!EditContactsActivity.this.g && this.s) || (this.t && EditContactsActivity.this.g));
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AlertDialog alertDialog = (AlertDialog) dialogInterface;
            if (this.e.size() > 0 && this.g >= 0) {
                this.e.get(this.g).c = false;
            }
            this.e.get(i).c = true;
            this.g = i;
            this.d = this.e.get(this.g);
            alertDialog.invalidateOptionsMenu();
            EditContactsActivity.this.f1938a.invalidateViews();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/EditContactsActivity$b.class */
    private final class b extends Thread {
        private b() {
        }

        /* synthetic */ b(EditContactsActivity editContactsActivity, byte b2) {
            this();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            Cursor cursor;
            Throwable th;
            if (com.android.contacts.b.f607a.booleanValue()) {
                Log.d("EditContactsActivity", "LoadContactThread#run");
            }
            EditContactsActivity.this.f1939b = new ArrayList();
            EditContactsActivity.this.k = new ArrayList();
            EditContactsActivity.this.t = new ArrayList();
            Uri build = ContactsContract.Contacts.CONTENT_URI.buildUpon().appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true").build();
            ContentResolver contentResolver = EditContactsActivity.this.getContentResolver();
            String[] strArr = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "display_name_alt", "sort_key", "starred", "times_contacted", "photo_id", "lookup", "phonetic_name", "has_phone_number", "display_name", "name_raw_contact_id", "sort_key_alt", "in_visible_group", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name", "display_name_alt", "sort_key", "starred", "times_contacted", "photo_id", "lookup", "phonetic_name", "has_phone_number", "display_name", "name_raw_contact_id", "sort_key_alt", "in_visible_group"};
            String a2 = f.a(EditContactsActivity.this);
            if (com.android.contacts.b.f607a.booleanValue()) {
                Log.d("EditContactsActivity", "sorOrder = " + a2);
            }
            try {
                cursor = contentResolver.query(build, strArr, null, null, a2);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            Bundle extras = cursor.getExtras();
                            if (extras != null) {
                                EditContactsActivity.this.c = extras.getStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES");
                                int[] intArray = extras.getIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS");
                                for (int i = 0; i < EditContactsActivity.this.c.length; i++) {
                                    if (EditContactsActivity.this.c[i] == null) {
                                        EditContactsActivity.this.c[i] = " ";
                                    }
                                }
                                EditContactsActivity.this.d = new ArrayList();
                                EditContactsActivity.this.d.add(new Integer(0));
                                for (int i2 = 0; i2 < intArray.length - 1; i2++) {
                                    EditContactsActivity.this.d.add(new Integer(((Integer) EditContactsActivity.this.d.get(i2)).intValue() + intArray[i2]));
                                }
                                int i3 = 0;
                                do {
                                    int columnIndex = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM);
                                    int i4 = columnIndex >= 0 ? cursor.getInt(columnIndex) : 0;
                                    a aVar = new a(cursor.getLong(cursor.getColumnIndex("_id")), cursor.getLong(cursor.getColumnIndex("name_raw_contact_id")), cursor.getInt(cursor.getColumnIndex("starred")) != 0, cursor.getString(cursor.getColumnIndex("sort_key")), cursor.getString(cursor.getColumnIndex("display_name")), cursor.getString(cursor.getColumnIndex("sort_key_alt")), cursor.getString(cursor.getColumnIndex("display_name_alt")), i4);
                                    a aVar2 = new a(cursor.getLong(cursor.getColumnIndex("_id")), cursor.getLong(cursor.getColumnIndex("name_raw_contact_id")), cursor.getInt(cursor.getColumnIndex("starred")) != 0, cursor.getString(cursor.getColumnIndex("sort_key")), cursor.getString(cursor.getColumnIndex("display_name")), cursor.getString(cursor.getColumnIndex("sort_key_alt")), cursor.getString(cursor.getColumnIndex("display_name_alt")), i4);
                                    int i5 = i3;
                                    if (intArray[i3] > 0) {
                                        aVar.a(EditContactsActivity.this.c[i3]);
                                        intArray[i3] = intArray[i3] - 1;
                                        aVar.i = i3;
                                        EditContactsActivity.this.f1939b.add(aVar);
                                        EditContactsActivity.this.t.add(aVar);
                                    } else {
                                        do {
                                            i3 = i5 + 1;
                                            if (intArray.length <= i3) {
                                                break;
                                            }
                                            i5 = i3;
                                        } while (intArray[i3] <= 0);
                                        aVar.a(EditContactsActivity.this.c[i3]);
                                        intArray[i3] = intArray[i3] - 1;
                                        aVar.i = i3;
                                        EditContactsActivity.this.f1939b.add(aVar);
                                        EditContactsActivity.this.t.add(aVar);
                                    }
                                    EditContactsActivity.this.h.put(new Long(aVar.f1945a), aVar);
                                    EditContactsActivity.this.j.put(new Long(aVar.f1945a), aVar2);
                                } while (cursor.moveToNext());
                                if (!(EditContactsActivity.this.c.length == 0 || EditContactsActivity.this.c[EditContactsActivity.this.c.length - 1] == null || !EditContactsActivity.this.c[EditContactsActivity.this.c.length - 1].equals(EditContactsActivity.this.getString(2131755373)))) {
                                    EditContactsActivity.this.c[EditContactsActivity.this.c.length - 1] = EditContactsActivity.this.getString(2131755374);
                                }
                            } else if (EditContactsActivity.this.c.length == 0) {
                                EditContactsActivity.this.c[EditContactsActivity.this.c.length - 1] = EditContactsActivity.this.getString(2131755374);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                    cursor = null;
                }
                try {
                    cursor = contentResolver.query(ContactsWidgetProvider.f1929a, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, "action", "data"}, "widget_id=" + EditContactsActivity.this.i, null, "contact_order ASC ");
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                int i6 = 0;
                                do {
                                    a aVar3 = (a) EditContactsActivity.this.h.get(new Long(cursor.getLong(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID))));
                                    i6 = i6;
                                    if (aVar3 != null) {
                                        aVar3.c = true;
                                        aVar3.a(cursor.getInt(cursor.getColumnIndex("action")), cursor.getString(cursor.getColumnIndex("data")));
                                        EditContactsActivity.this.t.remove(aVar3);
                                        if (i6 <= EditContactsActivity.this.t.size()) {
                                            EditContactsActivity.this.t.add(i6, aVar3);
                                        }
                                        i6++;
                                    }
                                    a aVar4 = (a) EditContactsActivity.this.j.get(new Long(cursor.getLong(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID))));
                                    if (aVar4 != null) {
                                        aVar4.c = true;
                                        aVar4.a(cursor.getInt(cursor.getColumnIndex("action")), cursor.getString(cursor.getColumnIndex("data")));
                                        EditContactsActivity.this.k.add(aVar4);
                                    }
                                } while (cursor.moveToNext());
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    Message obtain = Message.obtain();
                    obtain.what = 0;
                    EditContactsActivity.this.a(obtain);
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                cursor = null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/EditContactsActivity$c.class */
    public final class c extends Handler {
        public c() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            boolean z2 = true;
            switch (message.what) {
                case 0:
                    if (EditContactsActivity.this.n != null) {
                        EditContactsActivity.this.n.setEnabled(true);
                    }
                    Iterator it = EditContactsActivity.this.f1939b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                        } else if (((a) it.next()).c) {
                            z = true;
                        }
                    }
                    Iterator it2 = EditContactsActivity.this.f1939b.iterator();
                    while (it2.hasNext() && ((a) it2.next()).c) {
                    }
                    EditContactsActivity editContactsActivity = EditContactsActivity.this;
                    if (z) {
                        z2 = false;
                    }
                    editContactsActivity.a(z2);
                    EditContactsActivity.this.q = new d(EditContactsActivity.this, EditContactsActivity.this.f1939b);
                    EditContactsActivity.this.r = new d(EditContactsActivity.this, EditContactsActivity.this.t, EditContactsActivity.this.f1939b);
                    EditContactsActivity.this.f1938a.setAdapter((ListAdapter) EditContactsActivity.this.r);
                    EditContactsActivity.this.f1938a.setDropListener(EditContactsActivity.this.u);
                    EditContactsActivity.this.f1938a.setDragListener(EditContactsActivity.this.v);
                    EditContactsActivity.this.f1938a.setRemoveListener(EditContactsActivity.this.w);
                    EditContactsActivity.this.f1938a.setOnItemClickListener(EditContactsActivity.this);
                    return;
                case 1:
                    Bundle data = message.getData();
                    int i = data.getInt("position");
                    Bitmap bitmap = (Bitmap) data.getParcelable("photo");
                    if (EditContactsActivity.this.f1939b.size() > 0) {
                        ((a) EditContactsActivity.this.f1939b.get(i)).a(bitmap);
                        return;
                    }
                    return;
                case 2:
                    Bundle data2 = message.getData();
                    int i2 = data2.getInt("position");
                    Bitmap bitmap2 = (Bitmap) data2.getParcelable("photo");
                    if (EditContactsActivity.this.t.size() > 0) {
                        ((a) EditContactsActivity.this.t.get(i2)).b(bitmap2);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public static void a() {
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.contacts.miniwidget.EditContactsActivity$1] */
    private void a(final int i) {
        Intent intent = new Intent();
        intent.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
        intent.putExtra("widget_id", i);
        sendBroadcast(intent);
        if (getResources().getBoolean(2130968593)) {
            new Thread() { // from class: com.android.contacts.miniwidget.EditContactsActivity.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    SystemClock.sleep(1000L);
                    Intent intent2 = new Intent();
                    intent2.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                    intent2.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
                    intent2.putExtra("widget_id", i);
                    EditContactsActivity.this.sendBroadcast(intent2);
                }
            }.start();
        }
        super.finish();
    }

    private void b() {
        Log.d("EditContactsActivity", "save() start");
        ContentResolver contentResolver = getContentResolver();
        Iterator<a> it = this.f1939b.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.c) {
                if (next.l) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("select_in_edit_contacts", (Integer) 1);
                    contentValues.put("action", Integer.valueOf(next.d.f1985a));
                    contentValues.put("data", next.d.f1986b);
                    contentValues.put("sort_key_primary", next.j);
                    contentValues.put("display_name_primary", next.a());
                    contentValues.put("sort_key_alternative", next.k);
                    contentValues.put("display_name_alternative", next.b());
                    contentValues.put("widget_id", Integer.valueOf(this.i));
                    long j = next.f1945a;
                    Iterator<a> it2 = this.t.iterator();
                    int i = 0;
                    while (true) {
                        if (!it2.hasNext()) {
                            i = -1;
                            break;
                        } else if (j == it2.next().f1945a) {
                            break;
                        } else {
                            i++;
                        }
                    }
                    contentValues.put("contact_order", Integer.valueOf(i));
                    contentValues.put(SpeedDialList.Columns.ISSIM, Integer.valueOf(next.o));
                    contentResolver.update(ContactsWidgetProvider.f1929a, contentValues, "contact_id = ?", new String[]{String.valueOf(next.f1945a)});
                    Log.d("EditContactsActivity", "update: " + PhoneCapabilityTester.privacyLogCheck(next.a()) + "widget id=" + this.i);
                } else {
                    ContentValues contentValues2 = new ContentValues();
                    long j2 = next.f1945a;
                    contentValues2.put(ContactDetailCallogActivity.EXTRA_CONTACT_ID, Long.valueOf(j2));
                    contentValues2.put("name_raw_contact_id", Long.valueOf(next.f1946b));
                    contentValues2.put("select_in_edit_contacts", (Integer) 1);
                    contentValues2.put("action", Integer.valueOf(next.d.f1985a));
                    contentValues2.put("data", next.d.f1986b);
                    contentValues2.put("sort_key_primary", next.j);
                    contentValues2.put("display_name_primary", next.a());
                    contentValues2.put("sort_key_alternative", next.k);
                    contentValues2.put("display_name_alternative", next.b());
                    contentValues2.put("widget_id", Integer.valueOf(this.i));
                    Iterator<a> it3 = this.t.iterator();
                    int i2 = 0;
                    while (true) {
                        if (!it3.hasNext()) {
                            i2 = -1;
                            break;
                        } else if (j2 == it3.next().f1945a) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    contentValues2.put("contact_order", Integer.valueOf(i2));
                    contentValues2.put(SpeedDialList.Columns.ISSIM, Integer.valueOf(next.o));
                    contentResolver.insert(ContactsWidgetProvider.f1929a, contentValues2);
                    Log.d("EditContactsActivity", "insert:" + PhoneCapabilityTester.privacyLogCheck(next.a()) + "widget id=" + this.i);
                }
            }
        }
        contentResolver.delete(ContactsWidgetProvider.f1929a, "select_in_edit_contacts = 0 AND widget_id = " + this.i, null);
        Log.d("EditContactsActivity", "delete FIELD_SELECT = 0 AND widget id=" + this.i);
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put("select_in_edit_contacts", (Integer) 0);
        contentResolver.update(ContactsWidgetProvider.f1929a, contentValues3, null, null);
        Log.d("EditContactsActivity", "update FIELD_SELECT = 0");
        Log.d("EditContactsActivity", "save() stop");
    }

    private int c() {
        Intent intent = getIntent();
        int i = -1;
        if (intent != null) {
            i = -1;
            if (intent.getExtras() != null) {
                i = intent.getExtras().getInt("appWidgetId", 0);
            }
        }
        Log.d("EditContactsActivity", "New widget id is " + i);
        return i;
    }

    private boolean d() {
        boolean z;
        synchronized (m) {
            if (this.s) {
                z = true;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<a> it = this.f1939b.iterator();
                int i = 0;
                while (it.hasNext()) {
                    a next = it.next();
                    i = i;
                    if (next.c) {
                        i++;
                        arrayList.add(Long.valueOf(next.f1945a));
                    }
                }
                if (i != this.k.size()) {
                    if (com.android.contacts.b.f607a.booleanValue()) {
                        Log.d("EditContactsActivity", "hasChange() deferent size");
                    }
                    z = true;
                } else {
                    Iterator<a> it2 = this.k.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            Iterator<a> it3 = this.k.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    a next2 = it3.next();
                                    Iterator<a> it4 = this.f1939b.iterator();
                                    while (true) {
                                        if (it4.hasNext()) {
                                            a next3 = it4.next();
                                            if (next3.f1945a == next2.f1945a) {
                                                if (!next3.d.a(next2.d)) {
                                                    if (com.android.contacts.b.f607a.booleanValue()) {
                                                        Log.d("EditContactsActivity", "hasChange() ACTION change: " + next3.f1945a);
                                                    }
                                                    z = true;
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    if (com.android.contacts.b.f607a.booleanValue()) {
                                        Log.d("EditContactsActivity", "hasChange() nothing change");
                                    }
                                    arrayList.clear();
                                    z = false;
                                }
                            }
                        } else if (!arrayList.contains(Long.valueOf(it2.next().f1945a))) {
                            if (com.android.contacts.b.f607a.booleanValue()) {
                                Log.d("EditContactsActivity", "hasChange() member change");
                            }
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public final void a(Message message) {
        if (this.f != null) {
            this.f.sendMessage(message);
        }
    }

    public final void a(boolean z) {
        TextView textView = (TextView) findViewById(2131297117);
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i2) {
            case p.POSITION_UNCHANGED /* -1 */:
                ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("addToWidget");
                if (stringArrayListExtra != null) {
                    Iterator<String> it = stringArrayListExtra.iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        Iterator<a> it2 = this.f1939b.iterator();
                        while (it2.hasNext()) {
                            a next2 = it2.next();
                            if (String.valueOf(next2.f1945a).equals(next)) {
                                next2.c = true;
                            }
                        }
                    }
                    this.f1938a.invalidateViews();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a(this.i);
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            this.p = getResources().getBoolean(2130968593);
            if (!this.p) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            if (bundle != null) {
                boolean z = bundle.getBoolean("configuration");
                if ((this.p && !z) || (!this.p && z)) {
                    finish();
                }
                Log.d("EditContactsActivity", "savedInstanceState != null");
            } else {
                Log.d("EditContactsActivity", "savedInstanceState = null");
            }
            Intent intent = getIntent();
            if (intent != null && intent.getAction() != null && intent.getAction().toString().equals("android.appwidget.action.APPWIDGET_CONFIGURE")) {
                this.i = c();
                this.l = true;
            } else if (intent != null) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    this.i = extras.getInt("id");
                    this.l = false;
                    Log.d("EditContactsActivity", "AP Call widget id=" + this.i);
                } else {
                    Log.d("EditContactsActivity", "extras null");
                }
            } else {
                Log.d("EditContactsActivity", "getIntent null");
            }
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(false);
                actionBar.setTitle(2131755596);
                actionBar.setDisplayShowTitleEnabled(true);
                actionBar.setDisplayHomeAsUpEnabled(false);
            }
            setContentView(2131427363);
            TextView textView = (TextView) findViewById(2131296600);
            textView.setText(textView.getText().toString());
            this.g = false;
            this.h = new HashMap<>();
            this.f1938a = (TouchListView) findViewById(2131297548);
            this.j = new HashMap<>();
            this.f = new c();
            b bVar = new b(this, (byte) 0);
            o = bVar;
            bVar.start();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(2131492864, menu);
        this.n = menu.findItem(2131297048);
        MenuItem findItem = menu.findItem(2131297041);
        if (findItem != null) {
            com.android.contacts.skin.a.a(this, findItem);
        }
        if (this.n != null) {
            com.android.contacts.skin.a.a(this, this.n);
        }
        MenuItem findItem2 = menu.findItem(2131297035);
        if (findItem2 == null) {
            return true;
        }
        com.android.contacts.skin.a.a(this, findItem2);
        return true;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView == this.f1938a) {
            a aVar = this.t.get(i);
            if (aVar.f == null) {
                aVar.e = new ArrayList<>();
                aVar.e.add(new g(EditContactsActivity.this, -1, (String) null));
                new com.android.contacts.miniwidget.b(EditContactsActivity.this, aVar.f1945a).a(aVar.e, false);
                aVar.e.add(new g(EditContactsActivity.this, 6, String.valueOf(aVar.f1945a)));
                int i2 = 0;
                while (true) {
                    if (i2 >= aVar.e.size()) {
                        break;
                    } else if (aVar.e.get(i2).a(aVar.d)) {
                        aVar.g = i2;
                        aVar.e.get(aVar.g).c = true;
                        aVar.d = aVar.e.get(aVar.g);
                        break;
                    } else {
                        i2++;
                    }
                }
                aVar.f = new AlertDialog.Builder(EditContactsActivity.this).setTitle(2131756086).setInverseBackgroundForced(true).setAdapter(new com.android.contacts.miniwidget.a(EditContactsActivity.this, aVar.e), aVar);
                aVar.f.show();
                return;
            }
            aVar.f.show();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        synchronized (this) {
            switch (menuItem.getItemId()) {
                case 2131297035:
                    Intent intent = new Intent();
                    Bundle bundle = new Bundle();
                    bundle.putInt("id", this.i);
                    bundle.putInt("WIDGET_MAX_SELECTABLE_SIZE", 100);
                    bundle.putBoolean("WIDGET_PICKER", true);
                    bundle.putBoolean("WIDGET_EDITOR", true);
                    intent.putExtras(bundle);
                    intent.setAction("com.asus.CONTACT_PICK1");
                    startActivityForResult(intent, 0);
                    break;
                case 2131297041:
                    a(this.i);
                    break;
                case 2131297048:
                    if (this.i == -1) {
                        this.i = c();
                    }
                    if ((o.isAlive() || d() || this.l) && this.i != -1) {
                        if (!o.isAlive()) {
                            b();
                        }
                        AppWidgetManager.getInstance(this).updateAppWidget(this.i, new RemoteViews(getPackageName(), 2131427606));
                        Intent intent2 = new Intent();
                        intent2.putExtra("appWidgetId", this.i);
                        setResult(-1, intent2);
                        a(this.i);
                    }
                    finish();
                    break;
                default:
                    z = super.onOptionsItemSelected(menuItem);
                    break;
            }
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("configuration", this.p);
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (o.isAlive()) {
            Log.d("EditContactsActivity", "mThread.interrupt()");
            o.interrupt();
        }
        super.onStop();
    }
}
