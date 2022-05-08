package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.model.account.d;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/e.class */
public class e extends d {
    public e(Context context, String str, String str2) {
        this.f2000a = str2;
        this.c = null;
        this.d = str;
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
            b a2 = a(new b("vnd.android.cursor.item/contact_event", 2131755615, 150, 2131427542));
            a2.h = new d.C0051d();
            a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
            a2.m = 1;
            a2.l = CoverUtils.CoverData.COVER_TYPE;
            a2.n = new ArrayList();
            List<a.d> list = a2.n;
            a.d a3 = a(3, false);
            a3.d = 1;
            list.add(a3);
            a2.s = DateUtils.DATE_AND_TIME_FORMAT;
            a2.o = new ArrayList();
            a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755615, 1));
            n(context);
            w();
            this.h = true;
        } catch (a.C0050a e) {
            Log.e("ExchangeAccountType", "Problem building account type", e);
        }
    }

    public static boolean b(String str) {
        return "com.android.exchange".equals(str) || "com.google.android.exchange".equals(str) || "com.asus.exchange".equals(str) || "com.google.android.gm.exchange".equals(str);
    }

    @Override // com.android.contacts.model.account.a
    public final boolean d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b e(Context context) {
        b e = super.e(context);
        boolean equals = Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage());
        e.l = CoverUtils.CoverData.COVER_TYPE;
        e.n = new ArrayList();
        List<a.d> list = e.n;
        a.d c = c(2);
        c.d = 1;
        list.add(c);
        List<a.d> list2 = e.n;
        a.d c2 = c(1);
        c2.d = 1;
        list2.add(c2);
        List<a.d> list3 = e.n;
        a.d c3 = c(3);
        c3.d = 1;
        list3.add(c3);
        e.m = 3;
        e.o = new ArrayList();
        if (equals) {
            List<a.c> list4 = e.o;
            a.c cVar = new a.c("data10", 2131755960, 139377);
            cVar.e = true;
            list4.add(cVar);
            e.o.add(new a.c("data9", 2131755963, 139377));
            e.o.add(new a.c("data8", 2131755964, 139377));
            e.o.add(new a.c("data7", 2131755959, 139377));
            e.o.add(new a.c("data4", 2131755965, 139377));
        } else {
            e.o.add(new a.c("data4", 2131755965, 139377));
            e.o.add(new a.c("data7", 2131755959, 139377));
            e.o.add(new a.c("data8", 2131755964, 139377));
            e.o.add(new a.c("data9", 2131755963, 139377));
            List<a.c> list5 = e.o;
            a.c cVar2 = new a.c("data10", 2131755960, 139377);
            cVar2.e = true;
            list5.add(cVar2);
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b f(Context context) {
        b f = super.f(context);
        f.m = 3;
        f.o = new ArrayList();
        f.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755601, 33));
        return f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b g(Context context) {
        b g = super.g(context);
        g.l = CoverUtils.CoverData.COVER_TYPE;
        g.n = new ArrayList();
        List<a.d> list = g.n;
        a.d a2 = a(2);
        a2.d = 1;
        list.add(a2);
        List<a.d> list2 = g.n;
        a.d a3 = a(1);
        a3.d = 2;
        list2.add(a3);
        List<a.d> list3 = g.n;
        a.d a4 = a(3);
        a4.d = 2;
        list3.add(a4);
        List<a.d> list4 = g.n;
        a.d a5 = a(4);
        a5.c = true;
        a5.d = 1;
        list4.add(a5);
        List<a.d> list5 = g.n;
        a.d a6 = a(5);
        a6.c = true;
        a6.d = 1;
        list5.add(a6);
        List<a.d> list6 = g.n;
        a.d a7 = a(6);
        a7.c = true;
        a7.d = 1;
        list6.add(a7);
        List<a.d> list7 = g.n;
        a.d a8 = a(9);
        a8.c = true;
        a8.d = 1;
        list7.add(a8);
        List<a.d> list8 = g.n;
        a.d a9 = a(10);
        a9.c = true;
        a9.d = 1;
        list8.add(a9);
        List<a.d> list9 = g.n;
        a.d a10 = a(20);
        a10.c = true;
        a10.d = 1;
        list9.add(a10);
        List<a.d> list10 = g.n;
        a.d a11 = a(14);
        a11.c = true;
        a11.d = 1;
        list10.add(a11);
        List<a.d> list11 = g.n;
        a.d a12 = a(19);
        a12.c = true;
        a12.d = 1;
        list11.add(a12);
        g.o = new ArrayList();
        g.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755945, 3));
        return g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b h(Context context) {
        b h = super.h(context);
        h.m = 3;
        h.p = new ContentValues();
        h.p.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 3);
        h.o = new ArrayList();
        h.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755690, 33));
        return h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b j(Context context) {
        b j = super.j(context);
        j.m = 1;
        j.o = new ArrayList();
        j.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755883, 8289));
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b k(Context context) {
        b k = super.k(context);
        k.m = 1;
        k.o = new ArrayList();
        k.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755664, 8193));
        k.o.add(new a.c("data4", 2131755665, 8193));
        return k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b l(Context context) {
        b l = super.l(context);
        l.m = 1;
        l.o = new ArrayList();
        l.o.add(new a.c("data15", -1, -1));
        return l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b m(Context context) {
        b m = super.m(context);
        m.o = new ArrayList();
        m.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755733, 147457));
        return m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b n(Context context) {
        b n = super.n(context);
        n.m = 1;
        n.o = new ArrayList();
        n.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131756479, 17));
        return n;
    }

    @Override // com.android.contacts.model.account.d, com.android.contacts.model.account.a
    public final boolean q() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b t() {
        b a2 = a(new b("vnd.android.cursor.item/name", 2131755859, -1, 2131427672));
        a2.h = new d.v(2131755859);
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_URI, 2131755662, 8289));
        List<a.c> list = a2.o;
        a.c cVar = new a.c("data4", 2131755868, 8289);
        cVar.e = true;
        list.add(cVar);
        a2.o.add(new a.c(CoverUtils.CoverData.USER_SET, 2131755861, 8289));
        a2.o.add(new a.c("data5", 2131755863, 8289));
        a2.o.add(new a.c(CoverUtils.CoverData.COVER_TYPE, 2131755862, 8289));
        a2.o.add(new a.c("data6", 2131755869, 8289));
        a2.o.add(new a.c("data9", 2131755865, 193));
        a2.o.add(new a.c("data7", 2131755866, 193));
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.model.account.d
    public final b u() {
        b a2 = a(new b("#phoneticName", 2131755864, -1, 2131427615));
        a2.h = new d.v(2131755859);
        a2.j = new d.v(CoverUtils.CoverData.COVER_URI);
        a2.m = 1;
        a2.o = new ArrayList();
        a2.o.add(new a.c("data9", 2131755865, 193));
        a2.o.add(new a.c("data7", 2131755866, 193));
        return a2;
    }
}
