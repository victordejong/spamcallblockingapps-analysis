package com.android.contacts.list;

import android.accounts.Account;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.AsusContactsMultipleSelectionActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/m.class */
public final class m extends p<l> {
    private static int L;
    private static AsusContactsMultipleSelectionActivity M;
    public static a h;
    private static f l;
    private long B;
    private com.android.contacts.model.a C;
    private CheckedTextView D;
    private List<SimCardContact> K;
    private l P;
    public Account c;
    public ProgressDialog f;
    private static boolean E = false;
    private static boolean F = false;
    private static boolean G = false;
    private static boolean H = false;
    private static boolean I = false;
    private static boolean J = false;
    public static boolean d = true;
    private static boolean O = false;
    private final String k = "AsusSimExportImportFragment";

    /* renamed from: a  reason: collision with root package name */
    public int f1848a = -1;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<String> f1849b = new ArrayList<>();
    public boolean e = false;
    private boolean N = false;
    public int g = 1;
    public Bundle i = null;
    public int j = 0;
    private final LoaderManager.LoaderCallbacks<Cursor> Q = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.m.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            CursorLoader cursorLoader;
            switch (i) {
                case p.POSITION_NONE /* -2 */:
                    cursorLoader = new CursorLoader(m.this.getActivity(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, m.this.B), new String[]{"display_name"}, null, null, null);
                    break;
                case p.POSITION_UNCHANGED /* -1 */:
                case 0:
                default:
                    throw new IllegalArgumentException("No loader for ID=" + i);
                case 1:
                    cursorLoader = new CursorLoader(m.this.getActivity());
                    l lVar = (l) m.this.t;
                    if (lVar != null) {
                        lVar.a(cursorLoader, 0L);
                        break;
                    }
                    break;
            }
            return cursorLoader;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            switch (loader.getId()) {
                case p.POSITION_NONE /* -2 */:
                    if (cursor2 != null && cursor2.moveToFirst()) {
                        m.a(m.this, cursor2.getString(0));
                        return;
                    }
                    return;
                case p.POSITION_UNCHANGED /* -1 */:
                case 0:
                default:
                    return;
                case 1:
                    m.a(m.this, cursor2);
                    m mVar = m.this;
                    if (mVar.t != 0 && ((l) mVar.t).e.size() > 0) {
                        ((l) mVar.t).e.clear();
                    }
                    m.this.A();
                    return;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$a.class */
    public final class a extends AsyncTask<ArrayList<String>, Integer, Integer> {
        private Map<Long, String> A;

        /* renamed from: a  reason: collision with root package name */
        Integer[] f1852a;
        long r;
        long s;
        private List<SimCardContact> u;
        private List<SimCardContact> v;
        private final int w = 0;
        private final int x = 1;
        private final int y = 2;
        private final int z = 3;

        /* renamed from: b  reason: collision with root package name */
        String[] f1853b = {"raw_contact_id", "mimetype", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_URI, ContactDetailCallogActivity.EXTRA_CONTACT_ID};
        int c = 0;
        int d = 0;
        int e = 0;
        int f = 0;
        int g = 0;
        Boolean h = false;
        Boolean i = false;
        Boolean j = false;
        int k = 0;
        int l = 0;
        int m = 0;
        int n = 0;
        Boolean o = true;
        Boolean p = true;
        Boolean q = true;

        public a() {
        }

        private static long a(int i) {
            Cursor query = m.M.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, new String[]{"name_raw_contact_id"}, "_id = " + i, null, null);
            long j = -1;
            try {
                if (query.moveToFirst()) {
                    j = query.getLong(0);
                }
                return j;
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }

        private Cursor a(Cursor cursor) {
            String str = " IN ('";
            String str2 = str;
            if (cursor != null) {
                str2 = str;
                try {
                    if (cursor.moveToFirst()) {
                        do {
                            long j = cursor.getInt(0);
                            this.A.put(Long.valueOf(j), cursor.getString(1));
                            str2 = str + j + "', '";
                            str = str2;
                        } while (cursor.moveToNext());
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            Log.d("AsusSimExportImportFragment", "CalculateSimSpaceTask : getContactsData toQueryString = " + str2);
            return m.M.getContentResolver().query(ContactsContract.Data.CONTENT_URI, this.f1853b, "raw_contact_id" + ((str2.substring(0, str2.length() - 3) + ")") + " AND mimetype_id IN( SELECT _id FROM mimetypes WHERE mimetype IN ('vnd.android.cursor.item/email_v2', 'vnd.android.cursor.item/nickname', 'vnd.android.cursor.item/name', 'vnd.android.cursor.item/phone_v2'))"), null, "_id ASC");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0320  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0336  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0351  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x040d  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0415  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer doInBackground(java.util.ArrayList<java.lang.String>... r8) {
            /*
                Method dump skipped, instructions count: 1082
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.m.a.doInBackground(java.util.ArrayList[]):java.lang.Integer");
        }

        private void a(int i, Cursor cursor) {
            String str;
            Boolean bool;
            int indexOf;
            String string = cursor.getString(cursor.getColumnIndex("mimetype"));
            boolean z = false;
            String str2 = null;
            String str3 = null;
            Long l = null;
            Iterator<SimCardContact> it = this.v.iterator();
            int i2 = 0;
            while (true) {
                str = str2;
                bool = z;
                if (!it.hasNext()) {
                    break;
                }
                SimCardContact next = it.next();
                if (next.f2133a == i) {
                    if (string.equals("vnd.android.cursor.item/name")) {
                        long a2 = a(i);
                        String string2 = !TextUtils.isEmpty(this.A.get(Long.valueOf(a2))) ? this.A.get(Long.valueOf(a2)) : a2 == cursor.getLong(cursor.getColumnIndex("raw_contact_id")) ? cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_URI)) : str2;
                        if (string2 != null) {
                            int a3 = com.android.contacts.simcardmanage.e.a(m.this.getContext()).a(string2, 5, m.this.g);
                            str2 = a3 > 0 ? string2.substring(0, a3) : string2;
                            this.v.get(i2).a(str2, -1L);
                        } else {
                            str2 = string2;
                        }
                    } else if (string.equals("vnd.android.cursor.item/phone_v2")) {
                        com.android.contacts.simcardmanage.e a4 = com.android.contacts.simcardmanage.e.a(m.this.getContext());
                        String b2 = com.android.contacts.simcardmanage.e.b(cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_URI)));
                        int a5 = a4.a(b2, 6, m.this.g);
                        String str4 = b2;
                        if (a5 > 0) {
                            str4 = b2.substring(0, a5);
                        }
                        str2 = str4;
                        if (str4 != null) {
                            str2 = str4;
                            if (str4.indexOf(";") >= 0) {
                                str2 = str4.substring(0, indexOf) + str4.substring(indexOf + 1, str4.length());
                            }
                        }
                        if (str2 != null) {
                            str = str2;
                            bool = z;
                            if (str2.equals("+")) {
                                break;
                            }
                        }
                        if (!TextUtils.isEmpty(next.c)) {
                            if (this.h.booleanValue() && TextUtils.isEmpty(next.g) && this.l > 0) {
                                this.v.get(i2).d(str2, -1L);
                                bool = false;
                                this.l--;
                                str = str2;
                                break;
                            }
                            str3 = next.f2134b;
                            l = Long.valueOf(next.d);
                            z = true;
                        } else {
                            this.v.get(i2).b(str2, -1L);
                            bool = false;
                            str = str2;
                            break;
                        }
                    } else if (string.equals("vnd.android.cursor.item/email_v2")) {
                        if (!this.i.booleanValue() || !TextUtils.isEmpty(next.e) || this.m <= 0) {
                            if (this.i.booleanValue() && TextUtils.isEmpty(next.e) && this.m <= 0) {
                                this.o = false;
                                m.this.e = true;
                                Log.d("AsusSimExportImportFragment", "email column is full");
                                str = str2;
                                bool = z;
                                break;
                            } else if (!this.i.booleanValue()) {
                                Log.d("AsusSimExportImportFragment", "not support email column");
                            }
                        } else {
                            str = cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                            str = str;
                            if (str != null) {
                                int a6 = com.android.contacts.simcardmanage.e.a(m.this.getContext()).a(str, 7, m.this.g);
                                if (a6 > 0) {
                                    str = str.substring(0, a6);
                                }
                                this.v.get(i2).e(str, -1L);
                                this.m--;
                                bool = z;
                            }
                        }
                    } else if (string.equals("vnd.android.cursor.item/nickname")) {
                        if (this.j.booleanValue() && this.n > 0) {
                            str = cursor.getString(cursor.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                            str = str;
                            if (str != null) {
                                int a7 = com.android.contacts.simcardmanage.e.a(m.this.getContext()).a(str, 9, m.this.g);
                                if (a7 > 0) {
                                    str = str.substring(0, a7);
                                }
                                this.v.get(i2).c(str, -1L);
                                this.n--;
                                bool = z;
                            }
                        } else if (!this.j.booleanValue() || this.n > 0) {
                            str = str2;
                            bool = z;
                            if (!this.j.booleanValue()) {
                                Log.d("AsusSimExportImportFragment", "not support second name column");
                                str = str2;
                                bool = z;
                            }
                        } else {
                            Log.d("AsusSimExportImportFragment", "second name column is full");
                            m.this.e = true;
                            this.q = false;
                            str = str2;
                            bool = z;
                        }
                    }
                }
                i2++;
            }
            bool = z;
            if (bool.booleanValue()) {
                SimCardContact simCardContact = new SimCardContact();
                simCardContact.i = m.this.g;
                simCardContact.d = l.longValue();
                simCardContact.f2133a = i;
                simCardContact.a(str3, -1L);
                if (string.equals("vnd.android.cursor.item/phone_v2")) {
                    simCardContact.b(str, -1L);
                }
                this.v.add(simCardContact);
            }
        }

        private boolean b(int i) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 < this.f1852a.length) {
                    if (this.f1852a[i2] != null && this.f1852a[i2].intValue() == i) {
                        z = true;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            super.onPostExecute(num2);
            if (m.this.getActivity() != null && !m.this.getActivity().isFinishing()) {
                if (!m.d) {
                    switch (num2.intValue()) {
                        case 0:
                            boolean unused = m.J = false;
                            m.this.K = this.u;
                            m.this.g();
                            break;
                        case 1:
                            m.l.c();
                            m.l.showDialog(6);
                            break;
                        case 2:
                            m.l.c();
                            m.this.K = this.u;
                            m.l.showDialog(5);
                            break;
                        case 3:
                            m.l.c();
                            m.this.K = this.u;
                            m.l.showDialog(9);
                            break;
                    }
                } else {
                    Log.d("AsusSimExportImportFragment", "isRotate = true");
                }
                m.l.a(2);
            } else if (m.this.getActivity() != null) {
                Log.d("AsusSimExportImportFragment", num2 + "- (CalculateSimSpaceTask)getActivity().isFinishing() = " + m.this.getActivity().isFinishing());
            } else {
                Log.d("AsusSimExportImportFragment", num2 + "- (CalculateSimSpaceTask)getActivity() = null");
            }
            this.s = System.currentTimeMillis();
            Log.d("AsusSimExportImportFragment", "Total calculate time is: " + (this.s - this.r) + " msec");
            a unused2 = m.h = null;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            this.r = System.currentTimeMillis();
            super.onPreExecute();
            this.u = new LinkedList();
            this.v = new LinkedList();
            m.this.e = false;
            this.A = new HashMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$b.class */
    public final class b extends AsyncTask<Void, Void, Boolean> {
        b() {
        }

        private Boolean a() {
            l lVar = (l) m.this.t;
            int count = lVar.getCount();
            int i = 0;
            for (int i2 = 0; i2 < count; i2++) {
                try {
                    i = i;
                    if (lVar.d.contains(Long.valueOf(lVar.n(i2)))) {
                        i++;
                    }
                } catch (Exception e) {
                    Log.i("AsusSimExportImportFragment", e.toString());
                    i = i;
                }
            }
            return Boolean.valueOf(i == count - 1);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue()) {
                if (m.this.D != null) {
                    m.this.D.setChecked(true);
                }
                boolean unused = m.I = true;
                return;
            }
            if (m.this.D != null) {
                m.this.D.setChecked(false);
            }
            boolean unused2 = m.I = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$c.class */
    public final class c extends AsyncTask<Integer, Void, Integer> {
        public c() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Integer[] numArr) {
            boolean unused = m.E = true;
            com.android.contacts.simcardmanage.e.a(m.M).f(m.this.g);
            boolean unused2 = m.E = false;
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            m.l.a(1);
            super.onPostExecute(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$d.class */
    public final class d extends AsyncTask<List<SimCardContact>, Integer, Integer> {

        /* renamed from: a  reason: collision with root package name */
        long f1856a;

        /* renamed from: b  reason: collision with root package name */
        long f1857b;
        private int j;
        Boolean c = false;
        Boolean d = false;
        Boolean e = false;
        private final int g = 1;
        private final int h = -1;
        private final int i = -2;

        d() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(List<SimCardContact>[] listArr) {
            Account account;
            int i;
            Account account2;
            List<SimCardContact>[] listArr2 = listArr;
            this.j = listArr2[0].size();
            this.f1856a = System.currentTimeMillis();
            boolean unused = m.F = true;
            LinkedList linkedList = new LinkedList();
            com.android.contacts.simcardmanage.e a2 = com.android.contacts.simcardmanage.e.a(m.M);
            int i2 = 0;
            for (SimCardContact simCardContact : listArr2[0]) {
                boolean unused2 = m.F = true;
                int unused3 = m.L = this.j;
                if (m.J) {
                    break;
                }
                Uri a3 = a2.a(simCardContact, true);
                if (a3 != null) {
                    simCardContact.h = ContentUris.parseId(a3);
                    linkedList.add(simCardContact);
                    i2++;
                    publishProgress(Integer.valueOf(i2));
                } else {
                    boolean unused4 = m.J = false;
                    Log.d("AsusSimExportImportFragment", "Start to add to contacts database");
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        account2 = m.this.g == 2 ? new Account(b.a.c, "asus.local.simcard2") : new Account(b.a.c, b.a.d);
                    } else {
                        account2 = new Account("SIM", b.a.d);
                        if (com.android.contacts.simcardmanage.b.a(m.M)) {
                            account2 = m.this.g == 2 ? new Account("SIM2", b.a.d) : new Account(b.a.c, b.a.d);
                        }
                    }
                    a2.a(m.this.g, linkedList, account2, 100);
                    i = -1;
                    return i;
                }
            }
            Log.d("AsusSimExportImportFragment", "Start to add to contacts database");
            if (PhoneCapabilityTester.IsAsusDevice()) {
                account = m.this.g == 2 ? new Account(b.a.c, "asus.local.simcard2") : new Account(b.a.c, b.a.d);
            } else {
                account = new Account("SIM", b.a.d);
                if (com.android.contacts.simcardmanage.b.a(m.M)) {
                    account = m.this.g == 2 ? new Account("SIM2", b.a.d) : new Account(b.a.c, b.a.d);
                }
            }
            if (a2.a(m.this.g, linkedList, account, 100) == null) {
                boolean unused5 = m.J = false;
                i = -1;
            } else if (m.J) {
                boolean unused6 = m.J = false;
                i = -2;
            } else {
                this.f1857b = System.currentTimeMillis();
                Log.d("AsusSimExportImportFragment", "Total export time is: " + (this.f1857b - this.f1856a) + " msec");
                boolean unused7 = m.J = false;
                i = 1;
            }
            return i;
        }

        @Override // android.os.AsyncTask
        public final void onCancelled() {
            m.l.a(7);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            super.onPostExecute(num2);
            m.l.a(7);
            if (m.M == null || m.M.isFinishing()) {
                if (m.this.getActivity() != null) {
                    Log.d("AsusSimExportImportFragment", num2 + " - (ExportSimTask)getActivity().isFinishing() = " + m.this.getActivity().isFinishing());
                } else {
                    Log.d("AsusSimExportImportFragment", num2 + " - (ExportSimTask)getActivity() = null");
                }
            } else if (num2.intValue() == 1) {
                Toast.makeText(m.M, m.M.getResources().getString(2131755622), 1).show();
                boolean unused = m.I = false;
                m.M.finish();
            } else if (num2.intValue() == -1) {
                m.l.showDialog(3);
            } else if (num2.intValue() == -2) {
                Toast.makeText(m.M, m.M.getResources().getString(17039360), 1).show();
                boolean unused2 = m.I = false;
                m.M.finish();
            }
            boolean unused3 = m.F = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            m.this.d();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onProgressUpdate(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            super.onProgressUpdate(numArr2);
            if (numArr2[0].intValue() <= this.j) {
                m.l.b(numArr2[0].intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$e.class */
    public final class e extends AsyncTask<ArrayList<String>, Integer, Integer> {

        /* renamed from: a  reason: collision with root package name */
        long f1858a;

        /* renamed from: b  reason: collision with root package name */
        long f1859b;
        private final int d = 1;
        private final int e = -1;
        private final int f = -2;
        private int g;

        e() {
        }

        private static int a(ContentProviderResult[] contentProviderResultArr) {
            int i;
            if (contentProviderResultArr != null) {
                int length = contentProviderResultArr.length;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    i = i3;
                    if (i2 >= length) {
                        break;
                    }
                    i3 = i3;
                    if (contentProviderResultArr[i2].uri.toString().startsWith(ContactsContract.RawContacts.CONTENT_URI.toString())) {
                        i3++;
                    }
                    i2++;
                }
            } else {
                i = 0;
            }
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x0053, code lost:
            continue;
         */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0190  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x02c4  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x02d1  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer doInBackground(java.util.ArrayList<java.lang.String>... r8) {
            /*
                Method dump skipped, instructions count: 744
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.m.e.doInBackground(java.util.ArrayList[]):java.lang.Integer");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            boolean z = true;
            m.l.a(7);
            switch (num.intValue()) {
                case p.POSITION_NONE /* -2 */:
                    Toast.makeText(m.M, m.M.getResources().getString(17039360), 1).show();
                    break;
                case p.POSITION_UNCHANGED /* -1 */:
                    m.l.showDialog(4);
                    z = false;
                    break;
                case 0:
                default:
                    z = false;
                    break;
                case 1:
                    Toast.makeText(m.M, m.M.getResources().getString(2131755703), 1).show();
                    break;
            }
            if (m.l.d()) {
                Log.d("AsusSimExportImportFragment", "SuccessImportCount = " + m.this.j);
            }
            if (z && m.l.d()) {
                Intent intent = new Intent();
                intent.putExtra("successCount", m.this.j);
                m.M.setResult(-1, intent);
                m.M.finish();
            } else if (z) {
                m.M.finish();
            }
            boolean unused = m.H = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            m.this.d();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onProgressUpdate(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            if (numArr2[0].intValue() <= this.g) {
                m.l.b(numArr2[0].intValue());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$f.class */
    public interface f {
        void a(int i);

        void a(int i, int i2);

        void a(boolean z);

        void b(int i);

        void c();

        boolean d();

        void showDialog(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/m$g.class */
    final class g extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        long f1860a = 0;

        g() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            l lVar = (l) m.this.t;
            int count = lVar.getCount();
            if (lVar.e.size() > 0) {
                for (Long l : lVar.e) {
                    if (!lVar.d.contains(l)) {
                        lVar.d.add(l);
                    }
                }
                return null;
            }
            for (int i = 0; i < count; i++) {
                Long valueOf = Long.valueOf(lVar.n(i));
                if (valueOf.longValue() > 0) {
                    if (!lVar.d.contains(valueOf)) {
                        lVar.d.add(valueOf);
                    }
                    lVar.e.add(valueOf);
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r8) {
            Void r0 = r8;
            if (m.this.f != null) {
                m.this.f.cancel();
                m.this.f.dismiss();
                m.this.f = null;
            }
            super.onPostExecute(r0);
            ((l) m.this.t).notifyDataSetChanged();
            m.l.a(true);
            m.this.D.setChecked(true);
            Log.d("AsusSimExportImportFragment", "SelectAllTask spend time = " + (System.currentTimeMillis() - this.f1860a));
            m.this.N = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            m.this.N = true;
            super.onPreExecute();
            this.f1860a = System.currentTimeMillis();
        }
    }

    public m() {
        x();
        f(true);
        g(false);
        this.n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        l lVar = (l) this.t;
        int count = lVar.getCount();
        int size = lVar.d.size();
        if (size >= count - 1) {
            try {
                new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.e("AsusSimExportImportFragment", e2.toString());
            }
        } else {
            this.D.setChecked(false);
            I = false;
        }
        if (size == 0) {
            l.a(false);
        } else {
            l.a(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0113 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.ArrayList<java.lang.String> a(java.util.ArrayList<java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.m.a(java.util.ArrayList):java.util.ArrayList");
    }

    static /* synthetic */ void a(m mVar, Cursor cursor) {
        mVar.g(true);
        mVar.a(1, cursor);
    }

    static /* synthetic */ void a(m mVar, String str) {
        Activity activity = mVar.getActivity();
        ((TextView) activity.findViewById(2131296978)).setText(activity.getString(2131755226, new Object[]{str}));
    }

    public static void a(Boolean bool) {
        J = bool.booleanValue();
    }

    public static void b(Boolean bool) {
        G = bool.booleanValue();
    }

    public static boolean h() {
        return F;
    }

    public static boolean i() {
        return H;
    }

    public static int j() {
        return L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427394, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        l lVar = (l) this.t;
        int g2 = lVar.g(i);
        long n = lVar.n(i);
        if (g2 == 0) {
            if (lVar.f.get(Long.valueOf(n)) == null || lVar.f.get(Long.valueOf(n)).intValue() == 0) {
                lVar.f.put(Long.valueOf(n), 1);
            } else if (lVar.f.get(Long.valueOf(n)).intValue() == 1) {
                lVar.f.put(Long.valueOf(n), 0);
            }
        } else if (g2 == 1) {
            if (lVar.d.contains(Long.valueOf(n))) {
                lVar.d.remove(Long.valueOf(n));
            } else {
                lVar.d.add(Long.valueOf(n));
            }
            A();
        }
        lVar.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        this.D = (CheckedTextView) getView().findViewById(2131297270);
        this.D.setText(getResources().getString(2131755839));
        this.D.setVisibility(0);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.D.setPadding(getResources().getDimensionPixelOffset(2131099769), 0, getResources().getDimensionPixelOffset(2131099782), 0);
        }
        this.D.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.m.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (!m.this.N) {
                    l lVar = (l) m.this.t;
                    if (m.I) {
                        lVar.d.clear();
                        boolean unused = m.I = false;
                        m.l.a(false);
                        m.this.D.setChecked(false);
                        lVar.notifyDataSetChanged();
                        return;
                    }
                    boolean unused2 = m.I = true;
                    m.this.N = true;
                    DialogFragment a2 = com.android.contacts.interactions.a.a();
                    a2.show(m.this.getFragmentManager(), (String) null);
                    a2.setCancelable(false);
                    new g().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            }
        });
    }

    @Override // com.android.contacts.list.p
    public final void a(String str, boolean z) {
        super.b(str);
        ((l) this.t).a(str);
        f();
        getLoaderManager().restartLoader(1, null, this.Q);
    }

    @Override // com.android.contacts.list.p
    public final /* synthetic */ l c() {
        this.P = new l(getActivity());
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.P.p = true;
        }
        return this.P;
    }

    public final void d() {
        if (getLoaderManager() != null) {
            Log.d("AsusSimExportImportFragment", "stopLoading()");
            ((l) this.t).a((Cursor) null);
            getLoaderManager().destroyLoader(-2);
            getLoaderManager().destroyLoader(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void d_() {
        f();
        getLoaderManager().initLoader(-2, null, this.Q);
        getLoaderManager().initLoader(1, null, this.Q);
    }

    public final void e() {
        l lVar = (l) this.t;
        this.f1849b.clear();
        if (lVar.d.size() > 0) {
            for (Long l2 : lVar.d) {
                this.f1849b.add(String.valueOf(l2));
            }
        }
        if (lVar.f.size() > 0) {
            for (Map.Entry<Long, Integer> entry : lVar.f.entrySet()) {
                if (entry.getValue().intValue() == 1) {
                    this.f1849b.add(String.valueOf(entry.getKey().longValue()));
                }
            }
        }
        if (this.f1849b.size() <= 0) {
            return;
        }
        if (this.f1848a == 0) {
            l.c();
            l.showDialog(2);
            J = false;
        } else if (this.f1848a == 1 && this.c != null) {
            ArrayList<String> a2 = a(this.f1849b);
            l.a(2, a2.size());
            J = false;
            new e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, a2);
            J = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        l lVar = (l) this.t;
        lVar.h = this.f1848a;
        if (this.f1848a == 0) {
            lVar.a(this.g, this.c);
        } else if (this.f1848a == 1) {
            lVar.a(this.g, (Account) null);
        }
        this.C = com.android.contacts.model.a.a(getActivity());
        lVar.g = this.C;
    }

    public final void g() {
        if (this.K == null || this.K.isEmpty()) {
            Log.d("AsusSimExportImportFragment", "toExportSimContacts is empty");
            if (getActivity() != null) {
                getActivity().finish();
                return;
            }
            return;
        }
        l.a(1, this.K.size());
        J = false;
        new d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.K);
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.i != null) {
            l lVar = (l) this.t;
            ArrayList<String> stringArrayList = this.i.getStringArrayList("mapSuggestSimImportExport");
            if (!(lVar == null || stringArrayList == null)) {
                for (int i = 0; i < stringArrayList.size(); i++) {
                    lVar.f.put(Long.valueOf(Long.parseLong(stringArrayList.get(i))), 1);
                }
                lVar.notifyDataSetChanged();
            }
            ArrayList<String> stringArrayList2 = this.i.getStringArrayList("mapAllSimImportExport");
            if (!(lVar == null || stringArrayList2 == null)) {
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    lVar.d.add(Long.valueOf(Long.parseLong(stringArrayList2.get(i2))));
                }
                lVar.notifyDataSetChanged();
            }
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        l = (f) activity;
        M = (AsusContactsMultipleSelectionActivity) activity;
        d = true;
        Log.d("AsusSimExportImportFragment", "onAttach");
        if (!E && !F && !H && !G && !O) {
            l.c();
            l.showDialog(1);
            O = true;
            Log.d("AsusSimExportImportFragment", "onAttach isAlreadyShowDialog:" + O);
            new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 1);
        }
    }

    @Override // com.android.contacts.list.p, android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                Log.i("AsusSimExportImportFragment", "move down");
                break;
        }
        return super.onTouch(view, motionEvent);
    }
}
