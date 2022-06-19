package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.core.content.FileProvider;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
/* renamed from: e.a.b0.q.s */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/s.class */
public class C8612s {

    /* renamed from: a */
    public static Uri f26462a;

    /* renamed from: b */
    public static Uri f26463b;

    /* renamed from: c */
    public static Set<Uri> f26464c = new HashSet();

    /* renamed from: a */
    public static Intent m28221a(Context context) {
        return new Intent("android.media.action.IMAGE_CAPTURE").putExtra("return-data", false).putExtra("output", m28215g(context));
    }

    /* renamed from: b */
    public static Intent m28220b(Context context, Uri uri) {
        Intent putExtra = new Intent("com.android.camera.action.CROP").setDataAndType(uri, "image/*").putExtra("outputX", 800).putExtra("outputY", 800).putExtra("aspectX", 1).putExtra("aspectY", 1).putExtra("scale", true).putExtra("scaleUpIfNeeded", true).putExtra("return-data", false);
        if (f26463b == null) {
            f26463b = FileProvider.m42989b(context, C8582g0.m28332I(context), new File(context.getCacheDir(), "crop.jpg"));
        }
        Intent putExtra2 = putExtra.putExtra("output", f26463b);
        putExtra2.addFlags(1);
        putExtra2.addFlags(2);
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(putExtra2, 65536)) {
            String str = resolveInfo.activityInfo.packageName;
            m28214h(context, f26462a, str);
            m28214h(context, f26463b, str);
        }
        return putExtra2;
    }

    /* renamed from: c */
    public static Intent m28219c() {
        return new Intent().setType("image/*").setAction("android.intent.action.GET_CONTENT");
    }

    /* renamed from: d */
    public static void m28218d(Context context) {
        File cacheDir = context.getCacheDir();
        new File(cacheDir, "capture.jpg").delete();
        new File(cacheDir, "crop.jpg").delete();
        m28212j(context);
    }

    /* renamed from: e */
    public static Uri m28217e(Context context) {
        return Uri.fromFile(new File(context.getCacheDir(), "capture.jpg"));
    }

    /* renamed from: f */
    public static Uri m28216f(Context context) {
        return Uri.fromFile(new File(context.getCacheDir(), "crop.jpg"));
    }

    /* renamed from: g */
    public static Uri m28215g(Context context) {
        if (f26462a == null) {
            f26462a = FileProvider.m42989b(context, C8582g0.m28332I(context), new File(context.getCacheDir(), "capture.jpg"));
        }
        return f26462a;
    }

    /* renamed from: h */
    public static void m28214h(Context context, Uri uri, String... strArr) {
        for (String str : strArr) {
            context.grantUriPermission(str, uri, 3);
        }
        f26464c.add(uri);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        if (r0.outHeight > r9) goto L11;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m28213i(android.content.ContentResolver r5, android.net.Uri r6, int r7, int r8, int r9, android.graphics.Bitmap.CompressFormat r10, int r11) throws java.io.IOException, java.lang.SecurityException {
        /*
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            r1 = 0
            r0.inScaled = r1
            r0 = r12
            r1 = 0
            r0.inDensity = r1
            r0 = r12
            r1 = 0
            r0.inTargetDensity = r1
            r0 = r12
            r1 = r7
            r2 = r8
            int r1 = r1 / r2
            r0.inSampleSize = r1
            r0 = r12
            r1 = 0
            r0.inJustDecodeBounds = r1
            r0 = r12
            r1 = 0
            r0.inMutable = r1
            r0 = 0
            r13 = r0
            r0 = r5
            r1 = r6
            java.io.InputStream r0 = r0.openInputStream(r1)     // Catch: java.lang.Throwable -> L8c
            r6 = r0
            r0 = r6
            r1 = 0
            r2 = r12
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0, r1, r2)     // Catch: java.lang.Throwable -> L88
            r13 = r0
            r0 = r12
            int r0 = r0.outWidth     // Catch: java.lang.Throwable -> L88
            r1 = r8
            if (r0 > r1) goto L57
            r0 = r13
            r5 = r0
            r0 = r12
            int r0 = r0.outHeight     // Catch: java.lang.Throwable -> L88
            r1 = r9
            if (r0 <= r1) goto L61
        L57:
            r0 = r13
            r1 = r8
            r2 = r9
            r3 = 0
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L88
            r5 = r0
        L61:
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L88 java.lang.Throwable -> L88
            r13 = r0
            r0 = r13
            r0.<init>()     // Catch: java.lang.Throwable -> L88
            r0 = r5
            r1 = r10
            r2 = r11
            r3 = r13
            boolean r0 = r0.compress(r1, r2, r3)     // Catch: java.lang.Throwable -> L88
            r0 = r13
            byte[] r0 = r0.toByteArray()     // Catch: java.lang.Throwable -> L88
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L86
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> L9c
        L86:
            r0 = r5
            return r0
        L88:
            r5 = move-exception
            goto L90
        L8c:
            r5 = move-exception
            r0 = r13
            r6 = r0
        L90:
            r0 = r6
            if (r0 == 0) goto L9a
            r0 = r6
            r0.close()     // Catch: java.io.IOException -> La0
        L9a:
            r0 = r5
            throw r0
        L9c:
            r6 = move-exception
            goto L86
        La0:
            r6 = move-exception
            goto L9a
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p430q.C8612s.m28213i(android.content.ContentResolver, android.net.Uri, int, int, int, android.graphics.Bitmap$CompressFormat, int):byte[]");
    }

    /* renamed from: j */
    public static void m28212j(Context context) {
        for (Uri uri : f26464c) {
            context.revokeUriPermission(uri, 3);
        }
    }
}
