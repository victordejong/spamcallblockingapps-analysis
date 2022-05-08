package com.adbert.p009a;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* renamed from: com.adbert.a.e */
/* loaded from: classes-dex2jar.jar:com/adbert/a/e.class */
public class C1393e {

    /* renamed from: a */
    public static int f642a = 720;

    /* renamed from: a */
    public static int m37175a(int i, int i2, int i3) {
        return (int) ((i / i2) * i3);
    }

    /* renamed from: a */
    public static File m37174a(Context context) {
        String str = "JPEG_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()) + "_";
        File file = new File(context.getExternalCacheDir(), "browser-cache");
        file.mkdirs();
        return File.createTempFile(str, ".jpg", file);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* renamed from: a */
    public static String m37173a(Context context, Uri uri) {
        try {
            Cursor query = context.getContentResolver().query(uri, null, null, null, null);
            if (query == null) {
                context = uri.getPath();
            } else {
                query.moveToFirst();
                String string = query.getString(query.getColumnIndex("_data"));
                query.close();
                context = string;
            }
        } catch (Exception e) {
            C1402g.m37141a(e);
            context = m37171b(context, uri);
        }
        String str = context;
        if (context.isEmpty()) {
            str = uri.getPath();
        }
        return str;
    }

    /* renamed from: a */
    public static String m37172a(Context context, Uri uri, String str) {
        Bitmap bitmap;
        try {
            if (Build.VERSION.SDK_INT > 19) {
                Bitmap c = m37170c(context, uri);
                bitmap = c;
                if (c == null) {
                    bitmap = BitmapFactory.decodeFile(str);
                }
            } else {
                Bitmap decodeFile = BitmapFactory.decodeFile(str);
                bitmap = decodeFile;
                if (decodeFile == null) {
                    bitmap = m37170c(context, uri);
                }
            }
            Bitmap bitmap2 = bitmap;
            if (bitmap == null) {
                bitmap2 = m37169d(context, uri);
            }
            if (bitmap2 == null) {
                return "";
            }
            Bitmap bitmap3 = bitmap2;
            if (bitmap2.getHeight() > f642a) {
                bitmap3 = Bitmap.createScaledBitmap(bitmap2, f642a, m37175a(f642a, bitmap2.getWidth(), bitmap2.getHeight()), false);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap3.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            if (bitmap3 != null && !bitmap3.isRecycled()) {
                bitmap3.recycle();
            }
            return encodeToString;
        } catch (Exception e) {
            C1402g.m37141a(e);
            return "";
        } catch (OutOfMemoryError e2) {
            return "";
        }
    }

    /* renamed from: b */
    public static String m37171b(Context context, Uri uri) {
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(context.getContentResolver().openInputStream(uri));
            if (decodeStream == null) {
                return "";
            }
            String str = System.currentTimeMillis() + ".jpg";
            FileOutputStream fileOutputStream = new FileOutputStream(context.getCacheDir().getAbsolutePath() + File.separator + str);
            decodeStream.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            String absolutePath = new File(context.getCacheDir(), str).getAbsolutePath();
            if (!decodeStream.isRecycled()) {
                decodeStream.recycle();
            }
            return absolutePath;
        } catch (FileNotFoundException e) {
            C1402g.m37141a(e);
            return "";
        } catch (Exception e2) {
            C1402g.m37141a(e2);
            return "";
        }
    }

    /* renamed from: c */
    public static Bitmap m37170c(Context context, Uri uri) {
        Bitmap bitmap;
        try {
            bitmap = MediaStore.Images.Media.getBitmap(context.getContentResolver(), uri);
        } catch (Exception e) {
            C1402g.m37141a(e);
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: d */
    public static Bitmap m37169d(Context context, Uri uri) {
        Bitmap bitmap;
        try {
            bitmap = BitmapFactory.decodeStream(context.getContentResolver().openInputStream(uri));
        } catch (Exception e) {
            C1402g.m37141a(e);
            bitmap = null;
        }
        return bitmap;
    }
}
