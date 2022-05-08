package a.a;

import com.asus.updatesdk.BuildConfig;
import com.google.b.a.a.a.a;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
/* loaded from: classes-dex2jar.jar:a/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final a f3a = new a("-._~");

    public static a.a.b.a a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            sb.append(readLine);
        }
        return b(sb.toString());
    }

    public static String a(String str) {
        return str == null ? BuildConfig.FLAVOR : f3a.a(str);
    }

    public static void a(String str, String str2) {
        if (System.getProperty("debug") != null) {
            System.out.println("[SIGNPOST] " + str + ": " + str2);
        }
    }

    public static a.a.b.a b(String str) {
        String[] split;
        String d;
        String d2;
        a.a.b.a aVar = new a.a.b.a();
        if (!(str == null || str.length() == 0)) {
            for (String str2 : str.split("\\&")) {
                int indexOf = str2.indexOf(61);
                if (indexOf < 0) {
                    d = d(str2);
                    d2 = null;
                } else {
                    d = d(str2.substring(0, indexOf));
                    d2 = d(str2.substring(indexOf + 1));
                }
                aVar.a(d, d2, false);
            }
        }
        return aVar;
    }

    public static a.a.b.a c(String str) {
        a.a.b.a aVar = new a.a.b.a();
        if (str != null && str.startsWith("OAuth ")) {
            for (String str2 : str.substring(6).split(",")) {
                String[] split = str2.split("=");
                aVar.a(split[0].trim(), split[1].replace("\"", BuildConfig.FLAVOR).trim(), false);
            }
        }
        return aVar;
    }

    private static String d(String str) {
        String decode;
        if (str == null) {
            decode = BuildConfig.FLAVOR;
        } else {
            try {
                decode = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        return decode;
    }
}
