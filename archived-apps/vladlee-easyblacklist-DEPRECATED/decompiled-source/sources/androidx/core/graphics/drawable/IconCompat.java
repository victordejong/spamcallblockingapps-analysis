package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompat.class */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: h */
    static final PorterDuff.Mode f3137h = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    Object f3139b;

    /* renamed from: a */
    public int f3138a = -1;

    /* renamed from: c */
    public byte[] f3140c = null;

    /* renamed from: d */
    public Parcelable f3141d = null;

    /* renamed from: e */
    public int f3142e = 0;

    /* renamed from: f */
    public int f3143f = 0;

    /* renamed from: g */
    public ColorStateList f3144g = null;

    /* renamed from: i */
    PorterDuff.Mode f3145i = f3137h;

    /* renamed from: j */
    public String f3146j = null;

    /* renamed from: a */
    private static String m8257a(Icon icon) {
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

    /* renamed from: b */
    private static int m8256b(Icon icon) {
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

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
        if (r0 != 5) goto L_0x0196;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.IconCompat.toString():java.lang.String");
    }
}
