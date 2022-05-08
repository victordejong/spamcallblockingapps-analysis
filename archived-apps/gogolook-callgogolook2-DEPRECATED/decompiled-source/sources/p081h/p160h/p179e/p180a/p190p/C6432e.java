package p081h.p160h.p179e.p180a.p190p;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.aotter.net.volley.toolbox.JsonRequest;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p183i.C6359b;
/* renamed from: h.h.e.a.p.e */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/e.class */
public class C6432e {

    /* renamed from: a */
    public static final char[] f16045a = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    public static String f16046b = null;

    /* renamed from: a */
    public static int m22611a() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: a */
    public static int m22610a(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(m22595c(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
        }
        return i;
    }

    /* renamed from: a */
    public static String m22609a(Context context, String str) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
            if (signatureArr.length <= 0) {
                return null;
            }
            Signature signature = signatureArr[0];
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(signature.toByteArray());
            return m22601a(instance.digest());
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m22602a(JSONObject jSONObject) {
        String str;
        try {
            ArrayList<String> arrayList = new ArrayList();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                arrayList.add(keys.next());
            }
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            for (String str2 : arrayList) {
                sb.append(str2 + "=" + jSONObject.get(str2) + PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            str = sb.toString();
        } catch (JSONException e) {
            C6438i.m22583a(e);
            str = null;
        }
        return str;
    }

    /* renamed from: a */
    public static String m22601a(byte[] bArr) {
        String encodeToString = Base64.encodeToString(bArr, 0);
        if (encodeToString == null) {
            return null;
        }
        String str = encodeToString;
        if (encodeToString.contains("\n")) {
            str = encodeToString.replaceAll("\n", "");
        }
        return str;
    }

    /* renamed from: a */
    public static void m22608a(Exception exc, String str) {
        m22607a(exc, str, "", "", false);
    }

    /* renamed from: a */
    public static void m22607a(Exception exc, String str, String str2, String str3, boolean z) {
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            exc.printStackTrace(printWriter);
            String stringWriter2 = stringWriter.toString();
            printWriter.close();
            stringWriter.close();
            String str4 = str3;
            if (TextUtils.isEmpty(str3)) {
                str4 = exc.getClass().getSimpleName();
            }
            String str5 = str2;
            if (TextUtils.isEmpty(str2)) {
                str5 = "error";
            }
            if (TextUtils.isEmpty(str)) {
                m22603a(str5, str4, stringWriter2, false, z, false);
                return;
            }
            m22603a(str5, str4, stringWriter2 + "\n msg = " + str, false, z, false);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m22606a(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    /* renamed from: a */
    public static void m22605a(String str, String str2) {
        m22603a("gf_sdk_error", str, str2, true, false, true);
    }

    /* renamed from: a */
    public static void m22604a(String str, String str2, String str3) {
        m22603a(str, str2, str3, true, false, true);
    }

    /* renamed from: a */
    public static void m22603a(String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        C6359b a = C6359b.m23013a();
        a.f15812d = true;
        a.f15810b = z;
        a.f15811c = z2;
        a.f15809a = z3;
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str3);
        C6357a.m23028a(str, arrayList, (List<Integer>) null, a);
    }

    /* renamed from: b */
    public static int m22599b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return 0;
            }
            if (activeNetworkInfo.getType() == 0) {
                return 1;
            }
            return activeNetworkInfo.getType() == 1 ? 2 : 0;
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: b */
    public static String m22600b() {
        return Locale.getDefault().getLanguage();
    }

    /* renamed from: b */
    public static String m22598b(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            char[] cArr2 = new char[32];
            int i = 0;
            for (int i2 = 0; i2 < 16; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i3 + 1;
                cArr2[i3] = cArr[b & 15];
            }
            str = new String(cArr2);
        } catch (Exception e) {
        }
        return str;
    }

    /* renamed from: b */
    public static String m22597b(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = f16045a;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: c */
    public static String m22596c() {
        return Build.MANUFACTURER;
    }

    /* renamed from: c */
    public static String m22595c(Context context) {
        if (TextUtils.isEmpty(f16046b)) {
            f16046b = context.getPackageName();
        }
        return f16046b;
    }

    /* renamed from: c */
    public static String m22594c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            instance.update(str.getBytes(JsonRequest.PROTOCOL_CHARSET));
            return m22601a(instance.digest());
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            C6438i.m22583a(e);
            return null;
        }
    }

    /* renamed from: c */
    public static byte[] m22593c(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = (byte) (bArr[i] ^ 255);
        }
        return bArr2;
    }

    /* renamed from: d */
    public static String m22592d() {
        return Build.MODEL;
    }

    /* renamed from: d */
    public static boolean m22591d(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            networkInfo = null;
        }
        if (networkInfo != null) {
            return networkInfo.isConnected() && networkInfo.isAvailable();
        }
        return true;
    }

    /* renamed from: d */
    public static byte[] m22590d(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = Integer.valueOf(str.substring(i2, i2 + 2), 16).byteValue();
        }
        return bArr;
    }

    /* renamed from: e */
    public static long m22589e() {
        return System.currentTimeMillis() / 1000;
    }
}
