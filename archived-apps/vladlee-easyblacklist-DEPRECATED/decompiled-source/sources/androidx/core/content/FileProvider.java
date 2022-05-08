package androidx.core.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: a */
    private static final String[] f2883a = {"_display_name", "_size"};

    /* renamed from: b */
    private static final File f2884b = new File("/");

    /* renamed from: c */
    private static HashMap<String, AbstractC0628a> f2885c = new HashMap<>();

    /* renamed from: d */
    private AbstractC0628a f2886d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.FileProvider$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$a.class */
    public interface AbstractC0628a {
        /* renamed from: a */
        File mo8683a(Uri uri);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.FileProvider$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$b.class */
    public static final class C0629b implements AbstractC0628a {

        /* renamed from: a */
        private final String f2887a;

        /* renamed from: b */
        private final HashMap<String, File> f2888b = new HashMap<>();

        C0629b(String str) {
            this.f2887a = str;
        }

        @Override // androidx.core.content.FileProvider.AbstractC0628a
        /* renamed from: a */
        public final File mo8683a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f2888b.get(decode);
            if (file != null) {
                File file2 = new File(file, decode2);
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (canonicalFile.getPath().startsWith(file.getPath())) {
                        return canonicalFile;
                    }
                    throw new SecurityException("Resolved path jumped beyond configured root");
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file2)));
                }
            } else {
                throw new IllegalArgumentException("Unable to find configured root for ".concat(String.valueOf(uri)));
            }
        }

        /* renamed from: a */
        final void m8682a(String str, File file) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.f2888b.put(str, file.getCanonicalFile());
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for ".concat(String.valueOf(file)), e);
                }
            } else {
                throw new IllegalArgumentException("Name must not be empty");
            }
        }
    }

    /* renamed from: a */
    private static AbstractC0628a m8685a(Context context, String str) {
        C0629b bVar;
        File file;
        synchronized (f2885c) {
            AbstractC0628a aVar = f2885c.get(str);
            bVar = aVar;
            if (aVar == null) {
                try {
                    C0629b bVar2 = new C0629b(str);
                    ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
                    if (resolveContentProvider != null) {
                        XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
                        if (loadXmlMetaData != null) {
                            while (true) {
                                int next = loadXmlMetaData.next();
                                if (next == 1) {
                                    break;
                                } else if (next == 2) {
                                    String name = loadXmlMetaData.getName();
                                    String attributeValue = loadXmlMetaData.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.NAME);
                                    String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                                    if ("root-path".equals(name)) {
                                        file = f2884b;
                                    } else if ("files-path".equals(name)) {
                                        file = context.getFilesDir();
                                    } else if ("cache-path".equals(name)) {
                                        file = context.getCacheDir();
                                    } else if ("external-path".equals(name)) {
                                        file = Environment.getExternalStorageDirectory();
                                    } else if ("external-files-path".equals(name)) {
                                        File[] a = C0646b.m8620a(context);
                                        file = null;
                                        if (a.length > 0) {
                                            file = a[0];
                                        }
                                    } else if ("external-cache-path".equals(name)) {
                                        File[] b = C0646b.m8615b(context);
                                        file = null;
                                        if (b.length > 0) {
                                            file = b[0];
                                        }
                                    } else {
                                        file = null;
                                        if (Build.VERSION.SDK_INT >= 21) {
                                            file = null;
                                            if ("external-media-path".equals(name)) {
                                                File[] externalMediaDirs = context.getExternalMediaDirs();
                                                file = null;
                                                if (externalMediaDirs.length > 0) {
                                                    file = externalMediaDirs[0];
                                                }
                                            }
                                        }
                                    }
                                    if (file != null) {
                                        bVar2.m8682a(attributeValue, m8684a(file, attributeValue2));
                                    }
                                }
                            }
                            f2885c.put(str, bVar2);
                            bVar = bVar2;
                        } else {
                            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
                        }
                    } else {
                        throw new IllegalArgumentException("Couldn't find meta-data for provider with authority ".concat(String.valueOf(str)));
                    }
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return bVar;
    }

    /* renamed from: a */
    private static File m8684a(File file, String... strArr) {
        for (int i = 0; i <= 0; i++) {
            String str = strArr[0];
            file = file;
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (providerInfo.grantUriPermissions) {
            this.f2886d = m8685a(context, providerInfo.authority);
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.f2886d.mo8683a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File a = this.f2886d.mo8683a(uri);
        int lastIndexOf = a.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(a.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        int i;
        File a = this.f2886d.mo8683a(uri);
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if ("rwt".equals(str)) {
            i = 1006632960;
        } else {
            throw new IllegalArgumentException("Invalid mode: ".concat(String.valueOf(str)));
        }
        return ParcelFileDescriptor.open(a, i);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        File a = this.f2886d.mo8683a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f2883a;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int i = 0;
        for (String str3 : strArr3) {
            if ("_display_name".equals(str3)) {
                strArr4[i] = "_display_name";
                i++;
                objArr[i] = a.getName();
            } else {
                i = i;
                if ("_size".equals(str3)) {
                    strArr4[i] = "_size";
                    i++;
                    objArr[i] = Long.valueOf(a.length());
                }
            }
        }
        String[] strArr5 = new String[i];
        System.arraycopy(strArr4, 0, strArr5, 0, i);
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        MatrixCursor matrixCursor = new MatrixCursor(strArr5, 1);
        matrixCursor.addRow(objArr2);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
