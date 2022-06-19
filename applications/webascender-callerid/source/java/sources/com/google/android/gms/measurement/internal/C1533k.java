package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* renamed from: com.google.android.gms.measurement.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
public final class C1533k {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r0 == false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1575a(com.google.android.gms.measurement.internal.n3 r9, android.database.sqlite.SQLiteDatabase r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String[] r14) throws android.database.sqlite.SQLiteException {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C1533k.m1575a(com.google.android.gms.measurement.internal.n3, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: b */
    public static void m1574b(n3 n3Var, SQLiteDatabase sQLiteDatabase) {
        if (n3Var != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                n3Var.r().m1570a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                n3Var.r().m1570a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                n3Var.r().m1570a("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            n3Var.r().m1570a("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
