package com.android.contacts.model.account;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.google.a.a.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/b.class */
public final class b {
    private static final String[] c = {"_id"};
    private static final Uri d = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("limit", "1").build();

    /* renamed from: a  reason: collision with root package name */
    public final String f2008a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2009b;

    private b(String str, String str2) {
        String str3 = null;
        this.f2008a = TextUtils.isEmpty(str) ? null : str;
        if (!TextUtils.isEmpty(str2)) {
            str3 = str2;
        }
        this.f2009b = str3;
    }

    public static b a(String str, String str2) {
        return new b(str, str2);
    }

    public final boolean a(Context context) {
        String str;
        String[] strArr;
        boolean moveToFirst;
        if (TextUtils.isEmpty(this.f2009b)) {
            str = "account_type = ? AND data_set IS NULL";
            strArr = new String[]{this.f2008a};
        } else {
            str = "account_type = ? AND data_set = ?";
            strArr = new String[]{this.f2008a, this.f2009b};
        }
        Cursor query = context.getContentResolver().query(d, c, str, strArr, null);
        if (query == null) {
            moveToFirst = false;
        } else {
            try {
                moveToFirst = query.moveToFirst();
            } finally {
                query.close();
            }
        }
        return moveToFirst;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof b)) {
            z = false;
        } else {
            b bVar = (b) obj;
            z = false;
            if (c.a(this.f2008a, bVar.f2008a)) {
                z = false;
                if (c.a(this.f2009b, bVar.f2009b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = this.f2008a == null ? 0 : this.f2008a.hashCode();
        if (this.f2009b != null) {
            i = this.f2009b.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return "[" + this.f2008a + "/" + this.f2009b + "]";
    }
}
