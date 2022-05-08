package p459j.p460a.p474c0.p499h;

import android.webkit.MimeTypeMap;
import androidx.media2.exoplayer.external.util.MimeTypes;
/* renamed from: j.a.c0.h.r */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/r.class */
public final class C12205r {

    /* renamed from: a */
    public static String f27365a = "3gp";

    /* renamed from: b */
    public static String f27366b = "mp4";

    /* renamed from: c */
    public static String f27367c = "dat";

    /* renamed from: a */
    public static String m6813a(String str) {
        return MimeTypes.VIDEO_MP4.equals(str) ? f27366b : MimeTypes.VIDEO_H263.equals(str) ? f27365a : f27367c;
    }

    /* renamed from: a */
    public static String m6812a(String str, String str2) {
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
        String str3 = mimeTypeFromExtension;
        if (mimeTypeFromExtension == null) {
            str3 = str2;
        }
        return str3;
    }

    /* renamed from: b */
    public static boolean m6811b(String str) {
        return str != null && (str.startsWith("audio/") || str.equalsIgnoreCase("application/ogg"));
    }

    /* renamed from: c */
    public static boolean m6810c(String str) {
        return m6811b(str) || m6804i(str) || m6809d(str) || m6805h(str);
    }

    /* renamed from: d */
    public static boolean m6809d(String str) {
        return str != null && str.startsWith("image/");
    }

    /* renamed from: e */
    public static boolean m6808e(String str) {
        return m6809d(str) || m6804i(str) || m6811b(str) || m6805h(str);
    }

    /* renamed from: f */
    public static boolean m6807f(String str) {
        return m6808e(str) || "application/vnd.wap.mms-message".equals(str);
    }

    /* renamed from: g */
    public static boolean m6806g(String str) {
        return "text/plain".equals(str) || "text/html".equals(str) || "application/vnd.wap.xhtml+xml".equals(str);
    }

    /* renamed from: h */
    public static boolean m6805h(String str) {
        return str != null && str.equalsIgnoreCase("text/x-vCard");
    }

    /* renamed from: i */
    public static boolean m6804i(String str) {
        return str != null && str.startsWith("video/");
    }
}
