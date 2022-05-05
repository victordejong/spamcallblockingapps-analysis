package com.vladlee.p077b.p078a;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.SmsMessage;
/* renamed from: com.vladlee.b.a.b */
/* loaded from: classes-dex2jar.jar:com/vladlee/b/a/b.class */
public final class C3252b {
    /* renamed from: a */
    public static Uri m394a(Context context, C3251a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("body", aVar.f19224b);
        contentValues.put("address", aVar.f19223a);
        return context.getContentResolver().insert(Telephony.Sms.Inbox.CONTENT_URI, contentValues);
    }

    /* renamed from: a */
    public static C3251a m393a(Intent intent) {
        Bundle extras = intent.getExtras();
        C3251a aVar = new C3251a();
        if (extras == null) {
            return null;
        }
        Object[] objArr = (Object[]) extras.get("pdus");
        try {
            aVar.f19223a = SmsMessage.createFromPdu((byte[]) objArr[0]).getOriginatingAddress();
        } catch (NullPointerException e) {
            aVar.f19223a = null;
        }
        aVar.f19224b = "";
        for (Object obj : objArr) {
            String displayMessageBody = SmsMessage.createFromPdu((byte[]) obj).getDisplayMessageBody();
            if (displayMessageBody != null) {
                aVar.f19224b += displayMessageBody;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public static void m395a(Context context, Uri uri, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", Integer.valueOf(i));
        context.getContentResolver().update(uri, contentValues, null, null);
    }

    /* renamed from: b */
    public static Uri m392b(Context context, C3251a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("body", aVar.f19224b);
        contentValues.put("address", aVar.f19223a);
        contentValues.put("status", (Integer) 32);
        return context.getContentResolver().insert(Telephony.Sms.Sent.CONTENT_URI, contentValues);
    }
}
