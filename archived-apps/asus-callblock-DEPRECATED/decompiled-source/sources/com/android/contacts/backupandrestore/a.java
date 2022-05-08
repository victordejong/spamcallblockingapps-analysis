package com.android.contacts.backupandrestore;

import java.io.File;
/* loaded from: classes-dex2jar.jar:com/android/contacts/backupandrestore/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f617a = "isRestore";

    /* renamed from: b  reason: collision with root package name */
    public static String f618b = "backuptime";

    public static boolean a() {
        return !f() && g() && h();
    }

    public static boolean b() {
        return !f() && !g() && !h();
    }

    public static boolean c() {
        return f();
    }

    public static boolean d() {
        return !f() && !g() && h();
    }

    public static boolean e() {
        return !f() && g() && !h();
    }

    private static boolean f() {
        boolean z = false;
        try {
            if (new File("/data/data/com.asus.contacts/shared_prefs/isRestore.xml").exists()) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    private static boolean g() {
        boolean z = false;
        try {
            if (new File("/data/data/com.asus.contacts/files/Contacts.vcf").exists()) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    private static boolean h() {
        boolean z = false;
        try {
            if (new File("/data/data/com.asus.contacts/files/CallLog.clbu").exists()) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }
}
