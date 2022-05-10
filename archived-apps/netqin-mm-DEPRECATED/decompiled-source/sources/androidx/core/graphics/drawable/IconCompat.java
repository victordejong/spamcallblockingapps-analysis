package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import p012b.p042i.p044i.p045c.C0882f;
import p012b.p042i.p046j.p047m.C0907a;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: j */
    public static final PorterDuff.Mode f1138j = PorterDuff.Mode.SRC_IN;

    /* renamed from: a */
    public int f1139a;

    /* renamed from: b */
    public Object f1140b;

    /* renamed from: c */
    public byte[] f1141c;

    /* renamed from: d */
    public Parcelable f1142d;

    /* renamed from: e */
    public int f1143e;

    /* renamed from: f */
    public int f1144f;

    /* renamed from: g */
    public ColorStateList f1145g;

    /* renamed from: h */
    public PorterDuff.Mode f1146h;

    /* renamed from: i */
    public String f1147i;

    public IconCompat() {
        this.f1139a = -1;
        this.f1141c = null;
        this.f1142d = null;
        this.f1143e = 0;
        this.f1144f = 0;
        this.f1145g = null;
        this.f1146h = f1138j;
        this.f1147i = null;
    }

    public IconCompat(int i) {
        this.f1139a = -1;
        this.f1141c = null;
        this.f1142d = null;
        this.f1143e = 0;
        this.f1144f = 0;
        this.f1145g = null;
        this.f1146h = f1138j;
        this.f1147i = null;
        this.f1139a = i;
    }

    /* renamed from: a */
    public static int m38568a(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon resource", e);
            return 0;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        }
    }

    /* renamed from: a */
    public static Resources m38571a(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e);
            return null;
        }
    }

    /* renamed from: a */
    public static Bitmap m38569a(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f = min;
        float f2 = 0.5f * f;
        float f3 = 0.9166667f * f2;
        if (z) {
            float f4 = 0.010416667f * f;
            paint.setColor(0);
            paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f2, f2, f3, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f2, f2, f3, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    /* renamed from: a */
    public static IconCompat m38572a(Context context, int i) {
        if (context != null) {
            return m38570a(context.getResources(), context.getPackageName(), i);
        }
        throw new IllegalArgumentException("Context must not be null.");
    }

    /* renamed from: a */
    public static IconCompat m38570a(Resources resources, String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        } else if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f1143e = i;
            if (resources != null) {
                try {
                    iconCompat.f1140b = resources.getResourceName(i);
                } catch (Resources.NotFoundException e) {
                    throw new IllegalArgumentException("Icon resource cannot be found");
                }
            } else {
                iconCompat.f1140b = str;
            }
            return iconCompat;
        } else {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
    }

    /* renamed from: a */
    public static String m38574a(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    /* renamed from: b */
    public static String m38566b(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon package", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        }
    }

    /* renamed from: c */
    public static int m38564c(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e);
            return -1;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e2);
            return -1;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e3);
            return -1;
        }
    }

    /* renamed from: d */
    public static Uri m38562d(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e) {
            Log.e("IconCompat", "Unable to get icon uri", e);
            return null;
        } catch (NoSuchMethodException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        }
    }

    /* renamed from: a */
    public void m38573a(Context context) {
        if (this.f1139a == 2) {
            String str = (String) this.f1140b;
            if (str.contains(":")) {
                String str2 = str.split(":", -1)[1];
                String str3 = str2.split("/", -1)[0];
                String str4 = str2.split("/", -1)[1];
                String str5 = str.split(":", -1)[0];
                int identifier = m38571a(context, str5).getIdentifier(str4, str3, str5);
                if (this.f1143e != identifier) {
                    Log.i("IconCompat", "Id has changed for " + str5 + "/" + str4);
                    this.f1143e = identifier;
                }
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo32076a(boolean z) {
        this.f1147i = this.f1146h.name();
        switch (this.f1139a) {
            case -1:
                if (!z) {
                    this.f1142d = (Parcelable) this.f1140b;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z) {
                    Bitmap bitmap = (Bitmap) this.f1140b;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.f1141c = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.f1142d = (Parcelable) this.f1140b;
                return;
            case 2:
                this.f1141c = ((String) this.f1140b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1141c = (byte[]) this.f1140b;
                return;
            case 4:
            case 6:
                this.f1141c = this.f1140b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    /* renamed from: b */
    public final InputStream m38567b(Context context) {
        Uri j = m38557j();
        String scheme = j.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(j);
            } catch (Exception e) {
                Log.w("IconCompat", "Unable to load image from URI: " + j, e);
                return null;
            }
        } else {
            try {
                return new FileInputStream(new File((String) this.f1140b));
            } catch (FileNotFoundException e2) {
                Log.w("IconCompat", "Unable to load image from path: " + j, e2);
                return null;
            }
        }
    }

    /* renamed from: c */
    public Drawable m38565c(Context context) {
        m38573a(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return m38561e(context).loadDrawable(context);
        }
        Drawable d = m38563d(context);
        if (!(d == null || (this.f1145g == null && this.f1146h == f1138j))) {
            d.mutate();
            C0907a.m35526a(d, this.f1145g);
            C0907a.m35523a(d, this.f1146h);
        }
        return d;
    }

    /* renamed from: d */
    public final Drawable m38563d(Context context) {
        switch (this.f1139a) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.f1140b);
            case 2:
                String h = m38559h();
                String str = h;
                if (TextUtils.isEmpty(h)) {
                    str = context.getPackageName();
                }
                try {
                    return C0882f.m35634a(m38571a(context, str), this.f1143e, context.getTheme());
                } catch (RuntimeException e) {
                    Log.e("IconCompat", String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.f1143e), this.f1140b), e);
                    return null;
                }
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.f1140b, this.f1143e, this.f1144f));
            case 4:
                InputStream b = m38567b(context);
                if (b != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(b));
                }
                return null;
            case 5:
                return new BitmapDrawable(context.getResources(), m38569a((Bitmap) this.f1140b, false));
            case 6:
                InputStream b2 = m38567b(context);
                if (b2 != null) {
                    return Build.VERSION.SDK_INT >= 26 ? new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(b2))) : new BitmapDrawable(context.getResources(), m38569a(BitmapFactory.decodeStream(b2), false));
                }
                return null;
            default:
                return null;
        }
    }

    /* renamed from: e */
    public Icon m38561e(Context context) {
        Icon icon;
        switch (this.f1139a) {
            case -1:
                return (Icon) this.f1140b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                icon = Icon.createWithBitmap((Bitmap) this.f1140b);
                break;
            case 2:
                icon = Icon.createWithResource(m38559h(), this.f1143e);
                break;
            case 3:
                icon = Icon.createWithData((byte[]) this.f1140b, this.f1143e, this.f1144f);
                break;
            case 4:
                icon = Icon.createWithContentUri((String) this.f1140b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    icon = Icon.createWithBitmap(m38569a((Bitmap) this.f1140b, false));
                    break;
                } else {
                    icon = Icon.createWithAdaptiveBitmap((Bitmap) this.f1140b);
                    break;
                }
            case 6:
                if (context != null) {
                    InputStream b = m38567b(context);
                    if (b != null) {
                        if (Build.VERSION.SDK_INT < 26) {
                            icon = Icon.createWithBitmap(m38569a(BitmapFactory.decodeStream(b), false));
                            break;
                        } else {
                            icon = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(b));
                            break;
                        }
                    } else {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + m38557j());
                    }
                } else {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + m38557j());
                }
        }
        ColorStateList colorStateList = this.f1145g;
        if (colorStateList != null) {
            icon.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f1146h;
        if (mode != f1138j) {
            icon.setTintMode(mode);
        }
        return icon;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: f */
    public void mo32075f() {
        this.f1146h = PorterDuff.Mode.valueOf(this.f1147i);
        switch (this.f1139a) {
            case -1:
                Parcelable parcelable = this.f1142d;
                if (parcelable != null) {
                    this.f1140b = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f1142d;
                if (parcelable2 != null) {
                    this.f1140b = parcelable2;
                    return;
                }
                byte[] bArr = this.f1141c;
                this.f1140b = bArr;
                this.f1139a = 3;
                this.f1143e = 0;
                this.f1144f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                this.f1140b = new String(this.f1141c, Charset.forName("UTF-16"));
                return;
            case 3:
                this.f1140b = this.f1141c;
                return;
        }
    }

    /* renamed from: g */
    public int m38560g() {
        if (this.f1139a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m38568a((Icon) this.f1140b);
        }
        if (this.f1139a == 2) {
            return this.f1143e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    /* renamed from: h */
    public String m38559h() {
        if (this.f1139a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m38566b((Icon) this.f1140b);
        }
        if (this.f1139a == 2) {
            return ((String) this.f1140b).split(":", -1)[0];
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    /* renamed from: i */
    public int m38558i() {
        return (this.f1139a != -1 || Build.VERSION.SDK_INT < 23) ? this.f1139a : m38564c((Icon) this.f1140b);
    }

    /* renamed from: j */
    public Uri m38557j() {
        if (this.f1139a == -1 && Build.VERSION.SDK_INT >= 23) {
            return m38562d((Icon) this.f1140b);
        }
        int i = this.f1139a;
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f1140b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    @Deprecated
    /* renamed from: k */
    public Icon m38556k() {
        return m38561e(null);
    }

    public String toString() {
        if (this.f1139a == -1) {
            return String.valueOf(this.f1140b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(m38574a(this.f1139a));
        switch (this.f1139a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f1140b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f1140b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(m38559h());
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(m38560g())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1143e);
                if (this.f1144f != 0) {
                    sb.append(" off=");
                    sb.append(this.f1144f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f1140b);
                break;
        }
        if (this.f1145g != null) {
            sb.append(" tint=");
            sb.append(this.f1145g);
        }
        if (this.f1146h != f1138j) {
            sb.append(" mode=");
            sb.append(this.f1146h);
        }
        sb.append(")");
        return sb.toString();
    }
}
