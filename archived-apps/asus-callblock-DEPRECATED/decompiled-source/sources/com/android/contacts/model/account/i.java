package com.android.contacts.model.account;

import android.content.Context;
import android.util.Log;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.util.DateUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/i.class */
public final class i extends e {
    public i(Context context, String str) {
        super(context, str, "com.asus.pcsync");
        this.f2000a = "com.asus.pcsync";
        try {
            b a2 = a("vnd.android.cursor.item/contact_event");
            a2.r = DateUtils.NO_YEAR_DATE_FORMAT;
            a2.m = 2;
            List<a.d> list = a2.n;
            a.d a3 = a(1, false);
            a3.c = true;
            a3.d = 1;
            list.add(a3);
        } catch (a.C0050a e) {
            Log.e("PCSyncAccountType", "Problem building account type", e);
        }
    }
}
