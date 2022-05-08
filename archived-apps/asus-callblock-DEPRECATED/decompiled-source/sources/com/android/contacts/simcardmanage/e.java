package com.android.contacts.simcardmanage;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.b;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.vcard.SelectAccountActivity;
import com.android.internal.telephony.GsmAlphabet;
import com.asus.prefersim.c;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/e.class */
public final class e implements d {
    private static String k = "SimCardContactsManager";
    private static int l = 0;
    private static byte m = (byte) 0;
    private static TelephonyManager n = null;
    private static e s = null;
    private ContentResolver o;
    private Context p;
    ContentValues e = new ContentValues();
    String f = "raw_contact_id = ? AND _id = ?";
    String g = "raw_contact_id = ? AND _id = ?";
    String h = "raw_contact_id = ? AND _id = ?";
    String i = "raw_contact_id = ? AND _id = ?";
    String j = "raw_contact_id = ? AND _id = ?";
    private boolean t = true;
    private boolean u = true;
    private Uri q = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
    private Uri r = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();

    public e(Context context) {
        this.p = context.getApplicationContext();
        this.o = this.p.getContentResolver();
        this.e.put(SelectAccountActivity.ACCOUNT_NAME, b.a.c);
        this.e.put(SelectAccountActivity.ACCOUNT_TYPE, b.a.d);
        this.e.put("aggregation_mode", (Integer) 3);
        this.q.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, b.a.c).build();
        this.q.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, b.a.d).build();
        if (PhoneCapabilityTester.IsAsusDevice()) {
            this.r.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, b.a.c).build();
            this.r.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, "asus.local.simcard2").build();
            return;
        }
        this.r.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, "SIM2").build();
        this.r.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, b.a.d).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(long r7, android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.a(long, android.content.Context):int");
    }

    private static int a(Cursor cursor, int i) {
        return cursor.getColumnIndex(f2157a[i]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        r8 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        if (com.android.contacts.q.a(r4.charAt(r6 - 1), r4.charAt(r6)) == false) goto L_0x0063;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005c, code lost:
        r8 = (r7 - r0) - java.lang.String.valueOf(r4.charAt(r6 - 1)).getBytes("utf-16BE").length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        r0 = java.lang.String.valueOf(r4.charAt(r6)).getBytes("utf-16BE").length;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(java.lang.String r4, int r5) {
        /*
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0004:
            r0 = r5
            r8 = r0
            r0 = r6
            r1 = r4
            int r1 = r1.length()     // Catch: Exception -> 0x006c
            if (r0 >= r1) goto L_0x0063
            r0 = r4
            r1 = r6
            char r0 = r0.charAt(r1)     // Catch: Exception -> 0x006c
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: Exception -> 0x006c
            java.lang.String r1 = "utf-16BE"
            byte[] r0 = r0.getBytes(r1)     // Catch: Exception -> 0x006c
            int r0 = r0.length     // Catch: Exception -> 0x006c
            r1 = r7
            int r0 = r0 + r1
            r7 = r0
            r0 = r7
            r1 = r5
            if (r0 <= r1) goto L_0x0066
            r0 = r4
            r1 = r6
            char r0 = r0.charAt(r1)     // Catch: Exception -> 0x006c
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: Exception -> 0x006c
            java.lang.String r1 = "utf-16BE"
            byte[] r0 = r0.getBytes(r1)     // Catch: Exception -> 0x006c
            int r0 = r0.length     // Catch: Exception -> 0x006c
            r9 = r0
            r0 = r5
            r8 = r0
            r0 = r4
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            char r0 = r0.charAt(r1)     // Catch: Exception -> 0x006c
            r1 = r4
            r2 = r6
            char r1 = r1.charAt(r2)     // Catch: Exception -> 0x006c
            boolean r0 = com.android.contacts.q.a(r0, r1)     // Catch: Exception -> 0x006c
            if (r0 == 0) goto L_0x0063
            r0 = r4
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            char r0 = r0.charAt(r1)     // Catch: Exception -> 0x006c
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: Exception -> 0x006c
            java.lang.String r1 = "utf-16BE"
            byte[] r0 = r0.getBytes(r1)     // Catch: Exception -> 0x006c
            int r0 = r0.length     // Catch: Exception -> 0x006c
            r6 = r0
            r0 = r7
            r1 = r9
            int r0 = r0 - r1
            r1 = r6
            int r0 = r0 - r1
            r8 = r0
        L_0x0063:
            r0 = r8
            return r0
        L_0x0066:
            int r6 = r6 + 1
            goto L_0x0004
        L_0x006c:
            r4 = move-exception
            java.lang.String r0 = com.android.contacts.simcardmanage.e.k
            r1 = r4
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = r5
            r8 = r0
            goto L_0x0063
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.a(java.lang.String, int):int");
    }

    private static int a(String str, boolean z) {
        int length;
        str.length();
        if (z) {
            int i = 0;
            int i2 = 0;
            while (true) {
                length = i2;
                try {
                    if (i >= str.length()) {
                        break;
                    }
                    i2 += String.valueOf(str.charAt(i)).getBytes("utf-16BE").length;
                    i++;
                } catch (Exception e) {
                    Log.d(k, e.toString());
                    length = i2;
                }
            }
        } else {
            length = GsmAlphabet.stringToGsm8BitPacked(str).length;
        }
        return length;
    }

    private Account a(String str, String str2) {
        Account account;
        Account[] accountsByType = AccountManager.get(this.p).getAccountsByType(str2);
        int length = accountsByType.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                account = null;
                break;
            }
            Account account2 = accountsByType[i];
            if (account2.name.equals(str)) {
                account = account2;
                break;
            }
            i++;
        }
        return account;
    }

    public static e a(Context context) {
        if (s == null) {
            s = new e(context);
        }
        return s;
    }

    private void a(SimCardContact simCardContact, String str) {
        boolean z = true;
        if (simCardContact.c != null) {
            z = true;
            if (PhoneNumberUtils.compare(str, simCardContact.c)) {
                this.t = false;
                z = false;
            }
        }
        boolean z2 = z;
        if (simCardContact.g != null) {
            z2 = z;
            if (PhoneNumberUtils.compare(str, simCardContact.g)) {
                this.u = false;
                z2 = false;
            }
        }
        if (z2) {
            c.a(this.p, String.valueOf(simCardContact.d), str);
        }
    }

    private boolean a(List<SimCardContact> list) {
        boolean z = true;
        for (SimCardContact simCardContact : list) {
            Uri uri = this.q;
            if (simCardContact.i == 2) {
                uri = this.r;
            }
            if (!(simCardContact.d > 0 ? this.o.delete(uri, new StringBuilder("_id = ").append(simCardContact.d).toString(), null) > 0 : false)) {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0318, code lost:
        if (r9[0] != null) goto L_0x031d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.content.ContentProviderResult[] a(int r8, java.util.List<com.android.contacts.simcardmanage.SimCardContact> r9, android.accounts.Account r10) {
        /*
            Method dump skipped, instructions count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.a(int, java.util.List, android.accounts.Account):android.content.ContentProviderResult[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        r11 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        com.android.internal.telephony.GsmAlphabet.stringToGsm8BitPacked(r5.substring(r7, r7 + 1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
        r10 = r8 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int b(java.lang.String r5, int r6) {
        /*
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0007:
            r0 = r8
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r7
            r1 = r5
            int r1 = r1.length()     // Catch: Exception -> 0x004f
            if (r0 >= r1) goto L_0x0046
            r0 = r8
            r11 = r0
            r0 = r5
            r1 = r7
            r2 = r7
            r3 = 1
            int r2 = r2 + r3
            java.lang.String r0 = r0.substring(r1, r2)     // Catch: Exception -> 0x004f
            byte[] r0 = com.android.internal.telephony.GsmAlphabet.stringToGsm8BitPacked(r0)     // Catch: Exception -> 0x004f
            int r0 = r0.length     // Catch: Exception -> 0x004f
            r1 = r9
            int r0 = r0 + r1
            r9 = r0
            int r8 = r8 + 1
            r0 = r9
            r1 = r6
            if (r0 <= r1) goto L_0x0049
            r0 = r8
            r11 = r0
            r0 = r5
            r1 = r7
            r2 = r7
            r3 = 1
            int r2 = r2 + r3
            java.lang.String r0 = r0.substring(r1, r2)     // Catch: Exception -> 0x004f
            byte[] r0 = com.android.internal.telephony.GsmAlphabet.stringToGsm8BitPacked(r0)     // Catch: Exception -> 0x004f
            r0 = r8
            r1 = 1
            int r0 = r0 - r1
            r10 = r0
        L_0x0046:
            r0 = r10
            return r0
        L_0x0049:
            int r7 = r7 + 1
            goto L_0x0007
        L_0x004f:
            r5 = move-exception
            java.lang.String r0 = com.android.contacts.simcardmanage.e.k
            r1 = r5
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = r11
            r10 = r0
            goto L_0x0046
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.b(java.lang.String, int):int");
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? null : PhoneNumberUtils.stripSeparators(str);
    }

    private boolean b(SimCardContact simCardContact, SimCardContact simCardContact2) {
        boolean z = true;
        ContentValues contentValues = new ContentValues();
        if (simCardContact2.k <= 0) {
            contentValues.put("raw_contact_id", Long.valueOf(simCardContact2.d));
            contentValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.c);
            if (this.o.insert(ContactsContract.Data.CONTENT_URI, contentValues) == null) {
                z = false;
            }
        } else {
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.c);
            if (this.o.update(ContactsContract.Data.CONTENT_URI, contentValues, this.f, new String[]{String.valueOf(simCardContact.d), String.valueOf(simCardContact.k)}) <= 0) {
                z = false;
            }
        }
        return z;
    }

    private Uri c(SimCardContact simCardContact) {
        Uri uri;
        String stripSeparators = PhoneNumberUtils.stripSeparators(simCardContact.c);
        ContentValues contentValues = new ContentValues();
        contentValues.put("number", stripSeparators);
        if (simCardContact.f2134b != null) {
            contentValues.put("tag", simCardContact.f2134b);
        }
        if (simCardContact.g != null) {
            contentValues.put("number1", PhoneNumberUtils.stripSeparators(simCardContact.g));
        }
        String str = simCardContact.f;
        if (str != null) {
            contentValues.put("tag1", str);
        }
        String str2 = simCardContact.e;
        if (str2 != null) {
            contentValues.put("emails", str2);
        }
        long longValue = ((Number) b.a(simCardContact.i)).longValue();
        Log.d(k, "SIM INSERT subId = " + longValue + " simIndex = " + simCardContact.i);
        Uri a2 = b.a(longValue, this.p);
        if (a2 != null) {
            synchronized (d) {
                int i = 3;
                Uri uri2 = null;
                while (true) {
                    if (i <= 0) {
                        uri = uri2;
                        break;
                    }
                    try {
                        Log.d(k, "SIM INSERT URI:" + a2.toString());
                        uri2 = this.p.getContentResolver().insert(a2, contentValues);
                        Log.d(k, "SIM INSERT Uri:" + (uri2 != null ? uri2.toString() : null));
                    } catch (Exception e) {
                        Log.e(k, e.toString());
                        uri2 = uri2;
                    }
                    uri = uri2;
                    if (uri2 != null) {
                        break;
                    }
                    i--;
                }
            }
        } else {
            uri = null;
        }
        return uri;
    }

    private static Boolean c(String str) {
        boolean z;
        int i = 0;
        int i2 = 0;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            if (CompatUtils.isNCompatible()) {
                i2 = 0;
            } else {
                while (true) {
                    if (i >= str.length()) {
                        z = false;
                        break;
                    }
                    int length = String.valueOf(str.charAt(i)).getBytes().length;
                    boolean isEmpty = TextUtils.isEmpty(str.substring(i, i + 1).trim());
                    int i3 = length;
                    if (!TextUtils.isGraphic(str.subSequence(i, i + 1))) {
                        i3 = isEmpty ? length : 2;
                    }
                    if (i3 > 1) {
                        z = true;
                        break;
                    }
                    i++;
                }
                return z;
            }
        }
        while (true) {
            try {
                if (i2 >= str.length()) {
                    z = false;
                    break;
                }
                byte[] bytes = String.valueOf(str.charAt(i2)).getBytes("utf-16BE");
                if (bytes.length == 2 && bytes[0] != m && bytes[1] != m) {
                    z = true;
                    break;
                }
                i2++;
            } catch (UnsupportedEncodingException e) {
                Log.v(k, "checkIsTwoByteLanguage encoding error " + e.toString());
                z = false;
            }
        }
        return z;
    }

    private boolean c(SimCardContact simCardContact, SimCardContact simCardContact2) {
        boolean z = true;
        ContentValues contentValues = new ContentValues();
        long j = simCardContact.j;
        if (TextUtils.isEmpty(simCardContact2.f2134b) || !TextUtils.isEmpty(simCardContact.f2134b)) {
            if (j > 0) {
                contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.f2134b);
                contentValues.putNull(CoverUtils.CoverData.USER_SET);
                contentValues.putNull(CoverUtils.CoverData.COVER_TYPE);
                contentValues.putNull("data5");
                if (this.o.update(ContactsContract.Data.CONTENT_URI, contentValues, this.g, new String[]{String.valueOf(simCardContact.d), String.valueOf(j)}) <= 0) {
                    z = false;
                }
            } else {
                contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.f2134b);
                contentValues.put("mimetype", "vnd.android.cursor.item/name");
                contentValues.put("raw_contact_id", Long.valueOf(simCardContact2.d));
                contentValues.putNull(CoverUtils.CoverData.USER_SET);
                contentValues.putNull(CoverUtils.CoverData.COVER_TYPE);
                contentValues.putNull("data5");
                if (this.o.insert(ContactsContract.Data.CONTENT_URI, contentValues) == null) {
                    z = false;
                }
            }
        } else if (this.o.delete(ContactsContract.Data.CONTENT_URI, "_id=" + simCardContact2.j, null) <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x04f9, code lost:
        if (r0.e != null) goto L_0x04fc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0580, code lost:
        if (r0.g != null) goto L_0x0583;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0600, code lost:
        if (r0.f != null) goto L_0x0603;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0697, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x06a7, code lost:
        if (r0.hasNext() == false) goto L_0x06cf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x06aa, code lost:
        r0 = r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x06bf, code lost:
        if (r0.contains(r0) != false) goto L_0x06a0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x06c2, code lost:
        r0.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x06cf, code lost:
        android.util.Log.d(com.android.contacts.simcardmanage.e.k, "(" + r9 + ")" + r8 + ": Same Contacts: " + r25);
        android.util.Log.d(com.android.contacts.simcardmanage.e.k, "(" + r9 + ")" + r8 + ": Modified contacts: " + r26);
        r0.clear();
        android.util.Log.d(com.android.contacts.simcardmanage.e.k, "(" + r9 + ")" + r8 + ": Add only in Sim = " + r0.size());
        android.util.Log.d(com.android.contacts.simcardmanage.e.k, "(" + r9 + ")" + r8 + ": Delete only in Db=" + r0.size());
        a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x07c1, code lost:
        if (r8 != 2) goto L_0x082a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x07c7, code lost:
        if (com.android.contacts.util.PhoneCapabilityTester.IsAsusDevice() == false) goto L_0x0819;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x07ca, code lost:
        r19 = new android.accounts.Account(com.android.contacts.b.a.c, "asus.local.simcard2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x07da, code lost:
        a(r8, r0, r19, 100);
        android.util.Log.d(com.android.contacts.simcardmanage.e.k, "(" + r9 + ")" + r8 + ": SYNC COMPLETED");
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0819, code lost:
        r19 = new android.accounts.Account("SIM2", com.android.contacts.b.a.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x082a, code lost:
        r19 = new android.accounts.Account(com.android.contacts.b.a.c, com.android.contacts.b.a.d);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(int r8, long r9) {
        /*
            Method dump skipped, instructions count: 2108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.d(int, long):void");
    }

    private boolean d() {
        boolean z = true;
        if (Settings.System.getInt(this.o, "airplane_mode_on", 0) != 1) {
            z = false;
        }
        return z;
    }

    private boolean d(SimCardContact simCardContact, SimCardContact simCardContact2) {
        boolean z = true;
        ContentValues contentValues = new ContentValues();
        long j = simCardContact.m;
        if (simCardContact.f == null || TextUtils.isEmpty(simCardContact.f)) {
            if (this.o.delete(ContactsContract.Data.CONTENT_URI, "_id=" + simCardContact2.m, null) <= 0) {
                z = false;
            }
        } else if (j > 0) {
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.f);
            if (this.o.update(ContactsContract.Data.CONTENT_URI, contentValues, this.i, new String[]{String.valueOf(simCardContact.d), String.valueOf(j)}) <= 0) {
                z = false;
            }
        } else {
            contentValues.put("raw_contact_id", Long.valueOf(simCardContact2.d));
            contentValues.put("mimetype", "vnd.android.cursor.item/nickname");
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.f);
            if (this.o.insert(ContactsContract.Data.CONTENT_URI, contentValues) == null) {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x02d3 -> B:53:0x02d7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x02e3 -> B:14:0x0095). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.android.contacts.simcardmanage.SimCardContact> e(int r8, long r9) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.e(int, long):java.util.List");
    }

    private boolean e(SimCardContact simCardContact, SimCardContact simCardContact2) {
        boolean z = true;
        ContentValues contentValues = new ContentValues();
        long j = simCardContact.n;
        long j2 = simCardContact2.n;
        if (simCardContact.g == null || TextUtils.isEmpty(simCardContact.g)) {
            if (this.o.delete(ContactsContract.Data.CONTENT_URI, "_id=" + simCardContact2.n, null) <= 0) {
                z = false;
            }
        } else if (!simCardContact.g.equals(simCardContact2.g) && j < 0 && j2 > 0) {
            this.o.delete(ContactsContract.Data.CONTENT_URI, "_id=" + j2, null);
            contentValues.put("raw_contact_id", Long.valueOf(simCardContact2.d));
            contentValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.g);
            if (this.o.insert(ContactsContract.Data.CONTENT_URI, contentValues) == null) {
                z = false;
            }
        } else if (j > 0) {
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.g);
            if (this.o.update(ContactsContract.Data.CONTENT_URI, contentValues, this.f, new String[]{String.valueOf(simCardContact.d), String.valueOf(j)}) <= 0) {
                z = false;
            }
        } else {
            contentValues.put("raw_contact_id", Long.valueOf(simCardContact2.d));
            contentValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.g);
            if (this.o.insert(ContactsContract.Data.CONTENT_URI, contentValues) == null) {
                z = false;
            }
        }
        return z;
    }

    private boolean f(SimCardContact simCardContact, SimCardContact simCardContact2) {
        boolean z = true;
        ContentValues contentValues = new ContentValues();
        long j = simCardContact.l;
        if (simCardContact.e == null || TextUtils.isEmpty(simCardContact.e)) {
            if (this.o.delete(ContactsContract.Data.CONTENT_URI, "_id=" + simCardContact2.l, null) <= 0) {
                z = false;
            }
        } else if (j > 0) {
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.e);
            if (this.o.update(ContactsContract.Data.CONTENT_URI, contentValues, this.j, new String[]{String.valueOf(simCardContact.d), String.valueOf(j)}) <= 0) {
                z = false;
            }
        } else {
            contentValues.put("raw_contact_id", Long.valueOf(simCardContact2.d));
            contentValues.put("mimetype", "vnd.android.cursor.item/email_v2");
            contentValues.put(CoverUtils.CoverData.COVER_URI, simCardContact.e);
            if (this.o.insert(ContactsContract.Data.CONTENT_URI, contentValues) == null) {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0188 A[Catch: all -> 0x024c, TRY_ENTER, TryCatch #1 {all -> 0x024c, blocks: (B:12:0x0084, B:14:0x008d, B:15:0x0090, B:28:0x0188, B:30:0x0191, B:17:0x011f, B:20:0x012b, B:22:0x016d, B:24:0x0179, B:41:0x021b, B:43:0x0226, B:45:0x022e, B:53:0x0260, B:54:0x026c, B:56:0x0277, B:57:0x0284, B:59:0x028f), top: B:63:0x0084 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.android.contacts.simcardmanage.SimCardContact> g(int r8) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.g(int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h(int i) {
        String str;
        Exception e;
        int i2;
        Log.d(k, i + " : delAllSimcardContactsAtDb Start");
        if (PhoneCapabilityTester.IsAsusDevice()) {
            String str2 = b.a.d;
            if (i == 2) {
                str2 = "asus.local.simcard2";
            }
            str = "account_name = '" + b.a.c + "' and account_type = '" + str2 + "'";
        } else {
            String str3 = b.a.c;
            if (i == 2) {
                str3 = "SIM2";
            }
            str = "account_name = '" + str3 + "' and account_type = '" + b.a.d + "'";
        }
        Uri uri = this.q;
        if (i == 2) {
            uri = this.r;
        }
        try {
            int delete = this.o.delete(uri, str, null);
            try {
                Log.d(k, i + ": delAllSimcardContactsAtDb Stop : " + delete + " select:" + PhoneCapabilityTester.privacyLogCheck(str));
                i2 = delete;
            } catch (Exception e2) {
                e = e2;
                i2 = delete;
                Log.w(k, "Delete error: " + e.toString());
                return i2;
            }
        } catch (Exception e3) {
            e = e3;
            i2 = 0;
        }
        return i2;
    }

    private String i(int i) {
        SharedPreferences sharedPreferences = this.p.getSharedPreferences("asus_setting", 0);
        return b.a(this.p) ? sharedPreferences.getString("sim_serial_number" + i, null) : sharedPreferences.getString("sim_serial_number", null);
    }

    @Override // com.android.contacts.simcardmanage.d
    public final int a(int i, int i2) {
        SharedPreferences sharedPreferences = this.p.getSharedPreferences("asus_setting", 0);
        return b.a(this.p) ? sharedPreferences.getInt(f2157a[i2] + i, 0) : sharedPreferences.getInt(f2157a[i2], 0);
    }

    @Override // com.android.contacts.simcardmanage.d
    public final int a(SimCardContact simCardContact, SimCardContact simCardContact2) {
        boolean z;
        int i = 0;
        int i2 = 0;
        if (simCardContact.d < 0 ? false : !TextUtils.isEmpty(simCardContact.c)) {
            if (simCardContact2.d < 0) {
                i2 = 0;
            } else {
                int i3 = simCardContact2.i;
                boolean z2 = a(i3, 2) > 0;
                boolean z3 = a(i3, 3) > 0;
                boolean z4 = a(i3, 4) > 0;
                if (simCardContact.c != null && simCardContact.c.length() > a(i3, 6)) {
                    simCardContact.b(simCardContact.c.substring(0, a(i3, 6)), simCardContact.k);
                }
                if (simCardContact.g != null && simCardContact.g.length() > a(i3, 8)) {
                    simCardContact.d(simCardContact.g.substring(0, a(i3, 8)), simCardContact.n);
                }
                if (simCardContact2 == null) {
                    z = a(simCardContact, false) != null;
                } else {
                    z = !TextUtils.isEmpty(simCardContact.c) ? b(simCardContact) > 0 : false;
                }
                i2 = 0;
                if (z) {
                    if (b(simCardContact, simCardContact2)) {
                        i = 1;
                    }
                    int i4 = i;
                    if (c(simCardContact, simCardContact2)) {
                        i4 = i + 1;
                    }
                    int i5 = i4;
                    if (z4) {
                        i5 = i4;
                        if (d(simCardContact, simCardContact2)) {
                            i5 = i4 + 1;
                        }
                    }
                    i2 = i5;
                    if (z3) {
                        i2 = i5;
                        if (e(simCardContact, simCardContact2)) {
                            i2 = i5 + 1;
                        }
                    }
                    if (z2 && f(simCardContact, simCardContact2)) {
                        i2++;
                    }
                    this.t = true;
                    this.u = true;
                    if (simCardContact.c != null) {
                        a(simCardContact2, simCardContact.c);
                    }
                    if (simCardContact.g != null) {
                        a(simCardContact2, simCardContact.g);
                    }
                    if (simCardContact2.c != null && this.t) {
                        c.c(this.p, simCardContact2.c);
                    }
                    if (simCardContact2.g != null && this.u) {
                        c.c(this.p, simCardContact2.g);
                    }
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008b, code lost:
        if (r5.length() > r6) goto L_0x0026;
     */
    @Override // com.android.contacts.simcardmanage.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.String r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = r6
            switch(r0) {
                case 5: goto L_0x0028;
                case 6: goto L_0x0077;
                case 7: goto L_0x0091;
                case 8: goto L_0x0077;
                case 9: goto L_0x0028;
                default: goto L_0x0024;
            }
        L_0x0024:
            r0 = 0
            r6 = r0
        L_0x0026:
            r0 = r6
            return r0
        L_0x0028:
            r0 = r4
            r1 = r7
            r2 = r6
            int r0 = r0.a(r1, r2)
            r7 = r0
            r0 = r5
            java.lang.Boolean r0 = c(r0)
            r8 = r0
            r0 = r5
            r1 = r8
            boolean r1 = r1.booleanValue()
            int r0 = a(r0, r1)
            r9 = r0
            r0 = r7
            r6 = r0
            r0 = r8
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x004e
            r0 = r7
            r1 = 1
            int r0 = r0 - r1
            r6 = r0
        L_0x004e:
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0024
            r0 = r9
            r1 = r6
            if (r0 <= r1) goto L_0x0024
            r0 = r8
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x006e
            r0 = r5
            r1 = r6
            int r0 = a(r0, r1)
            r1 = 2
            int r0 = r0 / r1
            r6 = r0
            goto L_0x0026
        L_0x006e:
            r0 = r5
            r1 = r6
            int r0 = b(r0, r1)
            r6 = r0
            goto L_0x0026
        L_0x0077:
            r0 = r4
            r1 = r7
            r2 = 6
            int r0 = r0.a(r1, r2)
            r6 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0024
            r0 = r5
            int r0 = r0.length()
            r1 = r6
            if (r0 <= r1) goto L_0x0024
            goto L_0x0026
        L_0x0091:
            r0 = r4
            r1 = r7
            r2 = 7
            int r0 = r0.a(r1, r2)
            r6 = r0
            r0 = r5
            byte[] r0 = com.android.internal.telephony.GsmAlphabet.stringToGsm8BitPacked(r0)
            int r0 = r0.length
            r7 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0024
            r0 = r7
            r1 = r6
            if (r0 <= r1) goto L_0x0024
            r0 = r5
            r1 = r6
            int r0 = b(r0, r1)
            r6 = r0
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.a(java.lang.String, int, int):int");
    }

    @Override // com.android.contacts.simcardmanage.d
    public final int a(List<SimCardContact> list, int i) {
        int i2;
        if (list != null) {
            Iterator<SimCardContact> it = list.iterator();
            int i3 = 0;
            while (true) {
                i2 = i3;
                if (it.hasNext()) {
                    SimCardContact next = it.next();
                    switch (i) {
                        case 1:
                            i3++;
                            break;
                        case 2:
                            i3++;
                            break;
                        case 3:
                            if (TextUtils.isEmpty(next.e)) {
                                break;
                            } else {
                                i3++;
                                break;
                            }
                        case 4:
                            if (TextUtils.isEmpty(next.f)) {
                                break;
                            } else {
                                i3++;
                                break;
                            }
                        case 5:
                            if (TextUtils.isEmpty(next.g)) {
                                break;
                            } else {
                                i3++;
                                break;
                            }
                    }
                }
            }
        } else {
            i2 = 0;
        }
        Log.d(k, "getSimFieldCurrentNumber2 : " + i + " count: " + i2);
        return i2;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final Uri a(SimCardContact simCardContact) {
        Uri uri;
        Account account;
        Uri a2 = a(simCardContact, false);
        Log.e(k, "Sim Inset uri=" + a2);
        if (a2 != null) {
            simCardContact.h = ContentUris.parseId(a2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(simCardContact);
            if (PhoneCapabilityTester.IsAsusDevice()) {
                Account account2 = new Account(b.a.c, b.a.d);
                account = account2;
                if (b.a(this.p)) {
                    if (simCardContact.i == 1) {
                        account = new Account(b.a.c, b.a.d);
                    } else {
                        account = account2;
                        if (simCardContact.i == 2) {
                            account = new Account(b.a.c, "asus.local.simcard2");
                        }
                    }
                }
            } else {
                Account account3 = new Account("SIM", b.a.d);
                account = account3;
                if (b.a(this.p)) {
                    if (simCardContact.i == 1) {
                        account = new Account(b.a.c, b.a.d);
                    } else {
                        account = account3;
                        if (simCardContact.i == 2) {
                            account = new Account("SIM2", b.a.d);
                        }
                    }
                }
            }
            ContentProviderResult[] a3 = a(simCardContact.i, arrayList, account, 100);
            uri = a3 == null ? null : a3[0].uri;
        } else {
            uri = null;
        }
        return uri;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final Uri a(SimCardContact simCardContact, boolean z) {
        return (!TextUtils.isEmpty(simCardContact.c) || z) ? c(simCardContact) : null;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final SimCardContact a(long j) {
        Cursor cursor = null;
        SimCardContact simCardContact = new SimCardContact();
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        Cursor query = IsAsusDevice ? this.o.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "sync1"}, "account_name = '" + b.a.c + "' AND contact_id = " + j, null, null) : this.o.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "sync1", SelectAccountActivity.ACCOUNT_NAME}, "account_type = '" + b.a.d + "' AND contact_id = " + j, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    simCardContact.h = query.getLong(query.getColumnIndex("sync1"));
                    if (!IsAsusDevice) {
                        String string = query.getString(query.getColumnIndex(SelectAccountActivity.ACCOUNT_NAME));
                        simCardContact.i = (string == null || !"SIM2".equals(string)) ? 1 : 2;
                    }
                }
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        if (query != null) {
            query.close();
        }
        if (simCardContact.h > 0 && PhoneCapabilityTester.IsAsusDevice()) {
            try {
                query = this.o.query(ContactsContract.Contacts.CONTENT_URI, new String[]{SpeedDialList.Columns.ISSIM}, "_id = " + j, null, null);
                if (query != null && query.moveToFirst()) {
                    cursor = query;
                    simCardContact.i = query.getInt(0);
                }
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return simCardContact;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012b A[DONT_GENERATE] */
    @Override // com.android.contacts.simcardmanage.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.simcardmanage.SimCardContact a(android.net.Uri r8) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.a(android.net.Uri):com.android.contacts.simcardmanage.SimCardContact");
    }

    @Override // com.android.contacts.simcardmanage.d
    public final SimCardContact a(String str) {
        Cursor cursor;
        String[] strArr;
        int i = 2;
        SimCardContact simCardContact = new SimCardContact();
        try {
            cursor = this.p.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"mimetype", "_id", CoverUtils.CoverData.COVER_URI, "raw_contact_id"}, "contact_id = " + str, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        do {
                            String string = cursor.getString(0);
                            String string2 = cursor.getString(2);
                            long j = cursor.getLong(1);
                            simCardContact.d = cursor.getLong(3);
                            if ("vnd.android.cursor.item/name".equals(string)) {
                                simCardContact.a(string2, j);
                            } else if ("vnd.android.cursor.item/phone_v2".equals(string)) {
                                if (TextUtils.isEmpty(simCardContact.c)) {
                                    simCardContact.b(string2, j);
                                } else {
                                    simCardContact.d(string2, j);
                                }
                            } else if ("vnd.android.cursor.item/email_v2".equals(string)) {
                                simCardContact.e(string2, j);
                            } else if ("vnd.android.cursor.item/nickname".equals(string)) {
                                simCardContact.c(string2, j);
                            }
                        } while (cursor.moveToNext());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            if (simCardContact.d > 0) {
                Cursor cursor2 = cursor;
                try {
                    ContentResolver contentResolver = this.p.getContentResolver();
                    Uri uri = ContactsContract.RawContacts.CONTENT_URI;
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        strArr = new String[2];
                        strArr[0] = SelectAccountActivity.ACCOUNT_TYPE;
                        strArr[1] = "sync1";
                    } else {
                        strArr = new String[2];
                        strArr[0] = SelectAccountActivity.ACCOUNT_NAME;
                        strArr[1] = "sync1";
                    }
                    cursor2 = contentResolver.query(uri, strArr, "_id = " + simCardContact.d, null, null);
                    if (cursor2 != null && cursor2.moveToFirst()) {
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            i = "asus.local.simcard2".equals(cursor2.getString(0)) ? 2 : 1;
                        } else if (!"SIM2".equals(cursor2.getString(0))) {
                            i = 1;
                        }
                        long j2 = cursor2.getLong(1);
                        simCardContact.i = i;
                        cursor2 = cursor2;
                        simCardContact.h = j2;
                    }
                } finally {
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                }
            }
            return simCardContact;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    @Override // com.android.contacts.simcardmanage.d
    public final String a(int i, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            String valueOf = String.valueOf(str);
            int a2 = a(str, 5, i);
            str2 = valueOf;
            if (a2 > 0) {
                str2 = valueOf.substring(0, a2);
            }
        }
        return str2;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void a() {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_sim_setting", 0).edit();
        boolean d = d();
        String str = b.a(this.p) ? "asusIsIccCardFlyMode1" : "asusIsIccCardFlyMode";
        edit.putBoolean(str, d);
        Log.d(k, "set " + str + " :" + d);
        edit.commit();
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void a(int i, int i2, int i3) {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_setting", 0).edit();
        String str = f2157a[i2];
        String str2 = str;
        if (b.a(this.p)) {
            str2 = str + i;
        }
        edit.putInt(str2, i3);
        edit.commit();
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void a(int i, long j) {
        synchronized (this) {
            l = 1;
            Log.e(k, "(" + j + ")" + i + ": pushSimcardSync START");
            String i2 = i(i);
            String b2 = b.b(this.p, i);
            Log.d(k, "(" + j + ")" + i + ": currentSerialNumber is " + (TextUtils.isEmpty(b2) ? "null" : "not null"));
            if (i2 != null && b2 != null && b2.equals(i2)) {
                long currentTimeMillis = System.currentTimeMillis();
                Log.d(k, "(" + j + ")" + i + " : Same SIM Card: syncSimNPhoneContactsSimply()");
                d(i, j);
                Log.e(k, "(" + j + ")" + i + " : total time in :pushSimcardSync" + ((System.currentTimeMillis() - currentTimeMillis) / 1000));
            } else if (b2 != null) {
                Log.d(k, "(" + j + ")" + i + " : Different SIM Card: delete all and insert new data");
                h(i);
                a(i, e(i, j), i == 2 ? PhoneCapabilityTester.IsAsusDevice() ? new Account(b.a.c, "asus.local.simcard2") : new Account("SIM2", b.a.d) : new Account(b.a.c, b.a.d), 100);
                c(i, b2);
            } else {
                Log.e(k, "(" + j + ")" + i + " : setIccCardState(false)");
                a(i, false);
            }
            l = 2;
            Log.e(k, "(" + j + ")" + i + ": pushSimcardSync STOP");
        }
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void a(int i, boolean z) {
        synchronized (this) {
            SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_setting", 0).edit();
            if (b.a(this.p)) {
                edit.putBoolean("icc_card_is_ready" + i, z);
            } else {
                edit.putBoolean("icc_card_is_ready", z);
            }
            edit.commit();
            Log.d(k, i + " : setIccCardState:" + z + " STOP");
        }
    }

    @Override // com.android.contacts.simcardmanage.d
    public final boolean a(int i) {
        boolean a2 = b.a(this.p, i);
        String b2 = b.b(this.p, i);
        boolean d = d();
        SharedPreferences sharedPreferences = this.p.getSharedPreferences("asus_setting", 0);
        boolean z = (!a2 || d) ? false : b.a(this.p) ? sharedPreferences.getBoolean("icc_card_is_ready" + i, false) : sharedPreferences.getBoolean("icc_card_is_ready", false);
        boolean z2 = z;
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            z2 = z;
            if (z) {
                String str = b.a.c;
                if (!b.a(this.p)) {
                    str = "SIM";
                } else if (i == 2) {
                    str = "SIM2";
                }
                z2 = z;
                if (a(str, b.a.d) == null) {
                    Log.d(k, "(getIccCardState) sim account not exist on SIM" + i);
                    z2 = false;
                }
            }
        }
        if (b.f607a.booleanValue()) {
            String str2 = TextUtils.isEmpty(b2) ? "null" : "not null";
            Log.d(k, "(getIccCardState) hasIccCard " + i + " = " + a2);
            Log.d(k, "(getIccCardState) isFlyMode " + i + " = " + d);
            Log.d(k, "(getIccCardState) SimSerialNumber  " + i + " is " + str2);
            Log.d(k, "(getIccCardState) ASUS_ICC_CARD_READY " + i + " = " + z2);
        }
        return z2;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final ContentProviderResult[] a(int i, List<SimCardContact> list, Account account, int i2) {
        boolean z = true;
        ContentProviderResult[] contentProviderResultArr = null;
        if (list != null) {
            if (list.size() != 0) {
                if (list.size() > i2) {
                    int i3 = i2;
                    int i4 = 0;
                    contentProviderResultArr = null;
                    while (true) {
                        if (i4 >= list.size()) {
                            break;
                        }
                        try {
                            List<SimCardContact> subList = list.subList(i4, i3);
                            if (subList == null) {
                                contentProviderResultArr = null;
                                break;
                            }
                            ContentProviderResult[] a2 = a(i, subList, account);
                            if (z && a2 != null) {
                                z = false;
                                contentProviderResultArr = a2;
                            }
                            i3 += i2;
                            if (i3 > list.size()) {
                                i3 = list.size();
                            }
                            i4 = i3;
                        } catch (Exception e) {
                            contentProviderResultArr = null;
                        }
                    }
                } else {
                    contentProviderResultArr = a(i, list, account);
                }
            } else {
                contentProviderResultArr = null;
            }
        }
        return contentProviderResultArr;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final int b(int i, int i2) {
        Log.d(k, "getSimFieldCurrentNumber Start: " + i2);
        int i3 = 0;
        for (SimCardContact simCardContact : e(i, ((Number) b.a(i)).longValue())) {
            switch (i2) {
                case 1:
                    i3++;
                    break;
                case 2:
                    i3++;
                    break;
                case 3:
                    if (simCardContact.e != null) {
                        i3++;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (simCardContact.f != null) {
                        i3++;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (simCardContact.g != null) {
                        i3++;
                        break;
                    } else {
                        break;
                    }
            }
        }
        Log.d(k, "getSimFieldCurrentNumber Stop: " + i2 + " count: " + i3);
        return i3;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final int b(SimCardContact simCardContact) {
        int i = 0;
        i = 0;
        long j = simCardContact.h;
        Uri a2 = b.a(simCardContact.i, this.p);
        if (a2 != null) {
            Uri withAppendedId = ContentUris.withAppendedId(a2, j);
            ContentValues contentValues = new ContentValues();
            if (!TextUtils.isEmpty(simCardContact.f2134b)) {
                contentValues.put("tag", simCardContact.f2134b);
            }
            if (!TextUtils.isEmpty(simCardContact.f)) {
                contentValues.put("tag1", simCardContact.f);
            }
            contentValues.put("number", PhoneNumberUtils.stripSeparators(simCardContact.c));
            if (!TextUtils.isEmpty(simCardContact.g)) {
                contentValues.put("number1", PhoneNumberUtils.stripSeparators(simCardContact.g));
            }
            if (!TextUtils.isEmpty(simCardContact.e)) {
                contentValues.put("emails", simCardContact.e);
            }
            Log.d(k, "SIM Update URI:" + withAppendedId.toString());
            synchronized (d) {
                try {
                    i = this.p.getContentResolver().update(withAppendedId, contentValues, null, null);
                } catch (Exception e) {
                    Log.e(k, "updateSimCardContact() update error: " + e);
                }
            }
            Log.d(k, "SIM Update Rows:" + String.valueOf(i));
        }
        return i;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final SimCardContact b(int i, long j) {
        Cursor query;
        Cursor cursor = null;
        Cursor cursor2 = null;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            String str = b.a.d;
            if (i == 2) {
                str = "asus.local.simcard2";
            }
            query = this.o.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "display_name"}, "account_name = '" + b.a.c + "' AND account_type = '" + str + "' AND deleted = 0 AND sync1 = " + j, null, null);
        } else {
            String str2 = b.a.c;
            if (i == 2) {
                str2 = "SIM2";
            }
            query = this.o.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "display_name"}, "account_name = '" + str2 + "' AND account_type = '" + b.a.d + "' AND deleted = 0 AND sync1 = " + j, null, null);
        }
        SimCardContact simCardContact = new SimCardContact();
        try {
            if (query.moveToFirst()) {
                simCardContact.h = j;
                simCardContact.d = query.getLong(query.getColumnIndex("_id"));
                simCardContact.i = i;
                Cursor query2 = this.o.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "mimetype", CoverUtils.CoverData.COVER_URI}, "raw_contact_id = " + query.getLong(query.getColumnIndex("_id")), null, null);
                cursor2 = query2;
                if (query2.moveToFirst()) {
                    do {
                        cursor = query2;
                        String string = query2.getString(query2.getColumnIndex("mimetype"));
                        String string2 = query2.getString(query2.getColumnIndex(CoverUtils.CoverData.COVER_URI));
                        int i2 = query2.getInt(query2.getColumnIndex("_id"));
                        if (string.equals("vnd.android.cursor.item/name")) {
                            simCardContact.a(string2, i2);
                        } else if (string.equals("vnd.android.cursor.item/phone_v2")) {
                            if (simCardContact.c != null) {
                                simCardContact.d(string2, i2);
                            } else {
                                simCardContact.b(string2, i2);
                            }
                        } else if (string.equals("vnd.android.cursor.item/email_v2")) {
                            simCardContact.e(string2, i2);
                        } else if (string.equals("vnd.android.cursor.item/nickname")) {
                            simCardContact.c(string2, i2);
                        }
                    } while (query2.moveToNext());
                    cursor2 = query2;
                }
            }
            return simCardContact;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
            if (query != null) {
                query.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00c2 A[DONT_GENERATE] */
    @Override // com.android.contacts.simcardmanage.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.simcardmanage.SimCardContact b(long r8) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.b(long):com.android.contacts.simcardmanage.SimCardContact");
    }

    @Override // com.android.contacts.simcardmanage.d
    public final String b(int i, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            String stripSeparators = PhoneNumberUtils.stripSeparators(str);
            str2 = null;
            if (!TextUtils.isEmpty(stripSeparators)) {
                int a2 = a(i, 6) * 2;
                str2 = stripSeparators.length() > a2 ? stripSeparators.substring(0, a2) : stripSeparators;
            }
        }
        return str2;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void b() {
        this.o.delete(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), "data3 = 'Mobile'", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0063  */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.contacts.simcardmanage.e$1] */
    @Override // com.android.contacts.simcardmanage.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(final int r8) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.b(int):void");
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void b(int i, boolean z) {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_sim_setting", 0).edit();
        String str = b.a(this.p) ? "asushadIccCard" + i : "asushadIccCard";
        edit.putBoolean(str, z);
        edit.commit();
        Log.d(k, "set " + str + " :" + z);
    }

    @Override // com.android.contacts.simcardmanage.d
    public final int c(int i, long j) {
        int delete;
        r6 = 0;
        int i2 = 0;
        i2 = 0;
        Log.d(k, "SIM Delete Id:" + String.valueOf(j));
        Uri a2 = b.a(i, this.p);
        if (a2 != null) {
            Uri withAppendedId = ContentUris.withAppendedId(a2, j);
            Log.d(k, "SIM Delete Uri:" + withAppendedId.toString());
            try {
                synchronized (d) {
                    try {
                        delete = this.p.getContentResolver().delete(withAppendedId, null, null);
                        i2 = delete;
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                break;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        try {
                            throw th;
                        } catch (Exception e) {
                            e = e;
                            Log.e(k, e.toString());
                            Log.d(k, "SIM Delete Row Number:" + String.valueOf(i2));
                            return i2;
                        }
                    }
                }
                i2 = delete;
            } catch (Exception e2) {
                e = e2;
            }
            Log.d(k, "SIM Delete Row Number:" + String.valueOf(i2));
        }
        return i2;
    }

    /* JADX WARN: Not initialized variable reg: 13, insn: 0x029d: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:100:0x029d */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0284  */
    @Override // com.android.contacts.simcardmanage.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.ContentValues c(long r8) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.c(long):android.content.ContentValues");
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void c(int i) {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_sim_setting", 0).edit();
        boolean a2 = b.a(this.p, i);
        String b2 = b.b(this.p, i);
        String str = b.a(this.p) ? "asushadIccCard" + i : "asushadIccCard";
        boolean z = false;
        if (a2) {
            z = false;
            if (b2 != null) {
                z = true;
            }
        }
        edit.putBoolean(str, z);
        Log.d(k, "set " + str + " :" + z);
        edit.commit();
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void c(int i, boolean z) {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_sim_setting", 0).edit();
        String str = b.a(this.p) ? i == 2 ? "asusIccCardLoaded2" : "asusIccCardLoaded1" : "asusIccCardLoaded";
        edit.putBoolean(str, z);
        Log.d(k, "set " + str + " :" + z);
        edit.commit();
    }

    @Override // com.android.contacts.simcardmanage.d
    public final boolean c(int i, String str) {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_setting", 0).edit();
        if (b.a(this.p)) {
            edit.putString("sim_serial_number" + i, str);
        } else {
            edit.putString("sim_serial_number", str);
        }
        return edit.commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0171 A[Catch: all -> 0x01fc, TRY_ENTER, TryCatch #1 {all -> 0x01fc, blocks: (B:7:0x0060, B:9:0x006a, B:11:0x0079, B:15:0x008b, B:28:0x0171, B:36:0x01b0, B:17:0x0108, B:20:0x0114, B:22:0x0155, B:24:0x0160, B:39:0x01cc, B:41:0x01d7, B:43:0x01df, B:51:0x0210, B:52:0x021b, B:54:0x0226, B:55:0x0232, B:57:0x023d), top: B:58:0x0060 }] */
    @Override // com.android.contacts.simcardmanage.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.simcardmanage.SimCardContact d(long r8) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.e.d(long):com.android.contacts.simcardmanage.SimCardContact");
    }

    @Override // com.android.contacts.simcardmanage.d
    public final void d(int i, boolean z) {
        SharedPreferences.Editor edit = this.p.getSharedPreferences("asus_setting", 0).edit();
        String str = f2157a[10];
        String str2 = str;
        if (b.a(this.p)) {
            str2 = str + i;
        }
        edit.putBoolean(str2, z);
        edit.commit();
    }

    @Override // com.android.contacts.simcardmanage.d
    public final boolean d(int i) {
        SharedPreferences sharedPreferences = this.p.getSharedPreferences("asus_sim_setting", 0);
        boolean z = b.a(this.p) ? sharedPreferences.getBoolean("asushadIccCard" + i, false) : sharedPreferences.getBoolean("asushadIccCard", false);
        Log.d(k, "get asushadIccCard" + i + " :" + z);
        return z;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final boolean e(int i) {
        SharedPreferences sharedPreferences = this.p.getSharedPreferences("asus_setting", 0);
        boolean z = b.a(this.p) ? sharedPreferences.getBoolean(f2157a[10] + i, false) : sharedPreferences.getBoolean(f2157a[10], false);
        Log.d(k, "isSimEditable = " + z);
        return z;
    }

    @Override // com.android.contacts.simcardmanage.d
    public final List<SimCardContact> f(int i) {
        long longValue = ((Number) b.a(i)).longValue();
        Log.d(k, "getSimContact subId: " + longValue);
        return e(i, longValue);
    }
}
