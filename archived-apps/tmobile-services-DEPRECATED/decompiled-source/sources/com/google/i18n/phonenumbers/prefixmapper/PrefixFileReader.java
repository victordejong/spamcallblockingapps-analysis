package com.google.i18n.phonenumbers.prefixmapper;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/prefixmapper/PrefixFileReader.class */
public class PrefixFileReader {

    /* renamed from: d */
    private static final Logger f12407d = Logger.getLogger(PrefixFileReader.class.getName());

    /* renamed from: a */
    private final String f12408a;

    /* renamed from: b */
    private MappingFileProvider f12409b = new MappingFileProvider();

    /* renamed from: c */
    private Map<String, PhonePrefixMap> f12410c = new HashMap();

    public PrefixFileReader(String str) {
        this.f12408a = str;
        m7844d();
    }

    /* renamed from: a */
    private static void m7847a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f12407d.log(Level.WARNING, e.toString());
            }
        }
    }

    /* renamed from: c */
    private PhonePrefixMap m7845c(int i, String str, String str2, String str3) {
        String d = this.f12409b.m7858d(i, str, str2, str3);
        if (d.length() == 0) {
            return null;
        }
        if (!this.f12410c.containsKey(d)) {
            m7843e(d);
        }
        return this.f12410c.get(d);
    }

    /* renamed from: d */
    private void m7844d() {
        Throwable th;
        IOException e;
        ObjectInputStream objectInputStream = null;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(PrefixFileReader.class.getResourceAsStream(this.f12408a + "config"));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f12409b.readExternal(objectInputStream);
            m7847a(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            f12407d.log(Level.WARNING, e.toString());
            m7847a(objectInputStream);
        } catch (Throwable th3) {
            th = th3;
            objectInputStream2 = objectInputStream;
            m7847a(objectInputStream2);
            throw th;
        }
    }

    /* renamed from: e */
    private void m7843e(String str) {
        Throwable th;
        IOException e;
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        ObjectInputStream objectInputStream3 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(PrefixFileReader.class.getResourceAsStream(this.f12408a + str));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            PhonePrefixMap phonePrefixMap = new PhonePrefixMap();
            phonePrefixMap.readExternal(objectInputStream);
            this.f12410c.put(str, phonePrefixMap);
            m7847a(objectInputStream);
        } catch (IOException e3) {
            e = e3;
            objectInputStream2 = objectInputStream;
            objectInputStream3 = objectInputStream2;
            f12407d.log(Level.WARNING, e.toString());
            m7847a(objectInputStream2);
        } catch (Throwable th3) {
            th = th3;
            objectInputStream3 = objectInputStream;
            m7847a(objectInputStream3);
            throw th;
        }
    }

    /* renamed from: f */
    private boolean m7842f(String str) {
        return !str.equals("zh") && !str.equals("ja") && !str.equals("ko");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        if (r10.length() == 0) goto L_0x004e;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m7846b(com.google.i18n.phonenumbers.Phonenumber.PhoneNumber r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.m7902e()
            r11 = r0
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x000f
            goto L_0x001e
        L_0x000f:
            r0 = r7
            long r0 = r0.m7899h()
            r1 = 10000000(0x989680, double:4.9406565E-317)
            long r0 = r0 / r1
            int r0 = (int) r0
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            r11 = r0
        L_0x001e:
            r0 = r6
            r1 = r11
            r2 = r8
            r3 = r9
            r4 = r10
            com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMap r0 = r0.m7845c(r1, r2, r3, r4)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0037
            r0 = r9
            r1 = r7
            java.lang.String r0 = r0.m7854c(r1)
            r10 = r0
            goto L_0x003a
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            java.lang.String r0 = ""
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L_0x004e
            r0 = r10
            r9 = r0
            r0 = r10
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0073
        L_0x004e:
            r0 = r10
            r9 = r0
            r0 = r6
            r1 = r8
            boolean r0 = r0.m7842f(r1)
            if (r0 == 0) goto L_0x0073
            r0 = r6
            r1 = r11
            java.lang.String r2 = "en"
            java.lang.String r3 = ""
            java.lang.String r4 = ""
            com.google.i18n.phonenumbers.prefixmapper.PhonePrefixMap r0 = r0.m7845c(r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x006d
            java.lang.String r0 = ""
            return r0
        L_0x006d:
            r0 = r8
            r1 = r7
            java.lang.String r0 = r0.m7854c(r1)
            r9 = r0
        L_0x0073:
            r0 = r12
            r7 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007c
            r0 = r9
            r7 = r0
        L_0x007c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.i18n.phonenumbers.prefixmapper.PrefixFileReader.m7846b(com.google.i18n.phonenumbers.Phonenumber$PhoneNumber, java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
