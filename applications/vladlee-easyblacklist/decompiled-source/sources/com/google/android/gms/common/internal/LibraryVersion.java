package com.google.android.gms.common.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/LibraryVersion.class */
public class LibraryVersion {

    /* renamed from: a */
    private static final GmsLogger f6792a = new GmsLogger("LibraryVersion", "");

    /* renamed from: b */
    private static LibraryVersion f6793b = new LibraryVersion();

    /* renamed from: c */
    private ConcurrentHashMap<String, String> f6794c = new ConcurrentHashMap<>();

    protected LibraryVersion() {
    }

    public static LibraryVersion getInstance() {
        return f6793b;
    }

    public String getVersion(String str) {
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        if (this.f6794c.containsKey(str)) {
            return this.f6794c.get(str);
        }
        Properties properties = new Properties();
        r12 = null;
        String str2 = null;
        try {
            InputStream resourceAsStream = LibraryVersion.class.getResourceAsStream(String.format("/%s.properties", str));
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                String property = properties.getProperty("version", null);
                GmsLogger gmsLogger = f6792a;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(property).length());
                sb.append(str);
                sb.append(" version is ");
                sb.append(property);
                gmsLogger.m5689v("LibraryVersion", sb.toString());
                str2 = property;
            } else {
                GmsLogger gmsLogger2 = f6792a;
                String valueOf = String.valueOf(str);
                gmsLogger2.m5693e("LibraryVersion", valueOf.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf) : new String("Failed to get app version for libraryName: "));
            }
        } catch (IOException e) {
            GmsLogger gmsLogger3 = f6792a;
            String valueOf2 = String.valueOf(str);
            gmsLogger3.m5692e("LibraryVersion", valueOf2.length() != 0 ? "Failed to get app version for libraryName: ".concat(valueOf2) : new String("Failed to get app version for libraryName: "), e);
        }
        String str3 = str2;
        if (str2 == null) {
            f6792a.m5695d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version isexpected druing Google internal testing where locally-built libraries are used");
            str3 = "UNKNOWN";
        }
        this.f6794c.put(str, str3);
        return str3;
    }
}
