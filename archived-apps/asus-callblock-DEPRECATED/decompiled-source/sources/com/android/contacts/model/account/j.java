package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.android.contacts.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.account.d;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.a;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/j.class */
public final class j extends d {
    public static final String i = b.a.f612b;

    public j(Context context) {
        this.f2000a = b.a.f612b;
        if (!PhoneCapabilityTester.isVerizon()) {
            this.e = 2131755021;
        } else if (PhoneCapabilityTester.isVerizonPad()) {
            this.e = 2131755022;
        } else {
            this.e = 2131755739;
        }
        this.f = 2131165312;
        this.c = null;
        this.d = this.c;
        try {
            t();
            i(context);
            u();
            j(context);
            g(context);
            f(context);
            e(context);
            h(context);
            k(context);
            l(context);
            m(context);
            n(context);
            String a2 = a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR);
            if (!a2.toLowerCase().startsWith("cn") && !a2.toLowerCase().startsWith("cta")) {
                v();
            }
            w();
            com.android.contacts.model.a.b a3 = a(new com.android.contacts.model.a.b("vnd.android.cursor.item/contact_event", 2131755615, 150, 2131427542));
            a3.h = new d.C0051d();
            a3.j = new d.v(CoverUtils.CoverData.COVER_URI);
            a3.l = CoverUtils.CoverData.COVER_TYPE;
            a3.n = new ArrayList();
            a3.r = DateUtils.NO_YEAR_DATE_FORMAT;
            a3.s = DateUtils.FULL_DATE_FORMAT;
            List<a.d> list = a3.n;
            a.d a4 = a(3, true);
            a4.d = 1;
            list.add(a4);
            a3.n.add(a(1, false));
            a3.n.add(a(2, false));
            List<a.d> list2 = a3.n;
            a.d a5 = a(0, false);
            a5.c = true;
            a5.e = CoverUtils.CoverData.USER_SET;
            list2.add(a5);
            a3.p = new ContentValues();
            a3.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
            a3.o = new ArrayList();
            a3.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755615, 1));
            this.h = true;
        } catch (a.C0050a e) {
            Log.e("PhoneAccountType", "Problem building account type", e);
        }
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return true;
    }

    @Override // com.android.contacts.model.account.d, com.android.contacts.model.account.a
    public final boolean q() {
        return true;
    }
}
