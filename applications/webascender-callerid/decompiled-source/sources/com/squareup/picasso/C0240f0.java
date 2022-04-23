package com.squareup.picasso;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import n.h;
import n.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.f0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0.class */
public final class C0240f0 {

    /* renamed from: a */
    static final StringBuilder f465a = new StringBuilder();

    /* renamed from: b */
    private static final i f466b = i.j("RIFF");

    /* renamed from: c */
    private static final i f467c = i.j("WEBP");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.f0$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$a.class */
    public static final class HandlerC0241a extends Handler {
        HandlerC0241a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* renamed from: com.squareup.picasso.f0$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$b.class */
    private static class C0242b extends Thread {
        C0242b(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* renamed from: com.squareup.picasso.f0$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$c.class */
    static class ThreadFactoryC0243c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C0242b(runnable);
        }
    }

    /* renamed from: a */
    static long m714a(File file) {
        long j;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            int i = Build.VERSION.SDK_INT;
            j = ((i < 18 ? statFs.getBlockCount() : statFs.getBlockCountLong()) * (i < 18 ? statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50;
        } catch (IllegalArgumentException e) {
            j = 5242880;
        }
        return Math.max(Math.min(j, 52428800L), 5242880L);
    }

    /* renamed from: b */
    static int m713b(Context context) {
        ActivityManager activityManager = (ActivityManager) m701n(context, "activity");
        return (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m712c() {
        if (!m698q()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static <T> T m711d(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: e */
    static File m710e(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static String m709f(C0258w wVar) {
        StringBuilder sb = f465a;
        String g = m708g(wVar, sb);
        sb.setLength(0);
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static String m708g(C0258w wVar, StringBuilder sb) {
        String str = wVar.f519f;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(wVar.f519f);
        } else {
            Uri uri = wVar.f517d;
            if (uri != null) {
                String uri2 = uri.toString();
                sb.ensureCapacity(uri2.length() + 50);
                sb.append(uri2);
            } else {
                sb.ensureCapacity(50);
                sb.append(wVar.f518e);
            }
        }
        sb.append('\n');
        if (wVar.f527n != 0.0f) {
            sb.append("rotation:");
            sb.append(wVar.f527n);
            if (wVar.f530q) {
                sb.append('@');
                sb.append(wVar.f528o);
                sb.append('x');
                sb.append(wVar.f529p);
            }
            sb.append('\n');
        }
        if (wVar.m648c()) {
            sb.append("resize:");
            sb.append(wVar.f521h);
            sb.append('x');
            sb.append(wVar.f522i);
            sb.append('\n');
        }
        if (wVar.f523j) {
            sb.append("centerCrop:");
            sb.append(wVar.f524k);
            sb.append('\n');
        } else if (wVar.f525l) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<AbstractC0239e0> list = wVar.f520g;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(wVar.f520g.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static void m707h(Looper looper) {
        HandlerC0241a aVar = new HandlerC0241a(looper);
        aVar.sendMessageDelayed(aVar.obtainMessage(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static int m706i(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static String m705j(RunnableC0230c cVar) {
        return m704k(cVar, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static String m704k(RunnableC0230c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        AbstractC0224a h = cVar.m740h();
        if (h != null) {
            sb.append(h.f395b.m647d());
        }
        List<AbstractC0224a> i = cVar.m739i();
        if (i != null) {
            int size = i.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 > 0 || h != null) {
                    sb.append(", ");
                }
                sb.append(i.get(i2).f395b.m647d());
            }
        }
        return sb.toString();
    }

    /* renamed from: l */
    static int m703l(Resources resources, C0258w wVar) throws FileNotFoundException {
        Uri uri;
        int parseInt;
        int i = wVar.f518e;
        if (i != 0 || (uri = wVar.f517d) == null) {
            return i;
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            List<String> pathSegments = wVar.f517d.getPathSegments();
            if (pathSegments == null || pathSegments.isEmpty()) {
                throw new FileNotFoundException("No path segments: " + wVar.f517d);
            }
            if (pathSegments.size() == 1) {
                try {
                    parseInt = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException("Last path segment is not a resource ID: " + wVar.f517d);
                }
            } else if (pathSegments.size() == 2) {
                parseInt = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + wVar.f517d);
            }
            return parseInt;
        }
        throw new FileNotFoundException("No package provided: " + wVar.f517d);
    }

    /* renamed from: m */
    static Resources m702m(Context context, C0258w wVar) throws FileNotFoundException {
        Uri uri;
        if (wVar.f518e != 0 || (uri = wVar.f517d) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority != null) {
            try {
                return context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException e) {
                throw new FileNotFoundException("Unable to obtain resources for package: " + wVar.f517d);
            }
        } else {
            throw new FileNotFoundException("No package provided: " + wVar.f517d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static <T> T m701n(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static boolean m700o(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static boolean m699p(Context context) {
        boolean z;
        ContentResolver contentResolver = context.getContentResolver();
        boolean z2 = false;
        try {
        } catch (NullPointerException | SecurityException e) {
            z = false;
        }
        if (Build.VERSION.SDK_INT < 17) {
            if (Settings.System.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
                z2 = true;
            }
            return z2;
        }
        z = false;
        if (Settings.Global.getInt(contentResolver, "airplane_mode_on", 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: q */
    static boolean m698q() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static boolean m697r(h hVar) throws IOException {
        return hVar.t0(0L, f466b) && hVar.t0(8L, f467c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static void m696s(String str, String str2, String str3) {
        m695t(str, str2, str3, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static void m695t(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }
}
