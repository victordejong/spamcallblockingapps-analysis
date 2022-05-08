package com.android.contacts.link;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Loader;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.link.c;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity.class */
public class LinkedContactsActivity extends Activity {
    private Context f;
    private com.android.contacts.link.c g;
    private TextView h;
    private ListView i;
    private Button j;
    private ProgressDialog k;
    private AlertDialog q;
    private static final String e = LinkedContactsActivity.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1626a = Uri.parse("content://com.android.contacts");
    private static boolean m = false;
    private ArrayList<a> l = null;
    private boolean n = false;
    private b o = null;
    private ArrayList<c.a> p = null;
    private LoaderManager.LoaderCallbacks<Cursor> r = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.link.LinkedContactsActivity.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            LinkedContactsActivity.this.c();
            return new com.android.contacts.link.d(LinkedContactsActivity.this.f);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            if (!LinkedContactsActivity.m) {
                LinkedContactsActivity.this.e();
                LinkedContactsActivity.this.f();
                if (cursor2 != null) {
                    if (!(LinkedContactsActivity.this.o == null || LinkedContactsActivity.this.o.getStatus() == AsyncTask.Status.FINISHED)) {
                        Log.d(LinkedContactsActivity.e, "cancel QueryLinkedContactsTask [LinkedContactsActivity]");
                        LinkedContactsActivity.this.o.cancel(true);
                        LinkedContactsActivity.this.o = null;
                    }
                    LinkedContactsActivity.this.o = new b(LinkedContactsActivity.this.f, cursor2);
                    LinkedContactsActivity.this.o.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
                    return;
                }
                try {
                    new f((LinkedContactsActivity) LinkedContactsActivity.this.f, cursor2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
            LinkedContactsActivity.this.c();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public View.OnClickListener f1627b = new View.OnClickListener() { // from class: com.android.contacts.link.LinkedContactsActivity.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Object tag = view.getTag();
            if (tag instanceof c.a) {
                String string = LinkedContactsActivity.this.f.getResources().getString(2131755747);
                String string2 = LinkedContactsActivity.this.f.getResources().getString(2131755746);
                d dVar = new d((c.a) tag, LinkedContactsActivity.this.g);
                LinkedContactsActivity.this.q = LinkedContactsActivity.this.a(string, string2, dVar);
                LinkedContactsActivity.this.q.show();
            }
        }
    };
    View.OnClickListener c = new View.OnClickListener() { // from class: com.android.contacts.link.LinkedContactsActivity.3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String string = LinkedContactsActivity.this.f.getResources().getString(2131755745);
            String string2 = LinkedContactsActivity.this.f.getResources().getString(2131755744);
            LinkedContactsActivity.this.q = LinkedContactsActivity.this.a(string, string2, LinkedContactsActivity.this.d);
            LinkedContactsActivity.this.q.show();
        }
    };
    DialogInterface.OnClickListener d = new DialogInterface.OnClickListener() { // from class: com.android.contacts.link.LinkedContactsActivity.4
        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            LinkedContactsActivity.this.n = true;
            new c((LinkedContactsActivity) LinkedContactsActivity.this.f, LinkedContactsActivity.this.g.f1655b, LinkedContactsActivity.this.g.f1654a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        long f1632a;

        /* renamed from: b  reason: collision with root package name */
        long f1633b;

        a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity$b.class */
    final class b extends AsyncTask<Long, Integer, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f1635b;
        private Cursor c;
        private String d = new String();

        public b(Context context, Cursor cursor) {
            this.f1635b = context;
            this.c = cursor;
        }

        private Void a() {
            Throwable th;
            Cursor cursor;
            Long valueOf;
            if (isCancelled()) {
                Log.d(LinkedContactsActivity.e, "QueryLinkedContactsTask was canceld!");
                return null;
            }
            LinkedContactsActivity.this.e();
            if (this.c == null) {
                Log.d(LinkedContactsActivity.e, ">>> QueryLinkedContactsTask >>> mCursor is null");
                return null;
            }
            while (this.c.moveToNext()) {
                if (isCancelled()) {
                    return null;
                }
                try {
                    if (LinkedContactsActivity.this.a(Long.valueOf(this.c.getLong(1)).longValue(), LinkedContactsActivity.this.l)) {
                        this.d += String.valueOf(valueOf) + ", ";
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.d == null || TextUtils.isEmpty(this.d)) {
                return null;
            }
            this.d = this.d.substring(0, this.d.lastIndexOf(", "));
            try {
                cursor = this.f1635b.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"_id", "name_raw_contact_id"}, "_id IN (" + this.d + ")", null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            while (!isCancelled()) {
                                if (LinkedContactsActivity.this.l == null) {
                                    Log.d(LinkedContactsActivity.e, ">>> QueryLinkedContactsTask >>> mLinkedContactsIdList is null!");
                                } else {
                                    LinkedContactsActivity.this.a(cursor.getLong(0), cursor.getLong(1));
                                    if (!cursor.moveToNext()) {
                                    }
                                }
                            }
                            Log.d(LinkedContactsActivity.e, "QueryLinkedContactsTask was canceld!");
                            if (cursor == null) {
                                return null;
                            }
                            cursor.close();
                            return null;
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
                }
                if (isCancelled()) {
                    Log.d(LinkedContactsActivity.e, "QueryLinkedContactsTask was canceld before Adapter.setData()!");
                    return null;
                }
                LinkedContactsActivity.this.a(this.c);
                return null;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Long[] lArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r8) {
            super.onPostExecute(r8);
            if (((LinkedContactsActivity) this.f1635b).isDestroyed()) {
                LinkedContactsActivity.this.d();
            } else if (isCancelled()) {
            } else {
                if (!LinkedContactsActivity.this.n || LinkedContactsActivity.this.l == null || LinkedContactsActivity.this.l.size() == 0) {
                    LinkedContactsActivity.this.g.a(LinkedContactsActivity.this.l, LinkedContactsActivity.this.p);
                    LinkedContactsActivity.this.d();
                    LinkedContactsActivity.this.a();
                    return;
                }
                Log.d(LinkedContactsActivity.e, "[QueryLinkedContactsTask] saparate all not complete! (" + LinkedContactsActivity.this.l.size() + ")");
                new c((LinkedContactsActivity) this.f1635b, LinkedContactsActivity.this.l, LinkedContactsActivity.this.p).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            LinkedContactsActivity.this.c();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity$c.class */
    final class c extends AsyncTask<Long, Integer, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Activity f1637b;
        private ArrayList<a> c;
        private ArrayList<c.a> d;

        public c(Activity activity, ArrayList<a> arrayList, ArrayList<c.a> arrayList2) {
            this.f1637b = activity;
            this.c = arrayList;
            this.d = arrayList2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Long[] lArr) {
            boolean unused = LinkedContactsActivity.m = true;
            if (this.c == null) {
                return null;
            }
            Log.d(LinkedContactsActivity.e, "Need to separate " + this.c.size() + " contact");
            Iterator<a> it = this.c.iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                long j = it.next().f1632a;
                Log.d(LinkedContactsActivity.e, "Start to Separate contact[" + j + "]");
                if (LinkedContactsActivity.this.b(j, this.d)) {
                    i2++;
                    Log.d(LinkedContactsActivity.e, "Separate contact[" + j + "] successfully!");
                } else {
                    i++;
                    Log.d(LinkedContactsActivity.e, "Fail to separate contact[ " + j + "]!");
                }
                Log.d(LinkedContactsActivity.e, "Excute result: Total count (" + this.c.size() + ") success count(" + i2 + ") fail count(" + i + ")");
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            LinkedContactsActivity.this.d();
            boolean unused = LinkedContactsActivity.m = false;
            if (!this.f1637b.isDestroyed()) {
                LinkedContactsActivity.this.b();
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            LinkedContactsActivity.this.c();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity$d.class */
    final class d implements DialogInterface.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private c.a f1639b;
        private com.android.contacts.link.c c;

        public d(c.a aVar, com.android.contacts.link.c cVar) {
            this.f1639b = aVar;
            this.c = cVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            new e(this.f1639b, this.c.f1654a).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity$e.class */
    final class e extends AsyncTask<Long, Integer, Void> {

        /* renamed from: b  reason: collision with root package name */
        private c.a f1641b;
        private ArrayList<c.a> c;

        public e(c.a aVar, ArrayList<c.a> arrayList) {
            this.f1641b = aVar;
            this.c = arrayList;
        }

        /* JADX WARN: Type inference failed for: r1v57, types: [java.lang.Object] */
        private Void a() {
            boolean unused = LinkedContactsActivity.m = true;
            ArrayList arrayList = new ArrayList();
            long longValue = this.f1641b.c.longValue();
            long longValue2 = this.f1641b.f1658b.longValue();
            Iterator<c.a> it = this.c.iterator();
            while (it.hasNext()) {
                c.a next = it.next();
                if (next.c.longValue() == longValue && next.f1658b.longValue() != longValue2) {
                    LinkedContactsActivity.b(arrayList, next.f1658b.longValue(), longValue2);
                    LinkedContactsActivity.b(arrayList, longValue2, next.f1658b.longValue());
                }
            }
            try {
                if (!arrayList.isEmpty()) {
                    int size = arrayList.size();
                    int i = (size / 300) + 1;
                    Log.d(LinkedContactsActivity.e, "total op count: " + size + ", loopCount: " + i);
                    for (int i2 = 0; i2 < i; i2++) {
                        Log.d(LinkedContactsActivity.e, "splitAggregateWithState batch[" + (i2 + 1) + "]");
                        ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
                        for (int i3 = 0; i3 < 300; i3++) {
                            int i4 = (i2 * 300) + i3;
                            if (i4 < arrayList.size()) {
                                arrayList2.add(arrayList.get(i4));
                            }
                        }
                        Log.d(LinkedContactsActivity.e, "partOperations count: " + arrayList2.size());
                        LinkedContactsActivity.this.getContentResolver().applyBatch("com.android.contacts", arrayList2);
                    }
                }
            } catch (OperationApplicationException e) {
                Log.e(LinkedContactsActivity.e, "[SeparateOneClickListener] Failed to apply aggregation exception batch", e);
            } catch (RemoteException e2) {
                Log.e(LinkedContactsActivity.e, "[SeparateOneClickListener] Failed to apply aggregation exception batch", e2);
            }
            long a2 = LinkedContactsActivity.this.a(longValue);
            if (a2 != -1) {
                new StringBuilder("_id=").append(String.valueOf(longValue));
                ContentValues contentValues = new ContentValues();
                contentValues.put("name_verified", (Integer) 1);
                try {
                    int update = LinkedContactsActivity.this.f.getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI, contentValues, "_id = " + a2, null);
                    int i5 = update;
                    if (update <= 0) {
                        Log.i(LinkedContactsActivity.e, "SeparateOneContactTask(readOnly):" + a2 + "(" + update + ")");
                        i5 = LinkedContactsActivity.this.f.getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build(), contentValues, "_id = " + a2, null);
                    }
                    Log.i(LinkedContactsActivity.e, "SeparateOneContactTask:" + a2 + "(" + i5 + ")");
                    return null;
                } catch (NullPointerException e3) {
                    Log.e(LinkedContactsActivity.e, "[NullPointerException] update name raw contact ID failed!");
                    e3.printStackTrace();
                    return null;
                } catch (UnsupportedOperationException e4) {
                    Log.e(LinkedContactsActivity.e, "[UnsupportedOperationException] update name raw contact ID failed!");
                    e4.printStackTrace();
                    return null;
                }
            } else {
                Log.d(LinkedContactsActivity.e, "name raw contact id is -1");
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Long[] lArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            LinkedContactsActivity.this.d();
            boolean unused = LinkedContactsActivity.m = false;
            LinkedContactsActivity.this.b();
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            LinkedContactsActivity.this.c();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/link/LinkedContactsActivity$f.class */
    final class f extends AsyncTask<Long, Integer, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Cursor f1643b;
        private Activity c;

        public f(Activity activity, Cursor cursor) {
            this.f1643b = cursor;
            this.c = activity;
        }

        private Void a() {
            LinkedContactsActivity.this.a(this.f1643b);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Long[] lArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r8) {
            super.onPostExecute(r8);
            if (this.c.isDestroyed()) {
                LinkedContactsActivity.this.d();
            } else if (!LinkedContactsActivity.this.n || LinkedContactsActivity.this.l == null || LinkedContactsActivity.this.l.size() == 0) {
                LinkedContactsActivity.this.g.a(LinkedContactsActivity.this.l, LinkedContactsActivity.this.p);
                LinkedContactsActivity.this.d();
                LinkedContactsActivity.this.a();
            } else {
                Log.d(LinkedContactsActivity.e, "[SetupAdapterDataTask] saparate all not complete! (" + LinkedContactsActivity.this.l.size() + ")");
                new c(this.c, LinkedContactsActivity.this.l, LinkedContactsActivity.this.p).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Long[0]);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            LinkedContactsActivity.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ArrayList<ContentProviderOperation> arrayList, long j, long j2) {
        ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.AggregationExceptions.CONTENT_URI);
        newUpdate.withValue("type", 2);
        newUpdate.withValue("raw_contact_id1", Long.valueOf(j));
        newUpdate.withValue("raw_contact_id2", Long.valueOf(j2));
        arrayList.add(newUpdate.build());
    }

    private static boolean c(long j, ArrayList<Long> arrayList) {
        boolean z;
        Iterator<Long> it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().longValue() == j) {
                    z = false;
                    break;
                }
            } else {
                arrayList.add(Long.valueOf(j));
                z = true;
                break;
            }
        }
        return z;
    }

    private static int d(long j, ArrayList<c.a> arrayList) {
        int i;
        int i2 = 0;
        loop0: while (true) {
            if (i2 >= arrayList.size()) {
                i = -1;
                break;
            }
            c.a aVar = arrayList.get(i2);
            if (aVar.f1657a && aVar.c.longValue() == j) {
                i = i2 + 1;
                while (i < arrayList.size()) {
                    if (arrayList.get(i).c.longValue() != j) {
                        break loop0;
                    }
                    i++;
                }
                continue;
            }
            i2++;
        }
        return i;
    }

    public final long a(long j) {
        long j2;
        if (this.l != null) {
            Iterator<a> it = this.l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    j2 = -1;
                    break;
                }
                a next = it.next();
                if (next.f1632a == j) {
                    j2 = next.f1633b;
                    break;
                }
            }
        } else {
            j2 = -1;
        }
        return j2;
    }

    public final AlertDialog a(String str, String str2, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(this.f.getResources().getString(2131755924), onClickListener);
        builder.setNegativeButton(this.f.getResources().getString(2131755011), (DialogInterface.OnClickListener) null);
        return builder.create();
    }

    public final void a() {
        if (this.g == null || this.g.getCount() == 0) {
            this.h.setVisibility(0);
            this.i.setVisibility(8);
            this.j.setVisibility(8);
            return;
        }
        this.h.setVisibility(8);
        this.i.setVisibility(0);
        this.j.setVisibility(0);
    }

    public final void a(Cursor cursor) {
        if (!m && cursor != null && !cursor.isClosed()) {
            f();
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        ArrayList arrayList = new ArrayList();
                        int count = cursor.getCount();
                        for (int i = 0; i < count; i++) {
                            cursor.moveToPosition(i);
                            long j = cursor.getLong(0);
                            Long valueOf = Long.valueOf(cursor.getLong(1));
                            String string = cursor.getString(2);
                            String string2 = cursor.getString(3);
                            String string3 = cursor.getString(4);
                            String string4 = cursor.getString(5);
                            String string5 = cursor.getString(6);
                            boolean c2 = c(valueOf.longValue(), arrayList);
                            ArrayList<c.a> arrayList2 = this.p;
                            com.android.contacts.link.c cVar = this.g;
                            cVar.getClass();
                            c.a aVar = new c.a(c2, Long.valueOf(j), valueOf, string, string2, string3, string4, string5);
                            if (aVar.f1657a) {
                                arrayList2.add(aVar);
                            } else {
                                int d2 = d(aVar.c.longValue(), arrayList2);
                                if (d2 != -1) {
                                    arrayList2.add(d2, aVar);
                                } else {
                                    arrayList2.add(aVar);
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    Log.d(e, "setData cursor exception!");
                    e2.printStackTrace();
                }
            }
        }
    }

    public final boolean a(long j, long j2) {
        boolean z;
        if (this.l != null) {
            Iterator<a> it = this.l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    Log.d(e, "[setContactNameRawIdToList] No id was matched in list");
                    z = false;
                    break;
                }
                a next = it.next();
                if (next != null && next.f1632a == j) {
                    next.f1633b = j2;
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    public final boolean a(long j, ArrayList<a> arrayList) {
        boolean z;
        if (arrayList == null) {
            z = false;
        } else {
            try {
                Iterator<a> it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        a aVar = new a();
                        aVar.f1632a = j;
                        arrayList.add(aVar);
                        z = true;
                        break;
                    }
                    a next = it.next();
                    if (next != null && next.f1632a == j) {
                        z = false;
                        break;
                    }
                }
            } catch (ArrayIndexOutOfBoundsException e2) {
                e2.printStackTrace();
                z = false;
            } catch (Exception e3) {
                e3.printStackTrace();
                z = false;
            }
        }
        return z;
    }

    public final void b() {
        getLoaderManager().restartLoader(0, null, this.r);
    }

    /* JADX WARN: Type inference failed for: r1v35, types: [java.lang.Object] */
    public final boolean b(long j, ArrayList<c.a> arrayList) {
        boolean z;
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet();
        Iterator<c.a> it = arrayList.iterator();
        while (it.hasNext()) {
            c.a next = it.next();
            if (next.c.longValue() == j) {
                Iterator<c.a> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    c.a next2 = it2.next();
                    if (next2.c.longValue() == j && next.c.longValue() == next2.c.longValue() && next.f1658b.longValue() != next2.f1658b.longValue() && !hashSet.contains(Long.valueOf(next2.f1658b.longValue()))) {
                        b(arrayList2, next.f1658b.longValue(), next2.f1658b.longValue());
                    }
                }
                hashSet.add(Long.valueOf(next.f1658b.longValue()));
            }
        }
        Log.d(e, "total operations count: " + arrayList2.size() + " linked count: " + hashSet.size());
        try {
            if (!arrayList2.isEmpty()) {
                int size = arrayList2.size();
                int i = (size / 300) + 1;
                Log.d(e, "total op count: " + size + ", loopCount: " + i);
                for (int i2 = 0; i2 < i; i2++) {
                    Log.d(e, "splitAggregateWithState batch[" + (i2 + 1) + "]");
                    ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
                    for (int i3 = 0; i3 < 300; i3++) {
                        int i4 = (i2 * 300) + i3;
                        if (i4 < arrayList2.size()) {
                            arrayList3.add(arrayList2.get(i4));
                        }
                    }
                    Log.d(e, "partOperations count: " + arrayList3.size());
                    getContentResolver().applyBatch("com.android.contacts", arrayList3);
                }
            } else {
                Log.d(e, "operations is empty");
            }
            z = true;
        } catch (OperationApplicationException e2) {
            Log.e(e, "[separateAllLinkedRawContacts] Failed to apply aggregation exception batch", e2);
            z = false;
        } catch (RemoteException e3) {
            Log.e(e, "[separateAllLinkedRawContacts] Failed to apply aggregation exception batch", e3);
            z = false;
        }
        return z;
    }

    public final void c() {
        if (this.k != null && !this.k.isShowing()) {
            this.k.show();
        }
    }

    public final void d() {
        if (this.k != null) {
            this.k.cancel();
            this.k.dismiss();
        }
    }

    public final void e() {
        if (this.l == null) {
            this.l = new ArrayList<>();
        } else {
            this.l.clear();
        }
    }

    public final void f() {
        if (this.p == null) {
            this.p = new ArrayList<>();
        } else {
            this.p.clear();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            setContentView(2131427339);
            if (bundle != null) {
                m = bundle.getBoolean("operating_state");
                this.n = bundle.getBoolean("separate_all_state");
            }
            this.f = this;
            this.h = (TextView) findViewById(2131297119);
            this.h.setText(getResources().getString(2131755743));
            this.i = (ListView) findViewById(2131296994);
            this.j = (Button) findViewById(2131297275);
            this.j.setText(getResources().getString(2131755745));
            this.g = new com.android.contacts.link.c(this.f);
            this.i.setAdapter((ListAdapter) this.g);
            this.g.c = this.f1627b;
            this.j.setOnClickListener(this.c);
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayOptions(12, 12);
                actionBar.setDisplayShowHomeEnabled(false);
            }
            this.k = new ProgressDialog(this);
            this.k.setCancelable(false);
            this.k.setMessage(this.f.getString(2131755350));
            a();
            getLoaderManager().initLoader(0, null, this.r);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        d();
        if (!(this.o == null || this.o.getStatus() == AsyncTask.Status.FINISHED)) {
            Log.d(e, "cancel QueryLinkedContactsTask [LinkedContactsActivity]");
            this.o.cancel(true);
            this.o = null;
        }
        this.k = null;
        getLoaderManager().destroyLoader(0);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
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
    public void onResume() {
        super.onResume();
        if (m) {
            c();
        } else {
            b();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            bundle.putBoolean("operating_state", m);
            bundle.putBoolean("separate_all_state", this.n);
        }
    }
}
