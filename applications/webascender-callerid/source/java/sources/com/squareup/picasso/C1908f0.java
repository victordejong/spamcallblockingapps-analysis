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
public final class C1908f0 {

    /* renamed from: a */
    static final StringBuilder f5144a = new StringBuilder();

    /* renamed from: b */
    private static final i f5145b = i.j("RIFF");

    /* renamed from: c */
    private static final i f5146c = i.j("WEBP");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.f0$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$a.class */
    public static final class HandlerC1909a extends Handler {
        HandlerC1909a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* renamed from: com.squareup.picasso.f0$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$b.class */
    private static class C1910b extends Thread {
        C1910b(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.picasso.f0$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/f0$c.class */
    public static class ThreadFactoryC1911c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new C1910b(runnable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v6, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* renamed from: a */
    static long m714a(File file) {
        ?? r8;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            int i = Build.VERSION.SDK_INT;
            r8 = ((i < 18 ? statFs.getBlockCount() : statFs.getBlockCountLong()) * (i < 18 ? statFs.getBlockSize() : statFs.getBlockSizeLong())) / 50;
        } catch (IllegalArgumentException e) {
            r8 = true;
        }
        return Math.max(Math.min(r8 == true ? 1L : 0L, 52428800L), 5242880L);
    }

    /* renamed from: b */
    static int m713b(Context context) {
        ActivityManager activityManager = (ActivityManager) m701n(context, "activity");
        return (int) ((((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass()) * 1048576) / 7);
    }

    /* renamed from: c */
    public static void m712c() {
        if (m698q()) {
            return;
        }
        throw new IllegalStateException("Method call should happen from the main thread.");
    }

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

    /* renamed from: f */
    public static String m709f(C1926w c1926w) {
        StringBuilder sb = f5144a;
        String m708g = m708g(c1926w, sb);
        sb.setLength(0);
        return m708g;
    }

    /* renamed from: g */
    public static String m708g(C1926w c1926w, StringBuilder sb) {
        String str = c1926w.f5198f;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(c1926w.f5198f);
        } else {
            Uri uri = c1926w.f5196d;
            if (uri != null) {
                String uri2 = uri.toString();
                sb.ensureCapacity(uri2.length() + 50);
                sb.append(uri2);
            } else {
                sb.ensureCapacity(50);
                sb.append(c1926w.f5197e);
            }
        }
        sb.append('\n');
        if (c1926w.f5206n != 0.0f) {
            sb.append("rotation:");
            sb.append(c1926w.f5206n);
            if (c1926w.f5209q) {
                sb.append('@');
                sb.append(c1926w.f5207o);
                sb.append('x');
                sb.append(c1926w.f5208p);
            }
            sb.append('\n');
        }
        if (c1926w.m648c()) {
            sb.append("resize:");
            sb.append(c1926w.f5200h);
            sb.append('x');
            sb.append(c1926w.f5201i);
            sb.append('\n');
        }
        if (c1926w.f5202j) {
            sb.append("centerCrop:");
            sb.append(c1926w.f5203k);
            sb.append('\n');
        } else if (c1926w.f5204l) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<AbstractC1907e0> list = c1926w.f5199g;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(c1926w.f5199g.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    /* renamed from: h */
    public static void m707h(Looper looper) {
        HandlerC1909a handlerC1909a = new HandlerC1909a(looper);
        handlerC1909a.sendMessageDelayed(handlerC1909a.obtainMessage(), 1000L);
    }

    /* renamed from: i */
    public static int m706i(Bitmap bitmap) {
        int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    /* renamed from: j */
    public static String m705j(RunnableC1898c runnableC1898c) {
        return m704k(runnableC1898c, "");
    }

    /* renamed from: k */
    public static String m704k(RunnableC1898c runnableC1898c, String str) {
        StringBuilder sb = new StringBuilder(str);
        AbstractC1892a m740h = runnableC1898c.m740h();
        if (m740h != null) {
            sb.append(m740h.f5074b.m647d());
        }
        List<AbstractC1892a> m739i = runnableC1898c.m739i();
        if (m739i != null) {
            int size = m739i.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || m740h != null) {
                    sb.append(", ");
                }
                sb.append(m739i.get(i).f5074b.m647d());
            }
        }
        return sb.toString();
    }

    /* renamed from: l */
    static int m703l(Resources resources, C1926w c1926w) throws FileNotFoundException {
        Uri uri;
        int parseInt;
        int i = c1926w.f5197e;
        if (i != 0 || (uri = c1926w.f5196d) == null) {
            return i;
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + c1926w.f5196d);
        }
        List<String> pathSegments = c1926w.f5196d.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + c1926w.f5196d);
        }
        if (pathSegments.size() == 1) {
            try {
                parseInt = Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException e) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + c1926w.f5196d);
            }
        } else if (pathSegments.size() != 2) {
            throw new FileNotFoundException("More than two path segments: " + c1926w.f5196d);
        } else {
            parseInt = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        return parseInt;
    }

    /* renamed from: m */
    static Resources m702m(Context context, C1926w c1926w) throws FileNotFoundException {
        Uri uri;
        if (c1926w.f5197e != 0 || (uri = c1926w.f5196d) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + c1926w.f5196d);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException e) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + c1926w.f5196d);
        }
    }

    /* renamed from: n */
    public static <T> T m701n(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    /* renamed from: o */
    public static boolean m700o(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

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

    /* renamed from: r */
    public static boolean m697r(h hVar) throws IOException {
        return hVar.t0(0L, f5145b) && hVar.t0(8L, f5146c);
    }

    /* renamed from: s */
    public static void m696s(String str, String str2, String str3) {
        m695t(str, str2, str3, "");
    }

    /* renamed from: t */
    public static void m695t(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }
}
