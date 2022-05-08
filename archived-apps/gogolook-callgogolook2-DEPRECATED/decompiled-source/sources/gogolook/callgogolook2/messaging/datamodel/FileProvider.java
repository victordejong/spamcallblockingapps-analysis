package gogolook.callgogolook2.messaging.datamodel;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.flurry.sdk.C3496r;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Random;
import p459j.p460a.p541n0.C13032a;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/FileProvider.class */
public abstract class FileProvider extends ContentProvider {

    /* renamed from: a */
    public static final Random f11173a = new Random();

    /* renamed from: a */
    public static String m27790a(Uri uri) {
        return uri.getQueryParameter(C13032a.f29464f);
    }

    /* renamed from: a */
    public static boolean m27789a(File file) {
        try {
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                return file.createNewFile();
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m27788a(String str) {
        for (int i = str.startsWith("/"); i < str.length(); i++) {
            if (!Character.isDigit(Character.valueOf(str.charAt(i)).charValue())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static Uri m27787b(String str, String str2) {
        long abs = Math.abs(f11173a.nextLong());
        Uri.Builder scheme = new Uri.Builder().authority(str).scheme("content");
        scheme.appendPath(String.valueOf(abs));
        if (!TextUtils.isEmpty(str2)) {
            scheme.appendQueryParameter(C13032a.f29464f, str2);
        }
        return scheme.build();
    }

    /* renamed from: a */
    public abstract File mo27761a(String str, String str2);

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        String path = uri.getPath();
        if (m27788a(path)) {
            return mo27761a(path, m27790a(uri)).delete() ? 1 : 0;
        }
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        String path = uri.getPath();
        if (!m27788a(path)) {
            return null;
        }
        return ParcelFileDescriptor.open(mo27761a(path, m27790a(uri)), TextUtils.equals(str, C3496r.f6031a) ? 268435456 : 603979776);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
