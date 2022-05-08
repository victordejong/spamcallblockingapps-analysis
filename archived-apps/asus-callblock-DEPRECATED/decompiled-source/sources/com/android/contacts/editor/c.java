package com.android.contacts.editor;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.b;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.m;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/c.class */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final List<AccountWithDataSet> f1211b = m.f();
    private static c c;

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f1212a;
    private final Context d;
    private final a e;

    private c(Context context) {
        this(context, a.a(context));
    }

    private c(Context context, a aVar) {
        this.d = context.getApplicationContext();
        this.f1212a = PreferenceManager.getDefaultSharedPreferences(this.d);
        this.e = aVar;
    }

    public static c a(Context context) {
        c cVar;
        synchronized (c.class) {
            try {
                if (c == null) {
                    c = new c(context);
                }
                cVar = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public static AccountWithDataSet a(Intent intent) {
        AccountWithDataSet accountWithDataSet;
        if (intent == null) {
            accountWithDataSet = null;
        } else {
            String stringExtra = intent.getStringExtra("accountType");
            String stringExtra2 = intent.getStringExtra("authAccount");
            accountWithDataSet = null;
            if (!TextUtils.isEmpty(stringExtra)) {
                accountWithDataSet = null;
                if (!TextUtils.isEmpty(stringExtra2)) {
                    accountWithDataSet = new AccountWithDataSet(stringExtra2, stringExtra, null);
                }
            }
        }
        return accountWithDataSet;
    }

    private void d() {
        this.f1212a.edit().putString("ContactEditorUtils_known_accounts", BuildConfig.FLAVOR).putString("ContactEditorUtils_default_account", BuildConfig.FLAVOR).apply();
    }

    private List<AccountWithDataSet> e() {
        return this.e.a(true);
    }

    private AccountWithDataSet f() {
        AccountWithDataSet accountWithDataSet = new AccountWithDataSet("AT&T Address Book", "com.att.aab", null);
        if (!a.a(this.d).a(accountWithDataSet)) {
            accountWithDataSet = new AccountWithDataSet(b.a.f611a, b.a.f612b, null);
        }
        return accountWithDataSet;
    }

    private List<AccountWithDataSet> g() {
        List<AccountWithDataSet> list;
        String string = this.f1212a.getString("ContactEditorUtils_known_accounts", null);
        if (TextUtils.isEmpty(string)) {
            list = f1211b;
        } else {
            try {
                list = AccountWithDataSet.b(string);
            } catch (IllegalArgumentException e) {
                Log.e("ContactEditorUtils", "Error with retrieving saved accounts " + e.toString());
                d();
                list = f1211b;
            }
        }
        return list;
    }

    public final AccountWithDataSet a() {
        AccountWithDataSet accountWithDataSet = null;
        String string = this.f1212a.getString("ContactEditorUtils_default_account", null);
        if (!TextUtils.isEmpty(string)) {
            try {
                accountWithDataSet = a.a(this.d).a(true).contains(AccountWithDataSet.a(string)) ? AccountWithDataSet.a(string) : f();
            } catch (IllegalArgumentException e) {
                Log.e("ContactEditorUtils", "Error with retrieving default account " + e.toString());
                d();
                if (PhoneCapabilityTester.isATTSku()) {
                    accountWithDataSet = new AccountWithDataSet("AT&T Address Book", "com.att.aab", null);
                    if (!a.a(this.d).a(accountWithDataSet)) {
                        accountWithDataSet = new AccountWithDataSet(b.a.f611a, b.a.f612b, null);
                    }
                }
            }
        } else if (PhoneCapabilityTester.isATTSku()) {
            accountWithDataSet = f();
        }
        return accountWithDataSet;
    }

    public final void a(AccountWithDataSet accountWithDataSet) {
        SharedPreferences.Editor putBoolean = this.f1212a.edit().putBoolean("ContactEditorUtils_anything_saved", true);
        if (accountWithDataSet == null) {
            putBoolean.putString("ContactEditorUtils_known_accounts", BuildConfig.FLAVOR);
            putBoolean.putString("ContactEditorUtils_default_account", BuildConfig.FLAVOR);
        } else {
            putBoolean.putString("ContactEditorUtils_known_accounts", AccountWithDataSet.a(e()));
            putBoolean.putString("ContactEditorUtils_default_account", AccountWithDataSet.a(new StringBuilder(), accountWithDataSet).toString());
        }
        putBoolean.apply();
    }

    public final boolean b() {
        boolean z;
        if (!this.f1212a.getBoolean("ContactEditorUtils_anything_saved", false)) {
            z = true;
        } else {
            List<AccountWithDataSet> g = g();
            List<AccountWithDataSet> e = e();
            Iterator<AccountWithDataSet> it = e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!g.contains(it.next())) {
                        z = true;
                        break;
                    }
                } else {
                    AccountWithDataSet a2 = a();
                    if (!(a2 == null ? true : e().contains(a2))) {
                        z = true;
                    } else if (a2 != null || e.size() <= 0) {
                        z = false;
                    } else {
                        Log.e("ContactEditorUtils", "Preferences file in an inconsistent state, request that the default account and current writable accounts be saved again");
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public final String[] c() {
        HashSet hashSet = new HashSet();
        for (com.android.contacts.model.account.a aVar : this.e.d()) {
            if (!b.a.f612b.equals(aVar.f2000a) && !"com.asus.sim".equals(aVar.f2000a)) {
                hashSet.add(aVar.f2000a);
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }
}
