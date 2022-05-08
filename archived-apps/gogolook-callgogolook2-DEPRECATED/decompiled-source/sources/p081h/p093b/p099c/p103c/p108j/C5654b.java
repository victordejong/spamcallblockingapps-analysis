package p081h.p093b.p099c.p103c.p108j;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;
import p081h.p093b.p099c.p103c.C5629e;
import p081h.p093b.p099c.p103c.p106h.AbstractC5649b;
/* renamed from: h.b.c.c.j.b */
/* loaded from: classes-dex2jar.jar:h/b/c/c/j/b.class */
public class C5654b {

    /* renamed from: a */
    public static final Pattern f14156a = Pattern.compile("^(?:.*;)?base64,.*");

    /* renamed from: b */
    public static final EnumC5657c f14157b;

    /* renamed from: h.b.c.c.j.b$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/j/b$a.class */
    public static class C5655a implements AbstractC5658d {

        /* renamed from: a */
        public final ContentResolver f14158a;

        /* renamed from: b */
        public final Uri f14159b;

        public C5655a(ContentResolver contentResolver, Uri uri) {
            this.f14158a = contentResolver;
            this.f14159b = uri;
        }

        @Override // p081h.p093b.p099c.p103c.p108j.C5654b.AbstractC5658d
        /* renamed from: a */
        public InputStream mo24869a() throws FileNotFoundException {
            return this.f14158a.openInputStream(this.f14159b);
        }
    }

    /* renamed from: h.b.c.c.j.b$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/j/b$b.class */
    public static class C5656b extends C5655a {

        /* renamed from: c */
        public byte[] f14160c;

        public C5656b(ContentResolver contentResolver, Uri uri) {
            super(contentResolver, uri);
        }

        @Override // p081h.p093b.p099c.p103c.p108j.C5654b.C5655a, p081h.p093b.p099c.p103c.p108j.C5654b.AbstractC5658d
        /* renamed from: a */
        public InputStream mo24869a() throws FileNotFoundException {
            if (this.f14160c == null) {
                this.f14160c = m24870a(this.f14159b);
                if (this.f14160c == null) {
                    return super.mo24869a();
                }
            }
            return new ByteArrayInputStream(this.f14160c);
        }

        /* renamed from: a */
        public final byte[] m24870a(Uri uri) {
            String schemeSpecificPart = uri.getSchemeSpecificPart();
            try {
                if (schemeSpecificPart.startsWith("base64,")) {
                    return Base64.decode(schemeSpecificPart.substring(7), 8);
                }
                if (C5654b.f14156a.matcher(schemeSpecificPart).matches()) {
                    return Base64.decode(schemeSpecificPart.substring(schemeSpecificPart.indexOf("base64,") + 7), 0);
                }
                return null;
            } catch (IllegalArgumentException e) {
                Log.e("ImageUtils", "Mailformed data URI: " + e);
                return null;
            }
        }
    }

    /* renamed from: h.b.c.c.j.b$c */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/j/b$c.class */
    public enum EnumC5657c {
        EXTRA_SMALL,
        SMALL,
        NORMAL
    }

    /* renamed from: h.b.c.c.j.b$d */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/j/b$d.class */
    public interface AbstractC5658d {
        /* renamed from: a */
        InputStream mo24869a() throws FileNotFoundException;
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f14157b = EnumC5657c.NORMAL;
            return;
        }
        int i = C5629e.f14065L;
        if (i >= 32) {
            f14157b = EnumC5657c.NORMAL;
        } else if (i >= 24) {
            f14157b = EnumC5657c.SMALL;
        } else {
            f14157b = EnumC5657c.EXTRA_SMALL;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [h.b.c.c.j.b$d] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* renamed from: a */
    public static Bitmap m24871a(AbstractC5658d dVar, Rect rect, BitmapFactory.Options options) throws FileNotFoundException {
        Throwable th;
        OutOfMemoryError e;
        InputStream inputStream;
        IOException e2;
        InputStream inputStream2;
        InputStream a;
        try {
            try {
                a = dVar.mo24869a();
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                int a2 = C5653a.m24876a(a, -1L);
                if (a != null) {
                    a.close();
                }
                InputStream a3 = dVar.mo24869a();
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(a3, rect, options);
                    if (a3 != null && decodeStream == null && !options.inJustDecodeBounds) {
                        throw new UnsupportedOperationException("Image bytes cannot be decoded into a Bitmap.");
                    }
                    if (decodeStream == null || a2 == 0) {
                        if (a3 != null) {
                            try {
                                a3.close();
                            } catch (IOException e3) {
                            }
                        }
                        return decodeStream;
                    }
                    Matrix matrix = new Matrix();
                    matrix.postRotate(a2);
                    Bitmap createBitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), matrix, true);
                    if (a3 != null) {
                        try {
                            a3.close();
                        } catch (IOException e4) {
                        }
                    }
                    return createBitmap;
                } catch (IOException e5) {
                    e2 = e5;
                    inputStream2 = a3;
                    Log.e("ImageUtils", "ImageUtils#decodeStream(InputStream, Rect, Options) threw an IOE", e2);
                    if (inputStream2 == null) {
                        return null;
                    }
                    try {
                        inputStream2.close();
                        return null;
                    } catch (IOException e6) {
                        return null;
                    }
                } catch (OutOfMemoryError e7) {
                    e = e7;
                    inputStream = a3;
                    Log.e("ImageUtils", "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME", e);
                    if (inputStream == null) {
                        return null;
                    }
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e8) {
                        return null;
                    }
                }
            } catch (IOException e9) {
                e2 = e9;
                inputStream2 = a;
            } catch (OutOfMemoryError e10) {
                e = e10;
                inputStream = a;
            } catch (Throwable th3) {
                th = th3;
                dVar = a;
                if (dVar != 0) {
                    try {
                        dVar.close();
                    } catch (IOException e11) {
                    }
                }
                throw th;
            }
        } catch (IOException e12) {
            e2 = e12;
            inputStream2 = null;
        } catch (OutOfMemoryError e13) {
            e = e13;
            inputStream = null;
        } catch (Throwable th4) {
            th = th4;
            dVar = 0;
        }
    }

    /* renamed from: a */
    public static Point m24872a(AbstractC5658d dVar) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        m24871a(dVar, (Rect) null, options);
        return new Point(options.outWidth, options.outHeight);
    }

    /* renamed from: a */
    public static AbstractC5649b.C5650a m24873a(ContentResolver contentResolver, Uri uri, int i) {
        AbstractC5649b.C5650a aVar = new AbstractC5649b.C5650a();
        AbstractC5658d a = m24874a(contentResolver, uri);
        try {
            Point a2 = m24872a(a);
            if (a2 == null) {
                aVar.f14151c = 1;
                return aVar;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = Math.max(a2.x / i, a2.y / i);
            aVar.f14150b = m24871a(a, (Rect) null, options);
            aVar.f14151c = 0;
            return aVar;
        } catch (FileNotFoundException | IllegalArgumentException e) {
            return aVar;
        } catch (IOException e2) {
            aVar.f14151c = 1;
            return aVar;
        } catch (SecurityException e3) {
            aVar.f14151c = 1;
            return aVar;
        }
    }

    /* renamed from: a */
    public static AbstractC5658d m24874a(ContentResolver contentResolver, Uri uri) {
        return "data".equals(uri.getScheme()) ? new C5656b(contentResolver, uri) : new C5655a(contentResolver, uri);
    }
}
