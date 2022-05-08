package com.android.contacts.model;

import android.content.Context;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f1992a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static a f1993b;

    public static a a(Context context) {
        synchronized (f1992a) {
            if (f1993b == null) {
                f1993b = new b(context.getApplicationContext());
            }
        }
        return f1993b;
    }

    public static void a() {
        f1993b = null;
    }

    public b a(String str, String str2, String str3) {
        com.android.contacts.model.account.a a2 = a(str, str2);
        return a2 == null ? null : a2.a(str3);
    }

    public abstract com.android.contacts.model.account.a a(com.android.contacts.model.account.b bVar);

    public final com.android.contacts.model.account.a a(String str, String str2) {
        return a(com.android.contacts.model.account.b.a(str, str2));
    }

    public abstract List<AccountWithDataSet> a(boolean z);

    public final boolean a(AccountWithDataSet accountWithDataSet) {
        boolean z;
        Iterator<AccountWithDataSet> it = a(false).iterator();
        while (true) {
            if (it.hasNext()) {
                if (accountWithDataSet.equals(it.next())) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    public abstract List<AccountWithDataSet> b();

    public abstract void b(String str, String str2, String str3);

    public abstract Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> c();

    public abstract List<com.android.contacts.model.account.a> d();
}
