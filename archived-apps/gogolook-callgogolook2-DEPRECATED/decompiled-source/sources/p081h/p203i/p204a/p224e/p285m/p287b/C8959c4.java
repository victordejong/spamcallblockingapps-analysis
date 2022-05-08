package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzad;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7075g;
import p081h.p203i.p204a.p224e.p235d.p251t.C7097c;
/* renamed from: h.i.a.e.m.b.c4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/c4.class */
public final class C8959c4 extends AbstractC9035p1 {

    /* renamed from: g */
    public static final String[] f20257g = {"firebase_", "google_", "ga_"};

    /* renamed from: c */
    public SecureRandom f20258c;

    /* renamed from: e */
    public int f20260e;

    /* renamed from: f */
    public Integer f20261f = null;

    /* renamed from: d */
    public final AtomicLong f20259d = new AtomicLong(0);

    public C8959c4(C9052s0 s0Var) {
        super(s0Var);
    }

    /* renamed from: a */
    public static long m16741a(long j, long j2) {
        return (j + (j2 * 60000)) / AdUtils.ONE_DAY;
    }

    /* renamed from: a */
    public static long m16719a(byte[] bArr) {
        C7021t.m21290a(bArr);
        int i = 0;
        C7021t.m21282b(bArr.length > 0);
        long j = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j += (bArr[length] & 255) << i;
            i += 8;
        }
        return j;
    }

    /* renamed from: a */
    public static Object m16743a(int i, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        } else if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        } else {
            if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
                return m16727a(String.valueOf(obj), i, z);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static String m16727a(String str, int i, boolean z) {
        String str2 = str;
        if (str.codePointCount(0, str.length()) > i) {
            if (z) {
                return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
            }
            str2 = null;
        }
        return str2;
    }

    @Nullable
    /* renamed from: a */
    public static String m16720a(String str, String[] strArr, String[] strArr2) {
        C7021t.m21290a(strArr);
        C7021t.m21290a(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            if (m16705e(str, strArr[i])) {
                return strArr2[i];
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m16734a(Bundle bundle, Object obj) {
        C7021t.m21290a(bundle);
        if (obj == null) {
            return;
        }
        if ((obj instanceof String) || (obj instanceof CharSequence)) {
            bundle.putLong("_el", String.valueOf(obj).length());
        }
    }

    /* renamed from: a */
    public static boolean m16739a(Context context, boolean z) {
        C7021t.m21290a(context);
        return Build.VERSION.SDK_INT >= 24 ? m16712c(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m16712c(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: a */
    public static boolean m16738a(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    /* renamed from: a */
    public static boolean m16735a(Bundle bundle, int i) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    /* renamed from: a */
    public static boolean m16722a(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    /* renamed from: a */
    public static byte[] m16732a(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: a */
    public static Bundle[] m16731a(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            return (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        } else if (!(obj instanceof ArrayList)) {
            return null;
        } else {
            ArrayList arrayList = (ArrayList) obj;
            return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
        }
    }

    /* renamed from: b */
    public static Bundle m16717b(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        if (parcelableArr[i] instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
        }
        return bundle2;
    }

    /* renamed from: b */
    public static Object m16716b(Object obj) {
        ObjectInputStream objectInputStream;
        ObjectOutputStream objectOutputStream;
        Throwable th;
        try {
            if (obj == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    try {
                        Object readObject = objectInputStream.readObject();
                        objectOutputStream.close();
                        objectInputStream.close();
                        return readObject;
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    objectInputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                objectInputStream = null;
                objectOutputStream = null;
            }
        } catch (IOException | ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static boolean m16712c(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) == null) {
                return false;
            }
            return serviceInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: e */
    public static boolean m16706e(String str) {
        C7021t.m21283b(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* renamed from: e */
    public static boolean m16705e(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    /* renamed from: f */
    public static boolean m16704f(String str) {
        C7021t.m21290a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    /* renamed from: g */
    public static int m16703g(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return "_id".equals(str) ? 256 : 36;
    }

    /* renamed from: h */
    public static boolean m16702h(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: w */
    public static MessageDigest m16697w() {
        MessageDigest instance;
        for (int i = 0; i < 2; i++) {
            try {
                instance = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            }
            if (instance != null) {
                return instance;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final int m16730a(String str) {
        if (!m16709c(NotificationCompat.CATEGORY_EVENT, str)) {
            return 2;
        }
        if (!m16721a(NotificationCompat.CATEGORY_EVENT, AppMeasurement.C3583a.f7136a, str)) {
            return 13;
        }
        return !m16729a(NotificationCompat.CATEGORY_EVENT, 40, str) ? 2 : 0;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0086 -> B:17:0x0094). Please submit an issue!!! */
    @WorkerThread
    /* renamed from: a */
    public final long m16740a(Context context, String str) {
        mo16328d();
        C7021t.m21290a(context);
        C7021t.m21283b(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest w = m16697w();
        long j = -1;
        if (w == null) {
            mo16178c().m16375s().m16338a("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e) {
                    mo16178c().m16375s().m16337a("Package name not found", e);
                }
                if (!m16718b(context, str)) {
                    PackageInfo b = C7097c.m21085b(context).m21087b(getContext().getPackageName(), 64);
                    if (b.signatures == null || b.signatures.length <= 0) {
                        mo16178c().m16372v().m16338a("Could not get signatures");
                    } else {
                        j = m16719a(w.digest(b.signatures[0].toByteArray()));
                    }
                }
            }
            j = 0;
        }
        return j;
    }

    /* renamed from: a */
    public final Bundle m16737a(@NonNull Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str4 = uri.getQueryParameter("utm_campaign");
                str3 = uri.getQueryParameter("utm_source");
                str2 = uri.getQueryParameter("utm_medium");
                str = uri.getQueryParameter("gclid");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
            }
            if (TextUtils.isEmpty(str4) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString("campaign", str4);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("source", str3);
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("medium", str2);
            }
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("gclid", str);
            }
            String queryParameter = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("term", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("content", queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("aclid", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("cp1", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("anid", queryParameter5);
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            mo16178c().m16372v().m16337a("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    /* renamed from: a */
    public final Bundle m16736a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object a = m16726a(str, bundle.get(str));
                if (a == null) {
                    mo16178c().m16372v().m16337a("Param value can't be null", m16352i().m16471b(str));
                } else {
                    m16733a(bundle2, str, a);
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008a, code lost:
        if (m16729a("event param", 40, r0) == false) goto L_0x0065;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c9, code lost:
        if (m16729a("event param", 40, r0) == false) goto L_0x00a4;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0201 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m16723a(java.lang.String r8, java.lang.String r9, android.os.Bundle r10, @androidx.annotation.Nullable java.util.List<java.lang.String> r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C8959c4.m16723a(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean, boolean):android.os.Bundle");
    }

    /* renamed from: a */
    public final zzad m16724a(String str, String str2, Bundle bundle, String str3, long j, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (m16730a(str2) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            return new zzad(str2, new zzaa(m16736a(m16723a(str, str2, bundle2, C7075g.m21152a("_o"), false, false))), str3, j);
        }
        mo16178c().m16375s().m16337a("Invalid conditional property event name", m16352i().m16470c(str2));
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final Object m16726a(String str, Object obj) {
        int i = 256;
        if ("_ev".equals(str)) {
            return m16743a(256, obj, true);
        }
        if (!m16702h(str)) {
            i = 100;
        }
        return m16743a(i, obj, false);
    }

    /* renamed from: a */
    public final void m16742a(int i, String str, String str2, int i2) {
        m16728a((String) null, i, str, str2, i2);
    }

    /* renamed from: a */
    public final void m16733a(Bundle bundle, String str, Object obj) {
        if (bundle != null) {
            if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof String) {
                bundle.putString(str, String.valueOf(obj));
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (str != null) {
                mo16178c().m16370x().m16336a("Not putting event parameter. Invalid value type. name, type", m16352i().m16471b(str), obj != null ? obj.getClass().getSimpleName() : null);
            }
        }
    }

    /* renamed from: a */
    public final void m16728a(String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        m16735a(bundle, i);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        this.f20541a.mo16187b();
        this.f20541a.m16282k().m16236b(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_err", bundle);
    }

    /* renamed from: a */
    public final boolean m16729a(String str, int i, String str2) {
        if (str2 == null) {
            mo16178c().m16375s().m16337a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        } else {
            mo16178c().m16375s().m16335a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m16725a(String str, String str2, int i, Object obj, boolean z) {
        Parcelable[] parcelableArr;
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) <= i) {
                return true;
            }
            mo16178c().m16372v().m16335a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        } else if ((obj instanceof Bundle) && z) {
            return true;
        } else {
            if ((obj instanceof Parcelable[]) && z) {
                for (Parcelable parcelable : (Parcelable[]) obj) {
                    if (!(parcelable instanceof Bundle)) {
                        mo16178c().m16372v().m16336a("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                        return false;
                    }
                }
                return true;
            } else if (!(obj instanceof ArrayList) || !z) {
                return false;
            } else {
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    if (!(obj2 instanceof Bundle)) {
                        mo16178c().m16372v().m16336a("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                        return false;
                    }
                }
                return true;
            }
        }
    }

    /* renamed from: a */
    public final boolean m16721a(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2;
        if (str2 == null) {
            mo16178c().m16375s().m16337a("Name is required and can't be null. Type", str);
            return false;
        }
        C7021t.m21290a(str2);
        String[] strArr2 = f20257g;
        int length = strArr2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (str2.startsWith(strArr2[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            mo16178c().m16375s().m16336a("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        } else if (strArr == null) {
            return true;
        } else {
            C7021t.m21290a(strArr);
            int length2 = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    z2 = false;
                    break;
                } else if (m16705e(str2, strArr[i2])) {
                    z2 = true;
                    break;
                } else {
                    i2++;
                }
            }
            if (!z2) {
                return true;
            }
            mo16178c().m16375s().m16336a("Name is reserved. Type, name", str, str2);
            return false;
        }
    }

    /* renamed from: b */
    public final int m16715b(String str) {
        if (!m16709c("user property", str)) {
            return 6;
        }
        if (!m16721a("user property", AppMeasurement.C3587e.f7140a, str)) {
            return 15;
        }
        return !m16729a("user property", 24, str) ? 6 : 0;
    }

    /* renamed from: b */
    public final int m16714b(String str, Object obj) {
        return "_ldl".equals(str) ? m16725a("user property referrer", str, m16703g(str), obj, false) : m16725a("user property", str, m16703g(str), obj, false) ? 0 : 7;
    }

    /* renamed from: b */
    public final boolean m16718b(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo b = C7097c.m21085b(context).m21087b(str, 64);
            if (b == null || b.signatures == null || b.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            mo16178c().m16375s().m16337a("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            mo16178c().m16375s().m16337a("Error obtaining certificate", e2);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m16713b(String str, String str2) {
        if (str2 == null) {
            mo16178c().m16375s().m16337a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            mo16178c().m16375s().m16337a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (!Character.isLetter(codePointAt)) {
                mo16178c().m16375s().m16336a("Name must start with a letter. Type, name", str, str2);
                return false;
            }
            int length = str2.length();
            int charCount = Character.charCount(codePointAt);
            while (charCount < length) {
                int codePointAt2 = str2.codePointAt(charCount);
                if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                    charCount += Character.charCount(codePointAt2);
                } else {
                    mo16178c().m16375s().m16336a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: c */
    public final Object m16710c(String str, Object obj) {
        return "_ldl".equals(str) ? m16743a(m16703g(str), obj, true) : m16743a(m16703g(str), obj, false);
    }

    /* renamed from: c */
    public final boolean m16711c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String q = m16349l().m16485q();
        mo16187b();
        return q.equals(str);
    }

    /* renamed from: c */
    public final boolean m16709c(String str, String str2) {
        if (str2 == null) {
            mo16178c().m16375s().m16337a("Name is required and can't be null. Type", str);
            return false;
        } else if (str2.length() == 0) {
            mo16178c().m16375s().m16337a("Name is required and can't be empty. Type", str);
            return false;
        } else {
            int codePointAt = str2.codePointAt(0);
            if (Character.isLetter(codePointAt) || codePointAt == 95) {
                int length = str2.length();
                int charCount = Character.charCount(codePointAt);
                while (charCount < length) {
                    int codePointAt2 = str2.codePointAt(charCount);
                    if (codePointAt2 == 95 || Character.isLetterOrDigit(codePointAt2)) {
                        charCount += Character.charCount(codePointAt2);
                    } else {
                        mo16178c().m16375s().m16336a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                        return false;
                    }
                }
                return true;
            }
            mo16178c().m16375s().m16336a("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: d */
    public final boolean m16708d(String str) {
        mo16328d();
        if (C7097c.m21085b(getContext()).m21092a(str) == 0) {
            return true;
        }
        mo16178c().m16368z().m16337a("Permission not granted", str);
        return false;
    }

    /* renamed from: d */
    public final boolean m16707d(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (m16704f(str)) {
                return true;
            }
            if (!this.f20541a.m16267z()) {
                return false;
            }
            mo16178c().m16375s().m16337a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C9027o.m16380a(str));
            return false;
        } else if (!TextUtils.isEmpty(str2)) {
            if (m16704f(str2)) {
                return true;
            }
            mo16178c().m16375s().m16337a("Invalid gma_app_id. Analytics disabled.", C9027o.m16380a(str2));
            return false;
        } else if (!this.f20541a.m16267z()) {
            return false;
        } else {
            mo16178c().m16375s().m16338a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    /* renamed from: p */
    public final boolean mo16126p() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9035p1
    @androidx.annotation.WorkerThread
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo16340q() {
        /*
            r5 = this;
            r0 = r5
            r0.mo16328d()
            java.security.SecureRandom r0 = new java.security.SecureRandom
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            long r0 = r0.nextLong()
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0038
            r0 = r6
            long r0 = r0.nextLong()
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0038
            r0 = r5
            h.i.a.e.m.b.o r0 = r0.mo16178c()
            h.i.a.e.m.b.q r0 = r0.m16372v()
            java.lang.String r1 = "Utils falling back to Random for random id"
            r0.m16338a(r1)
            r0 = r7
            r9 = r0
        L_0x0038:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.f20259d
            r1 = r9
            r0.set(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C8959c4.mo16340q():void");
    }

    /* renamed from: s */
    public final long m16701s() {
        long andIncrement;
        long nextLong;
        long j;
        if (this.f20259d.get() == 0) {
            synchronized (this.f20259d) {
                nextLong = new Random(System.nanoTime() ^ mo16174e().currentTimeMillis()).nextLong();
                int i = this.f20260e + 1;
                this.f20260e = i;
                j = i;
            }
            return nextLong + j;
        }
        synchronized (this.f20259d) {
            this.f20259d.compareAndSet(-1L, 1L);
            andIncrement = this.f20259d.getAndIncrement();
        }
        return andIncrement;
    }

    @WorkerThread
    /* renamed from: t */
    public final SecureRandom m16700t() {
        mo16328d();
        if (this.f20258c == null) {
            this.f20258c = new SecureRandom();
        }
        return this.f20258c;
    }

    /* renamed from: u */
    public final int m16699u() {
        if (this.f20261f == null) {
            this.f20261f = Integer.valueOf(C6793d.m21896a().m21887b(getContext()) / 1000);
        }
        return this.f20261f.intValue();
    }

    @WorkerThread
    /* renamed from: v */
    public final String m16698v() {
        byte[] bArr = new byte[16];
        m16700t().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }
}
