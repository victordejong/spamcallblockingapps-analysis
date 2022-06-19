package p193e.p194a.p372b0.p430q;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.webkit.MimeTypeMap;
import androidx.core.content.FileProvider;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p916i5.C15314a;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.q.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/c.class */
public final class C8573c implements AbstractC8571b {

    /* renamed from: a */
    public final SimpleDateFormat f26386a = new SimpleDateFormat("yyMMdd-HHmmss", Locale.US);

    /* renamed from: b */
    public final String f26387b;

    /* renamed from: c */
    public final ContentResolver f26388c;

    /* renamed from: d */
    public final Context f26389d;

    @Inject
    public C8573c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f26389d = context;
        this.f26387b = Build.VERSION.SDK_INT >= 29 ? "external_primary" : "external";
        this.f26388c = context.getContentResolver();
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8571b
    /* renamed from: a */
    public boolean mo28370a(Uri uri) {
        l.e(uri, "uri");
        return l.a(uri.getAuthority(), "media");
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8571b
    /* renamed from: b */
    public Uri mo28369b() {
        StringBuilder m8728C = C22128a.m8728C("temp-");
        m8728C.append(this.f26386a.format(new Date()));
        File file = new File(this.f26389d.getExternalFilesDir("temporary"), m8728C.toString());
        Context context = this.f26389d;
        Uri m42989b = FileProvider.m42989b(context, C8582g0.m28332I(context), file);
        l.d(m42989b, "FileProvider.getUriForFi…Authority(context), file)");
        return m42989b;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8571b
    /* renamed from: c */
    public boolean mo28368c(Uri uri) {
        l.e(uri, "uri");
        return l.a(uri.getAuthority(), C8582g0.m28332I(this.f26389d));
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8571b
    /* renamed from: d */
    public k<Uri, Long> mo28367d(long j, String str, boolean z, int i, s1.z.b.l<? super OutputStream, s> lVar) {
        String str2;
        String str3;
        k<Uri, Long> kVar;
        Uri uri;
        l.e(str, "mimeType");
        l.e(lVar, "output");
        if (m28361j(str) || m28362i(str)) {
            str2 = "IMG";
        } else if (m28359l(str)) {
            str2 = "VID";
        } else if (h.y(str, "audio/")) {
            str2 = "AUD";
        } else if (h.y(str, "application/vnd.truecaller.linkpreview")) {
            str2 = "LP";
        } else if (h.y(str, "application/vnd.truecaller.location")) {
            StringBuilder m8728C = C22128a.m8728C("MAP-");
            C15314a c15314a = C15314a.f43582g;
            m8728C.append(C15314a.m18933f() ? "dark" : "light");
            str2 = m8728C.toString();
        } else {
            str2 = "DOC";
        }
        if (m28362i(str)) {
            str3 = ".gif";
        } else {
            String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
            str3 = extensionFromMimeType != null ? C22128a.m8702I1('.', extensionFromMimeType) : null;
            if (str3 == null) {
                str3 = "";
            }
        }
        StringBuilder m8724D = C22128a.m8724D(str2, '-');
        m8724D.append(this.f26386a.format(new Date()));
        m8724D.append('-');
        m8724D.append(j);
        m8724D.append(str3);
        String sb = m8724D.toString();
        if (!m28360k(str) || !z || i == 7) {
            File file = new File(this.f26389d.getExternalFilesDir("im-media"), sb);
            try {
                C8583h c8583h = new C8583h(new FileOutputStream(file));
                lVar.d(c8583h);
                C25225a.m4016G(c8583h, null);
                Context context = this.f26389d;
                kVar = new k<>(FileProvider.m42989b(context, C8582g0.m28332I(context), file), Long.valueOf(c8583h.f26401a));
            } catch (Exception e) {
                C19291g.m13543i1(file);
                throw e;
            }
        } else {
            ContentValues contentValues = new ContentValues();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                contentValues.put("is_pending", (Integer) 1);
                contentValues.put("_display_name", sb);
                contentValues.put("relative_path", m28364g(str) + File.separator + m28363h(str));
            } else {
                File file2 = new File(Environment.getExternalStoragePublicDirectory(m28364g(str)), m28363h(str));
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                contentValues.put("_data", new File(file2, sb).getPath());
            }
            ContentResolver contentResolver = this.f26388c;
            if (m28361j(str)) {
                uri = MediaStore.Images.Media.getContentUri(this.f26387b);
                l.d(uri, "MediaStore.Images.Media.getContentUri(volumeName)");
            } else if (m28359l(str)) {
                uri = MediaStore.Video.Media.getContentUri(this.f26387b);
                l.d(uri, "MediaStore.Video.Media.getContentUri(volumeName)");
            } else {
                uri = MediaStore.Files.getContentUri(this.f26387b);
                l.d(uri, "MediaStore.Files.getContentUri(volumeName)");
            }
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert == null) {
                throw new IOException("Could not insert media");
            }
            try {
                OutputStream openOutputStream = this.f26388c.openOutputStream(insert, "w");
                if (openOutputStream == null) {
                    throw new IOException("Could not open output stream");
                }
                l.d(openOutputStream, "it");
                C8583h c8583h2 = new C8583h(openOutputStream);
                lVar.d(c8583h2);
                C25225a.m4016G(c8583h2, null);
                if (i2 >= 29) {
                    contentValues.clear();
                    contentValues.put("is_pending", (Integer) 0);
                    this.f26388c.update(insert, contentValues, null, null);
                }
                kVar = new k<>(insert, Long.valueOf(c8583h2.f26401a));
            } catch (Exception e2) {
                ContentResolver contentResolver2 = this.f26388c;
                l.d(contentResolver2, "contentResolver");
                C19286f.m13693K(contentResolver2, insert);
                throw e2;
            }
        }
        return kVar;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8571b
    /* renamed from: e */
    public Boolean mo28366e(Uri uri) {
        Boolean bool;
        l.e(uri, "uri");
        if (mo28370a(uri)) {
            bool = Boolean.valueOf(Build.VERSION.SDK_INT < 29);
        } else {
            bool = mo28368c(uri) ? Boolean.FALSE : null;
        }
        return bool;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8571b
    /* renamed from: f */
    public boolean mo28365f(String str, boolean z) {
        return !z || (str != null && !m28360k(str)) ? false : Build.VERSION.SDK_INT < 29;
    }

    /* renamed from: g */
    public final String m28364g(String str) {
        String str2;
        if (m28361j(str)) {
            str2 = Environment.DIRECTORY_PICTURES;
            l.d(str2, "Environment.DIRECTORY_PICTURES");
        } else if (m28359l(str)) {
            str2 = Environment.DIRECTORY_MOVIES;
            l.d(str2, "Environment.DIRECTORY_MOVIES");
        } else {
            str2 = Environment.DIRECTORY_DOWNLOADS;
            l.d(str2, "Environment.DIRECTORY_DOWNLOADS");
        }
        return str2;
    }

    /* renamed from: h */
    public final String m28363h(String str) {
        return m28361j(str) ? "Truecaller Images" : m28359l(str) ? "Truecaller Videos" : "Truecaller Documents";
    }

    /* renamed from: i */
    public final boolean m28362i(String str) {
        boolean z = true;
        if (!r.n("tenor/gif", str, true)) {
            z = r.n(ContentFormat.IMAGE_GIF, str, true);
        }
        return z;
    }

    /* renamed from: j */
    public final boolean m28361j(String str) {
        return h.y(str, "image/");
    }

    /* renamed from: k */
    public final boolean m28360k(String str) {
        return !m28362i(str) && !h.y(str, "audio/") && !h.y(str, "application/vnd.truecaller.linkpreview") && !h.y(str, "application/vnd.truecaller.location");
    }

    /* renamed from: l */
    public final boolean m28359l(String str) {
        return h.y(str, "video/");
    }
}
