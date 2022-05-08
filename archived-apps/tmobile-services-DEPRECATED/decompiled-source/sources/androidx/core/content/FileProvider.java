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
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider.class */
public class FileProvider extends ContentProvider {

    /* renamed from: g */
    private static final String[] f2985g = {"_display_name", "_size"};

    /* renamed from: h */
    private static final File f2986h = new File("/");
    @GuardedBy

    /* renamed from: i */
    private static HashMap<String, PathStrategy> f2987i = new HashMap<>();

    /* renamed from: f */
    private PathStrategy f2988f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$PathStrategy.class */
    public interface PathStrategy {
        /* renamed from: a */
        File mo19661a(Uri uri);

        /* renamed from: b */
        Uri mo19660b(File file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/FileProvider$SimplePathStrategy.class */
    public static class SimplePathStrategy implements PathStrategy {

        /* renamed from: a */
        private final String f2989a;

        /* renamed from: b */
        private final HashMap<String, File> f2990b = new HashMap<>();

        SimplePathStrategy(String str) {
            this.f2989a = str;
        }

        @Override // androidx.core.content.FileProvider.PathStrategy
        /* renamed from: a */
        public File mo19661a(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int indexOf = encodedPath.indexOf(47, 1);
            String decode = Uri.decode(encodedPath.substring(1, indexOf));
            String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
            File file = this.f2990b.get(decode);
            if (file != null) {
                File file2 = new File(file, decode2);
                try {
                    File canonicalFile = file2.getCanonicalFile();
                    if (canonicalFile.getPath().startsWith(file.getPath())) {
                        return canonicalFile;
                    }
                    throw new SecurityException("Resolved path jumped beyond configured root");
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
                }
            } else {
                throw new IllegalArgumentException("Unable to find configured root for " + uri);
            }
        }

        @Override // androidx.core.content.FileProvider.PathStrategy
        /* renamed from: b */
        public Uri mo19660b(File file) {
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> entry = null;
                for (Map.Entry<String, File> entry2 : this.f2990b.entrySet()) {
                    String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry != null) {
                    String path2 = entry.getValue().getPath();
                    String substring = path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1);
                    return new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(this.f2989a).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(substring, "/")).build();
                }
                throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
            } catch (IOException e) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        /* renamed from: c */
        void m19659c(String str, File file) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.f2990b.put(str, file.getCanonicalFile());
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to resolve canonical path for " + file, e);
                }
            } else {
                throw new IllegalArgumentException("Name must not be empty");
            }
        }
    }

    /* renamed from: a */
    private static File m19668a(File file, String... strArr) {
        for (String str : strArr) {
            file = file;
            if (str != null) {
                file = new File(file, str);
            }
        }
        return file;
    }

    /* renamed from: b */
    private static Object[] m19667b(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    /* renamed from: c */
    private static String[] m19666c(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    /* renamed from: d */
    private static PathStrategy m19665d(Context context, String str) {
        PathStrategy pathStrategy;
        synchronized (f2987i) {
            PathStrategy pathStrategy2 = f2987i.get(str);
            pathStrategy = pathStrategy2;
            if (pathStrategy2 == null) {
                try {
                    pathStrategy = m19662g(context, str);
                    f2987i.put(str, pathStrategy);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                }
            }
        }
        return pathStrategy;
    }

    /* renamed from: e */
    public static Uri m19664e(@NonNull Context context, @NonNull String str, @NonNull File file) {
        return m19665d(context, str).mo19660b(file);
    }

    /* renamed from: f */
    private static int m19663f(String str) {
        int i;
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
            throw new IllegalArgumentException("Invalid mode: " + str);
        }
        return i;
    }

    /* renamed from: g */
    private static PathStrategy m19662g(Context context, String str) throws IOException, XmlPullParserException {
        File file;
        SimplePathStrategy simplePathStrategy = new SimplePathStrategy(str);
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (resolveContentProvider != null) {
            XmlResourceParser loadXmlMetaData = resolveContentProvider.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
            if (loadXmlMetaData != null) {
                while (true) {
                    int next = loadXmlMetaData.next();
                    if (next == 1) {
                        return simplePathStrategy;
                    }
                    if (next == 2) {
                        String name = loadXmlMetaData.getName();
                        String attributeValue = loadXmlMetaData.getAttributeValue(null, "name");
                        String attributeValue2 = loadXmlMetaData.getAttributeValue(null, "path");
                        if ("root-path".equals(name)) {
                            file = f2986h;
                        } else if ("files-path".equals(name)) {
                            file = context.getFilesDir();
                        } else if ("cache-path".equals(name)) {
                            file = context.getCacheDir();
                        } else if ("external-path".equals(name)) {
                            file = Environment.getExternalStorageDirectory();
                        } else if ("external-files-path".equals(name)) {
                            File[] h = ContextCompat.m19671h(context, null);
                            file = null;
                            if (h.length > 0) {
                                file = h[0];
                            }
                        } else if ("external-cache-path".equals(name)) {
                            File[] g = ContextCompat.m19672g(context);
                            file = null;
                            if (g.length > 0) {
                                file = g[0];
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
                            simplePathStrategy.m19659c(attributeValue, m19668a(file, attributeValue2));
                        }
                    }
                }
            } else {
                throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
            }
        } else {
            throw new IllegalArgumentException("Couldn't find meta-data for provider with authority " + str);
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        } else if (providerInfo.grantUriPermissions) {
            this.f2988f = m19665d(context, providerInfo.authority);
        } else {
            throw new SecurityException("Provider must grant uri permissions");
        }
    }

    @Override // android.content.ContentProvider
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return this.f2988f.mo19661a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(@NonNull Uri uri) {
        File a = this.f2988f.mo19661a(uri);
        int lastIndexOf = a.getName().lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(a.getName().substring(lastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(@NonNull Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(@NonNull Uri uri, @NonNull String str) throws FileNotFoundException {
        return ParcelFileDescriptor.open(this.f2988f.mo19661a(uri), m19663f(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        File a = this.f2988f.mo19661a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f2985g;
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
        String[] c = m19666c(strArr4, i);
        Object[] b = m19667b(objArr, i);
        MatrixCursor matrixCursor = new MatrixCursor(c, 1);
        matrixCursor.addRow(b);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(@NonNull Uri uri, ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }
}
