package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.android.a.b.a;
import com.android.contacts.d.b;
import com.android.contacts.dialpad.AsusQuickContactBadge;
import com.android.contacts.k;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.vcard.SelectAccountActivity;
import com.android.contacts.widget.c;
import com.android.contacts.widget.f;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/o.class */
public abstract class o extends c {
    boolean A;
    ContactListFilter B;
    public String[] E;
    public int[] F;
    public int[] G;
    f H;
    private CharSequence e;
    private boolean f;
    int n;
    int o;
    public boolean p;
    protected boolean q;
    boolean r;
    boolean s;
    k t;
    String u;
    protected char[] v;
    boolean w;
    int x;
    int y = Integer.MAX_VALUE;
    private boolean d = true;
    boolean z = true;
    String C = BuildConfig.FLAVOR;
    boolean D = false;
    boolean I = false;
    protected Map<Long, List<com.android.contacts.widget.a>> J = new HashMap();
    protected Map<Long, List<com.android.contacts.widget.a>> K = new HashMap();
    protected List<com.android.contacts.widget.a> L = new ArrayList();
    protected ArrayList<Long> M = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/o$a.class */
    final class a extends AsyncTask<Long, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        ContactListItemView f1867a;

        /* renamed from: b  reason: collision with root package name */
        final long f1868b;
        final boolean c;
        final boolean d;

        public a(ContactListItemView contactListItemView, boolean z, boolean z2) {
            this.f1867a = contactListItemView;
            this.f1868b = ((Long) contactListItemView.d().getTag()).longValue();
            this.c = z;
            this.d = z2;
        }

        private Boolean a(Long l) {
            boolean z;
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(o.this.U);
            if (!(o.this.U == null || a2 == null)) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Cursor query = o.this.U.getContentResolver().query(this.c ? ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI : ContactsContract.RawContacts.CONTENT_URI, new String[]{SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "_id"}, "contact_id=" + l, null, null);
                if (query != null) {
                    while (query.moveToNext()) {
                        try {
                            String string = query.getString(0);
                            String string2 = query.getString(1);
                            String string3 = query.getString(2);
                            boolean a3 = PhoneCapabilityTester.isATTSku() ? this.c ? true : a(query.getLong(3), string, string2, string3) : true;
                            com.android.contacts.model.account.a a4 = a2.a(string2, string3);
                            if (!arrayList.contains(a4) && (this.d || a3)) {
                                arrayList.add(a4);
                                arrayList2.add(string);
                            }
                        } catch (Throwable th) {
                            if (query != null) {
                                query.close();
                            }
                            throw th;
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
                ArrayList arrayList3 = new ArrayList();
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList3.add(new com.android.contacts.widget.a((com.android.contacts.model.account.a) arrayList.get(i), (String) arrayList2.get(i)));
                }
                Collections.sort(arrayList3);
                if (arrayList.size() > 0) {
                    if (this.c) {
                        o.this.L = arrayList3;
                    } else if (this.d || !PhoneCapabilityTester.isATTSku()) {
                        o.this.K.put(l, arrayList3);
                    } else {
                        o.this.J.put(l, arrayList3);
                    }
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x01b0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean a(long r8, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
            /*
                Method dump skipped, instructions count: 451
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.o.a.a(long, java.lang.String, java.lang.String, java.lang.String):boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Long[] lArr) {
            boolean z;
            Long[] lArr2 = lArr;
            if (this.f1867a != null) {
                if (!(this.f1867a.c == null) && this.f1867a.d().getTag() != null) {
                    z = (((Long) this.f1867a.d().getTag()).longValue() != this.f1868b || lArr2 == null || lArr2[0].longValue() <= 0) ? false : a(lArr2[0]);
                    return z;
                }
            }
            z = false;
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            o.this.M.remove(Long.valueOf(this.f1868b));
            if (this.f1867a != null && bool2.booleanValue()) {
                Object tag = this.f1867a.d().getTag();
                if ((tag instanceof Long) && ((Long) tag).longValue() == this.f1868b) {
                    o.this.notifyDataSetChanged();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            o.this.M.add(Long.valueOf(this.f1868b));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Context context) {
        super(context);
        boolean z = false;
        this.f = (com.android.contacts.skin.a.b() || com.android.contacts.skin.a.c()) ? true : z;
        k(2131755762);
        b();
    }

    private int a(long j) {
        int size = this.f408b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            a.C0018a c = c(i);
            if ((c instanceof am) && ((am) c).f == j) {
                break;
            }
            i++;
        }
        return i;
    }

    public static k.d a(Cursor cursor, int i, int i2) {
        return new k.d(cursor.getString(i), cursor.getString(i2), true);
    }

    @Override // com.android.a.b.a
    public int a(int i, int i2) {
        r10 = true;
        int a2 = super.a(i, i2);
        boolean z = false;
        if (i2 == 0) {
            int g = g(i2);
            z = false;
            if (g >= 0) {
                int position = e(g).getPosition();
                Cursor cursor = (Cursor) getItem(i2);
                z = false;
                if (cursor != null) {
                    int columnIndex = cursor.getColumnIndex("is_user_profile");
                    if (columnIndex == -1) {
                        z = false;
                    } else if (cursor.getInt(columnIndex) != 1) {
                        z = false;
                    }
                    cursor.moveToPosition(position);
                }
            }
        }
        return (z || !this.X || i != this.W) ? a2 : o(i2).f2210b ? a2 : a2 + 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Uri a(int i, Cursor cursor, int i2, int i3) {
        long j = cursor.getLong(i2);
        String string = cursor.getString(i3);
        Uri lookupUri = ContactsContract.Contacts.getLookupUri(j, string);
        long j2 = ((am) c(i)).f;
        if (!(lookupUri == null || j2 == 0)) {
            lookupUri = lookupUri.buildUpon().appendQueryParameter("directory", String.valueOf(j2)).build();
        }
        if (lookupUri == null) {
            Log.e("ContactEntryListAdapter", "[getContactUri] uri is null, contactId = " + j + ", lookupKey = " + string);
        }
        return lookupUri;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.c
    public final View a(Context context) {
        return new ContactListPinnedHeaderView(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public View a(Context context, int i, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(2131427518, viewGroup, false);
    }

    @Override // com.android.a.b.a
    public final void a() {
        int size = this.f408b.size();
        for (int i = 0; i < size; i++) {
            a.C0018a c = c(i);
            if (c instanceof am) {
                ((am) c).i = 0;
            }
        }
        super.a();
    }

    @Override // com.android.a.b.a
    public void a(int i, Cursor cursor) {
        if (i < this.f408b.size()) {
            a.C0018a c = c(i);
            if (c instanceof am) {
                ((am) c).i = 2;
            }
            if (this.p && this.t != null && l(i)) {
                this.t.c();
            }
            super.a(i, cursor);
            if (this.X && i == this.W) {
                if (cursor != null) {
                    Log.i("ContactEntryListAdapter", " updateIndexer");
                    Bundle extras = cursor.getExtras();
                    if (extras != null && extras.containsKey("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES")) {
                        String[] stringArray = extras.getStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES");
                        int[] intArray = extras.getIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS");
                        this.E = extras.getStringArray("AsusCnTitle");
                        this.F = extras.getIntArray("AsusCnCounts");
                        this.G = extras.getIntArray("AsusStrokeRangeIndexCount");
                        a(new ae(stringArray, intArray));
                        return;
                    }
                }
                a((SectionIndexer) null);
            }
        }
    }

    public abstract void a(CursorLoader cursorLoader, long j);

    public void a(Cursor cursor) {
        a(0, cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.c
    public final void a(View view) {
        if (this.s) {
            ((ContactListPinnedHeaderView) view).setCountView(this.C);
        } else {
            b(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public void a(View view, int i, Cursor cursor) {
        a.C0018a c = c(i);
        if (c instanceof am) {
            am amVar = (am) c;
            long j = amVar.f;
            TextView textView = (TextView) view.findViewById(2131296982);
            if (!b.a(j)) {
                textView.setText(amVar.m);
            } else {
                textView.setText(2131756098);
            }
            TextView textView2 = (TextView) view.findViewById(2131296611);
            if (amVar.a()) {
                textView2.setText(2131756082);
            } else {
                int count = cursor == null ? 0 : cursor.getCount();
                textView2.setText((j == 0 || j == 1 || count < this.y) ? count == 0 ? this.f407a.getString(2131755751) : String.format(this.f407a.getResources().getQuantityText(2131623939, count).toString(), Integer.valueOf(count)) : this.U.getString(2131755659, Integer.valueOf(this.y)));
            }
            if (com.android.contacts.skin.a.b()) {
                View findViewById = view.findViewById(2131296991);
                int color = this.f407a.getResources().getColor(2131034197);
                if (textView != null) {
                    textView.setTextColor(color);
                }
                if (textView2 != null) {
                    textView2.setTextColor(this.f407a.getResources().getColor(2131034130));
                }
                if (findViewById != null) {
                    findViewById.setBackgroundColor(color);
                }
            } else if (com.android.contacts.skin.a.c()) {
                View findViewById2 = view.findViewById(2131296991);
                int a2 = com.android.contacts.skin.a.a(2);
                if (textView != null) {
                    textView.setTextColor(a2);
                }
                if (textView2 != null) {
                    textView2.setTextColor(com.android.contacts.skin.a.a(2));
                }
                if (findViewById2 != null) {
                    findViewById2.setBackgroundColor(com.android.contacts.skin.a.a(2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.c
    public final void a(View view, String str) {
        ((ContactListPinnedHeaderView) view).setSectionHeader(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ContactListItemView contactListItemView, int i, Cursor cursor, int i2, int i3, int i4, int i5, int i6) {
        long j = 0;
        if (!cursor.isNull(i2)) {
            j = cursor.getLong(i2);
        }
        boolean isNull = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM) >= 0 ? cursor.isNull(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)) : true;
        if (j == 0 && !isNull) {
            int i7 = cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM));
            if (i7 == 2) {
                j = -2;
            } else if (i7 == 1) {
                j = -1;
            }
        }
        AsusQuickContactBadge b2 = contactListItemView.b();
        b2.a(a(i, cursor, i4, i5));
        b2.setTag(contactListItemView.getTag());
        if (j != 0 || i3 == -1) {
            this.t.a(b2, j, this.f, (k.d) null);
            return;
        }
        String string = cursor.getString(i3);
        Uri parse = string == null ? null : Uri.parse(string);
        k.d dVar = null;
        if (parse == null) {
            dVar = a(cursor, i6, i5);
        }
        this.t.a((ImageView) b2, parse, -1, this.f, true, dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x014c -> B:46:0x00b2). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.android.contacts.list.ContactListItemView r9, boolean r10, long r11) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.o.a(com.android.contacts.list.ContactListItemView, boolean, long):void");
    }

    public final void a(al alVar) {
        alVar.f1780a = this.x;
        alVar.f1781b = false;
    }

    public void a(String str) {
        this.u = str;
        if (TextUtils.isEmpty(str)) {
            this.v = null;
        } else {
            this.v = str.toUpperCase().toCharArray();
        }
    }

    public void a(boolean z) {
        int size = this.f408b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            a.C0018a c = c(i);
            if ((c instanceof am) && ((am) c).f == 0) {
                break;
            }
            i++;
        }
        if (i != -1) {
            b(i);
            a(i, z);
        }
    }

    protected void b() {
        a(d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.widget.c
    public final void b(View view) {
        ((ContactListPinnedHeaderView) view).setCountView(null);
    }

    public void b(boolean z) {
        this.w = z;
    }

    public final void c(Cursor cursor) {
        if (cursor.getCount() == 0) {
            Log.e("ContactEntryListAdapter", "Directory search loader returned an empty cursor, which implies we have no directory entries.", new RuntimeException());
            return;
        }
        HashSet hashSet = new HashSet();
        int columnIndex = cursor.getColumnIndex("_id");
        int columnIndex2 = cursor.getColumnIndex("directoryType");
        int columnIndex3 = cursor.getColumnIndex("displayName");
        int columnIndex4 = cursor.getColumnIndex("photoSupport");
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            long j = cursor.getLong(columnIndex);
            hashSet.add(Long.valueOf(j));
            if (a(j) == -1) {
                am amVar = new am(false);
                amVar.f = j;
                if (b.a(j)) {
                    if (b.b(j)) {
                        amVar.m = this.U.getString(2131755760);
                    } else {
                        amVar.m = this.U.getString(2131756098);
                    }
                } else if (b.b(j)) {
                    amVar.m = this.U.getString(2131755760);
                } else {
                    amVar.m = this.e.toString();
                }
                amVar.g = cursor.getString(columnIndex2);
                amVar.h = cursor.getString(columnIndex3);
                int i = cursor.getInt(columnIndex4);
                amVar.k = i == 1 || i == 3;
                a(amVar);
            }
        }
        int size = this.f408b.size();
        while (true) {
            size--;
            if (size >= 0) {
                a.C0018a c = c(size);
                if ((c instanceof am) && !hashSet.contains(Long.valueOf(((am) c).f))) {
                    a_(size);
                }
            } else {
                this.c = false;
                notifyDataSetChanged();
                return;
            }
        }
    }

    public final void c(boolean z) {
        SectionIndexer sectionIndexer;
        this.s = z;
        if (z && (sectionIndexer = this.V) != null) {
            ae aeVar = (ae) sectionIndexer;
            String string = this.f407a.getString(2131756354);
            if (aeVar.f1766a == null) {
                return;
            }
            if (aeVar.f1766a.length <= 0 || !string.equals(aeVar.f1766a[0])) {
                String[] strArr = new String[aeVar.f1766a.length + 1];
                int[] iArr = new int[aeVar.f1767b.length + 1];
                strArr[0] = string;
                iArr[0] = 0;
                for (int i = 1; i <= aeVar.f1767b.length; i++) {
                    strArr[i] = aeVar.f1766a[i - 1];
                    iArr[i] = aeVar.f1767b[i - 1] + 1;
                }
                aeVar.f1766a = strArr;
                aeVar.f1767b = iArr;
                aeVar.c++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final am d() {
        am amVar = new am(true);
        amVar.f = 0L;
        amVar.g = this.f407a.getString(2131755457);
        amVar.j = true;
        amVar.k = true;
        amVar.m = this.e.toString();
        return amVar;
    }

    public final boolean e() {
        boolean z;
        int size = this.f408b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            a.C0018a c = c(i);
            if ((c instanceof am) && ((am) c).a()) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // com.android.a.b.a, android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 3;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        boolean z = false;
        if (this.z) {
            if (this.w) {
                z = TextUtils.isEmpty(this.u);
            } else if (!this.d) {
                z = super.isEmpty();
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void k(int i) {
        this.e = this.f407a.getResources().getText(i);
    }

    public final boolean l(int i) {
        a.C0018a c = c(i);
        return c instanceof am ? ((am) c).k : true;
    }
}
