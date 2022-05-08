package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.PlatformVersion;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayk.class */
public final class zzayk {

    /* renamed from: g */
    private float f11541g = -1.0f;
    public static final Handler zzyu = new zzddu(Looper.getMainLooper());

    /* renamed from: a */
    private static final String f11535a = AdView.class.getName();

    /* renamed from: b */
    private static final String f11536b = InterstitialAd.class.getName();

    /* renamed from: c */
    private static final String f11537c = PublisherAdView.class.getName();

    /* renamed from: d */
    private static final String f11538d = PublisherInterstitialAd.class.getName();

    /* renamed from: e */
    private static final String f11539e = SearchAdView.class.getName();

    /* renamed from: f */
    private static final String f11540f = AdLoader.class.getName();

    /* renamed from: a */
    private static void m4210a(ViewGroup viewGroup, zzuj zzujVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() == 0) {
            Context context = viewGroup.getContext();
            TextView textView = new TextView(context);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(i2);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(i);
            int zza = zza(context, 3);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(zzujVar.widthPixels - zza, zzujVar.heightPixels - zza, 17));
            viewGroup.addView(frameLayout, zzujVar.widthPixels, zzujVar.heightPixels);
        }
    }

    public static int zza(Context context, int i) {
        return zza(context.getResources().getDisplayMetrics(), i);
    }

    public static int zza(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.ads.AdSize zza(android.content.Context r6, int r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayk.zza(android.content.Context, int, int, int):com.google.android.gms.ads.AdSize");
    }

    public static String zza(StackTraceElement[] stackTraceElementArr, String str) {
        int i;
        String str2;
        int i2 = 0;
        while (true) {
            i = i2 + 1;
            if (i >= stackTraceElementArr.length) {
                str2 = null;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i2];
            String className = stackTraceElement.getClassName();
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f11535a.equalsIgnoreCase(className) && !f11536b.equalsIgnoreCase(className) && !f11537c.equalsIgnoreCase(className) && !f11538d.equalsIgnoreCase(className) && !f11539e.equalsIgnoreCase(className) && !f11540f.equalsIgnoreCase(className))) {
                i2 = i;
            }
        }
        str2 = stackTraceElementArr[i].getClassName();
        if (str == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        StringBuilder sb = new StringBuilder();
        if (stringTokenizer.hasMoreElements()) {
            sb.append(stringTokenizer.nextToken());
            for (int i3 = 2; i3 > 0 && stringTokenizer.hasMoreElements(); i3--) {
                sb.append(".");
                sb.append(stringTokenizer.nextToken());
            }
            str = sb.toString();
        }
        if (str2 == null || str2.contains(str)) {
            return null;
        }
        return str2;
    }

    public static void zza(Context context, String str, String str2, Bundle bundle, boolean z, zzayp zzaypVar) {
        Context applicationContext = context.getApplicationContext();
        Context context2 = applicationContext;
        if (applicationContext == null) {
            context2 = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", context2.getPackageName());
        String str3 = str;
        if (str == null) {
            int apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(apkVersion);
            sb.append(".19649000");
            str3 = sb.toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        zzaypVar.zzen(appendQueryParameter.toString());
    }

    public static void zza(boolean z, HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty(AbstractC0007a.HEADER_USER_AGENT, str);
        }
        httpURLConnection.setUseCaches(false);
    }

    public static int zzb(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    public static String zzbi(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || zzxd()) {
            string = "emulator";
        }
        return zzes(string);
    }

    public static String zzbj(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    public static boolean zzbk(Context context) {
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        return isGooglePlayServicesAvailable == 0 || isGooglePlayServicesAvailable == 2;
    }

    public static boolean zzbl(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    public static boolean zzbm(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (PlatformVersion.isAtLeastJellyBeanMR1()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            intValue = displayMetrics.heightPixels;
            intValue2 = displayMetrics.widthPixels;
        } else {
            try {
                intValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                intValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
                return false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == intValue && displayMetrics.widthPixels == intValue2;
    }

    public static int zzbn(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", AbstractC0007a.ANDROID_CLIENT_TYPE);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static Throwable zzc(Throwable th) {
        if (zzabi.zzcuo.get().booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th2 = null;
        while (!linkedList.isEmpty()) {
            Throwable th3 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th3.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (zzet(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else {
                    String className = stackTraceElement.getClassName();
                    if (!(!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java.")))) {
                        stackTraceElement = new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1);
                    }
                    arrayList.add(stackTraceElement);
                }
            }
            if (z) {
                th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            }
        }
        return th2;
    }

    public static boolean zzc(Context context, int i) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i) == 0;
    }

    public static String zzes(String str) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, instance.digest()));
            } catch (ArithmeticException e) {
                return null;
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return null;
    }

    public static boolean zzet(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(zzabi.zzcum.get());
    }

    public static boolean zzxd() {
        return Build.DEVICE.startsWith("generic");
    }

    public static boolean zzxe() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String zzxf() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(byteArray);
                instance.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(instance.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return bigInteger;
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zza(context, str, str2, bundle, true, new C1881fs());
    }

    public final void zza(ViewGroup viewGroup, zzuj zzujVar, String str) {
        m4210a(viewGroup, zzujVar, str, -16777216, -1);
    }

    public final void zza(ViewGroup viewGroup, zzuj zzujVar, String str, String str2) {
        zzayu.zzez(str2);
        m4210a(viewGroup, zzujVar, str, -65536, -16777216);
    }

    public final int zzb(Context context, int i) {
        if (this.f11541g < 0.0f) {
            synchronized (this) {
                if (this.f11541g < 0.0f) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f11541g = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f11541g);
    }
}
