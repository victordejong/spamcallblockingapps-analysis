package com.tmobile.tmoid.helperlib.sit.icc;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.tmobile.tmoid.helperlib.util.Log;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/icc/IccCommunicator.class */
public class IccCommunicator {

    /* renamed from: a */
    private Context f14858a;

    /* renamed from: b */
    private TelephonyManager f14859b;

    public IccCommunicator(Context context) {
        this.f14859b = null;
        this.f14858a = context;
        this.f14859b = (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: b */
    public static int m4840b(char c) {
        if ('0' <= c && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if ('a' > c || c > 'f') {
            c2 = 'A';
            if ('A' > c || c > 'F') {
                throw new NumberFormatException("" + c + " is not a valid hex digit");
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: c */
    public static byte[] m4839c(String str) {
        int i = 0;
        if (str == null) {
            return new byte[0];
        }
        if (str.length() % 2 == 0) {
            byte[] bArr = new byte[(str.length() / 2) + 1];
            bArr[0] = (byte) (str.length() / 2);
            int i2 = 1;
            while (i < str.length()) {
                bArr[i2] = (byte) (((m4840b(str.charAt(i)) * 16) + m4840b(str.charAt(i + 1))) & 255);
                i += 2;
                i2++;
            }
            return bArr;
        }
        throw new NumberFormatException(str + " is not a valid hex string");
    }

    /* renamed from: d */
    public static byte[] m4838d(String str) {
        byte[] c = m4839c(str);
        if (c.length == 0) {
            return c;
        }
        byte[] bArr = new byte[c.length - 1];
        System.arraycopy(c, 1, bArr, 0, c.length - 1);
        return bArr;
    }

    /* renamed from: a */
    public boolean m4841a() {
        return Build.VERSION.SDK_INT >= 21 && this.f14859b.hasIccCard();
    }

    @RequiresApi
    /* renamed from: e */
    public IccAkaAuthResponse m4837e(String str) {
        Log.m4654d("TMO-Agent", "performAkaAuthenticationNew challange: " + str);
        return IccAkaAuthResponse.m4847a(((TelephonyManager) this.f14858a.getSystemService("phone")).getIccAuthentication(2, 129, Base64.encodeToString(m4838d(str), 2)));
    }
}
