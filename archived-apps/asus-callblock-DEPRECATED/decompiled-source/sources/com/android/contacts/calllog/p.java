package com.android.contacts.calllog;

import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.Constants;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final String f739a = "ContactInfoHelper";

    /* renamed from: b  reason: collision with root package name */
    private final Context f740b;
    private final String c;
    private final t d;

    public p(Context context, String str) {
        this.f740b = context;
        this.c = str;
        this.d = new t(this.f740b);
    }

    public static Uri a(String str) {
        Uri uri = ContactsContract.PhoneLookup.ENTERPRISE_CONTENT_FILTER_URI;
        Uri uri2 = uri;
        String str2 = str;
        if (!CompatUtils.isNCompatible()) {
            if (-1 != -1) {
                uri2 = ContactsContract.PhoneLookup.CONTENT_FILTER_URI;
                str2 = str;
            } else {
                str2 = Uri.encode(str);
                uri2 = uri;
            }
        }
        Uri.Builder appendQueryParameter = uri2.buildUpon().appendPath(str2).appendQueryParameter(Constants.SCHEME_SIP, String.valueOf(CallUtil.isUriNumber(str2)));
        if (-1 != -1) {
            appendQueryParameter.appendQueryParameter("directory", "-1");
        }
        return appendQueryParameter.build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0175, code lost:
        r15 = new com.android.contacts.calllog.o();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0181, code lost:
        r15.f737a = android.provider.ContactsContract.Contacts.getLookupUri(r0, r0.getString(7));
        r15.f738b = r0.getString(1);
        r15.c = r0.getInt(2);
        r15.d = r0.getString(3);
        r15.e = r0.getString(4);
        r15.g = r0.getString(5);
        r15.h = r0.getLong(6);
        r15.i = com.android.contacts.util.UriUtils.parseUriOrNull(r0.getString(8));
        r15.f = null;
        r15.l = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0203, code lost:
        if (com.android.contacts.util.PhoneCapabilityTester.IsAsusDevice() == false) goto L_0x0269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0206, code lost:
        r9 = r0.getInt(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0212, code lost:
        r15.j = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0219, code lost:
        if (com.android.contacts.util.PhoneCapabilityTester.IsAsusDevice() != false) goto L_0x0234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x021f, code lost:
        if (com.android.contacts.util.PhoneCapabilityTester.IsUnbundled() != false) goto L_0x0234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0222, code lost:
        r15.j = com.android.contacts.simcardmanage.e.a(r15.l, r7.f740b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0236, code lost:
        r15.k = com.android.contacts.c.b.a(r7.f740b, java.lang.String.valueOf(r15.l));
        r15.v = com.android.contacts.q.a((java.lang.Long) null, java.lang.Long.valueOf(r0.getLong(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x025e, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0265, code lost:
        r8 = r15;
        r15 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0269, code lost:
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0292, code lost:
        r11 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0294, code lost:
        r8 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0297, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02a0, code lost:
        throw r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02a1, code lost:
        r15 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02b2, code lost:
        r15 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02b4, code lost:
        r8 = r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.contacts.calllog.o a(android.net.Uri r8, int r9) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.p.a(android.net.Uri, int):com.android.contacts.calllog.o");
    }

    private o a(String str, int i) {
        return a(a(str), i);
    }

    private String a(String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str)) {
            str3 = BuildConfig.FLAVOR;
        } else {
            str3 = str;
            if (!CallUtil.isUriNumber(str)) {
                String str4 = str2;
                if (TextUtils.isEmpty(str2)) {
                    str4 = this.c;
                }
                str3 = PhoneNumberUtils.formatNumber(str, null, str4);
            }
        }
        return str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        if (r11.length() == 6) goto L_0x0091;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.contacts.calllog.o b(java.lang.String r6, java.lang.String r7, int r8) {
        /*
            r5 = this;
            r0 = 0
            r9 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00d7
            r0 = r6
            r1 = r7
            java.lang.String r0 = android.telephony.PhoneNumberUtils.formatNumberToE164(r0, r1)     // Catch: RuntimeException -> 0x0054
            r10 = r0
        L_0x0011:
            r0 = r10
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00d7
            r0 = r10
            r11 = r0
        L_0x001d:
            r0 = r9
            r10 = r0
            r0 = r11
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0051
            r0 = r5
            r1 = r11
            android.net.Uri r1 = a(r1)
            r2 = r8
            com.android.contacts.calllog.o r0 = r0.a(r1, r2)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0067
            r0 = r9
            com.android.contacts.calllog.o r1 = com.android.contacts.calllog.o.w
            if (r0 == r1) goto L_0x0067
            r0 = r9
            r1 = r5
            r2 = r6
            r3 = r7
            java.lang.String r1 = r1.a(r2, r3)
            r0.f = r1
            r0 = r9
            r10 = r0
        L_0x0051:
            r0 = r10
            return r0
        L_0x0054:
            r10 = move-exception
            java.lang.String r0 = "ContactInfoHelper"
            r1 = r10
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = 0
            r10 = r0
            goto L_0x0011
        L_0x0067:
            r0 = r9
            r10 = r0
            java.lang.String r0 = "ro.build.asus.sku"
            java.lang.String r0 = com.asus.contacts.a.a(r0)
            java.lang.String r1 = "TW"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0051
            r0 = r11
            int r0 = r0.length()
            r1 = 5
            if (r0 == r1) goto L_0x0091
            r0 = r9
            r10 = r0
            r0 = r11
            int r0 = r0.length()
            r1 = 6
            if (r0 != r1) goto L_0x0051
        L_0x0091:
            r0 = r11
            r1 = 1
            r2 = r11
            int r2 = r2.length()
            java.lang.String r0 = r0.substring(r1, r2)
            r10 = r0
            r0 = r5
            android.net.Uri r1 = android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI
            r2 = r10
            java.lang.String r2 = android.net.Uri.encode(r2)
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)
            r2 = r8
            com.android.contacts.calllog.o r0 = r0.a(r1, r2)
            r11 = r0
            r0 = r11
            r10 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0051
            r0 = r11
            r10 = r0
            r0 = r11
            com.android.contacts.calllog.o r1 = com.android.contacts.calllog.o.w
            if (r0 == r1) goto L_0x0051
            r0 = r11
            r1 = r5
            r2 = r6
            r3 = r7
            java.lang.String r1 = r1.a(r2, r3)
            r0.f = r1
            r0 = r11
            r10 = r0
            goto L_0x0051
        L_0x00d7:
            r0 = r6
            r11 = r0
            goto L_0x001d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.p.b(java.lang.String, java.lang.String, int):com.android.contacts.calllog.o");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f6, code lost:
        if (r0 == com.android.contacts.calllog.o.w) goto L_0x00f9;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.calllog.o a(java.lang.String r8, java.lang.String r9, int r10) {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.calllog.p.a(java.lang.String, java.lang.String, int):com.android.contacts.calllog.o");
    }
}
