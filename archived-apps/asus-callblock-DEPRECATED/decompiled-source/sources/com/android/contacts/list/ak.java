package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.a.b.a;
import com.android.contacts.ae;
import com.android.contacts.airview.f;
import com.android.contacts.b;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ak.class */
public final class ak extends q {
    private SharedPreferences S;
    boolean h;
    private f k;
    private boolean l;
    private final String i = "DefaultContactListAdapter";
    boolean d = false;
    boolean e = true;
    private boolean j = false;
    boolean f = false;
    private final boolean m = PhoneCapabilityTester.isRCSVerizon();
    private final String R = "com.asus.vvm";
    public ae.a g = null;

    public ak(Context context, boolean z) {
        super(context);
        this.l = false;
        this.I = z;
        k(2131755762);
        this.l = AsusAirViewUtils.hasPenFeature(this.U);
        if (this.l) {
            this.k = new f(context);
        }
        this.S = PreferenceManager.getDefaultSharedPreferences(this.f407a);
        this.h = this.S.getBoolean("swipe_to_do_action", false);
    }

    private void a(CursorLoader cursorLoader, long j, ContactListFilter contactListFilter) {
        if (contactListFilter != null && j == 0) {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            switch (contactListFilter.f1712a) {
                case -12:
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        sb.append("isSim != 1 AND ");
                    }
                    sb.append("_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id IN ( SELECT _id FROM accounts WHERE account_type IN " + g() + "))");
                    break;
                case -11:
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        sb.append("isSim != 2 AND ");
                    }
                    sb.append("_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id IN ( SELECT _id FROM accounts WHERE account_type IN " + g() + "))");
                    break;
                case -10:
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        sb.append("isSim = 0 AND ");
                    }
                    sb.append("_id IN ( SELECT contact_id FROM raw_contacts WHERE account_id IN ( SELECT _id FROM accounts WHERE account_type IN " + g() + "))");
                    break;
                case -9:
                    if (!PhoneCapabilityTester.IsAsusDevice()) {
                        Log.d("DefaultContactListAdapter", "need more test NO SIM1");
                        sb.append("(_id NOT IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL AND contact_id IS NOT NULL ) AS combineTable WHERE combineTable.account_type ='" + b.a.d + "' AND combineTable.account_name ='" + b.a.c + "'))");
                        break;
                    } else {
                        sb.append("isSim != 1");
                        break;
                    }
                case -8:
                    if (!PhoneCapabilityTester.IsAsusDevice()) {
                        Log.d("DefaultContactListAdapter", "need more test NO SIM2");
                        sb.append("(_id NOT IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL AND contact_id IS NOT NULL ) AS combineTable WHERE combineTable.account_type ='" + b.a.d + "' AND combineTable.account_name ='SIM2'))");
                        break;
                    } else {
                        sb.append("isSim != 2");
                        break;
                    }
                case -7:
                    if (!PhoneCapabilityTester.IsAsusDevice()) {
                        sb.append("(_id NOT IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL AND contact_id IS NOT NULL ) AS combineTable WHERE combineTable.account_type ='" + b.a.d + "'))");
                        break;
                    } else {
                        sb.append("isSim = 0");
                        break;
                    }
                case -5:
                    sb.append("has_phone_number=1");
                    break;
                case -4:
                    sb.append("starred!=0");
                    break;
                case -3:
                    if (!PhoneCapabilityTester.IsAsusDevice()) {
                        if (a.a(this.U).a(false).size() > 0) {
                            sb.append("in_visible_group=1");
                            if (f()) {
                                sb.append(" AND has_phone_number=1");
                                break;
                            }
                        }
                    } else {
                        sb.append("in_visible_group=1");
                        if (f()) {
                            sb.append(" AND has_phone_number=1");
                            break;
                        }
                    }
                    break;
            }
            cursorLoader.setSelection(sb.toString());
            cursorLoader.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00c2 A[Catch: all -> 0x0101, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0101, blocks: (B:4:0x0048, B:6:0x0052, B:16:0x00c2, B:30:0x00f8, B:32:0x0100), top: B:60:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String[] a(long r8) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ak.a(long):java.lang.String[]");
    }

    private String g() {
        List<AccountWithDataSet> a2 = a.a(this.U).a(true);
        Iterator<AccountWithDataSet> it = a2.iterator();
        String str = "(";
        while (it.hasNext()) {
            str = str + " '" + it.next().type + "',";
        }
        String str2 = str;
        if (a2.size() > 0) {
            str2 = str.substring(0, str.length() - 1);
        }
        return str2 + ")";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q, com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, this.f);
        contactListItemView.setUnknownNameText(this.N);
        contactListItemView.setQuickContactEnabled(this.q);
        contactListItemView.setActivatedStateSupported(this.A);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        String str;
        am amVar;
        int i = 0;
        if (cursorLoader instanceof bg) {
            ((bg) cursorLoader).f1802a = this.r;
        }
        ContactListFilter contactListFilter = this.B;
        String str2 = BuildConfig.FLAVOR;
        if (this.w) {
            String str3 = this.u;
            String str4 = str3;
            if (str3 == null) {
                str4 = BuildConfig.FLAVOR;
            }
            String trim = str4.trim();
            if (TextUtils.isEmpty(trim)) {
                cursorLoader.setUri(ContactsContract.Contacts.CONTENT_URI);
                cursorLoader.setProjection(d(false));
                cursorLoader.setSelection("0");
                str = str2;
            } else {
                Uri.Builder buildUpon = com.android.contacts.d.a.a().buildUpon();
                buildUpon.appendPath(trim);
                buildUpon.appendQueryParameter("directory", String.valueOf(j));
                if (j == 0 || j == 1) {
                    str = BuildConfig.FLAVOR + "display_name LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(trim) + "%' DESC, display_name_alt LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(trim) + "%' DESC, times_contacted DESC, phonebook_bucket, ";
                } else {
                    int size = this.f408b.size();
                    while (true) {
                        if (i >= size) {
                            amVar = null;
                            break;
                        }
                        a.C0018a c = c(i);
                        if (c instanceof am) {
                            amVar = (am) c;
                            if (amVar.f == j) {
                                break;
                            }
                        }
                        i++;
                    }
                    int i2 = amVar.l;
                    int i3 = i2;
                    if (i2 == -1) {
                        i3 = this.y;
                    }
                    buildUpon.appendQueryParameter("limit", String.valueOf(i3));
                    str = BuildConfig.FLAVOR;
                }
                buildUpon.appendQueryParameter("deferred_snippeting", "1");
                cursorLoader.setUri(buildUpon.build());
                cursorLoader.setProjection(d(true));
            }
            str2 = str;
            if (this.d) {
                a(cursorLoader, j, contactListFilter);
                str2 = str;
            }
        } else {
            Uri uri = ContactsContract.Contacts.CONTENT_URI;
            Uri uri2 = uri;
            if (contactListFilter != null) {
                uri2 = uri;
                if (contactListFilter.f1712a == -6) {
                    String str5 = this.P;
                    uri2 = str5 != null ? Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, str5) : ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.Q);
                }
            }
            Uri uri3 = uri2;
            if (j == 0) {
                uri3 = uri2;
                if (this.X) {
                    uri3 = a(uri2);
                }
            }
            Uri uri4 = uri3;
            if (contactListFilter != null) {
                uri4 = uri3;
                if (contactListFilter.f1712a != -3) {
                    uri4 = uri3;
                    if (contactListFilter.f1712a != -6) {
                        Uri.Builder buildUpon2 = uri3.buildUpon();
                        buildUpon2.appendQueryParameter("directory", "0");
                        if (contactListFilter.f1712a == 0) {
                            contactListFilter.a(buildUpon2);
                        }
                        uri4 = buildUpon2.build();
                    }
                }
            }
            cursorLoader.setUri(uri4);
            cursorLoader.setProjection(d(false));
            a(cursorLoader, j, contactListFilter);
        }
        cursorLoader.setSortOrder((!PhoneCapabilityTester.IsAsusDevice() || Locale.getDefault() == null || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) ? this.o == 1 ? str2 + "sort_key" : str2 + "sort_key_alt" : str2 + "display_name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:158:0x052d -> B:172:0x022c). Please submit an issue!!! */
    @Override // com.android.a.b.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.view.View r11, int r12, android.database.Cursor r13, int r14) {
        /*
            Method dump skipped, instructions count: 1504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ak.a(android.view.View, int, android.database.Cursor, int):void");
    }

    public final void c() {
        this.J.clear();
        this.L.clear();
        this.K.clear();
    }

    public final void e(boolean z) {
        this.j = z;
        if (!this.j) {
            this.J.clear();
            this.K.clear();
            this.L.clear();
        }
    }
}
