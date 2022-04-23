package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cm.class */
final class C1794cm {

    /* renamed from: a */
    long f8339a;

    /* renamed from: b */
    final String f8340b;

    /* renamed from: c */
    final String f8341c;

    /* renamed from: d */
    final long f8342d;

    /* renamed from: e */
    final long f8343e;

    /* renamed from: f */
    final long f8344f;

    /* renamed from: g */
    final long f8345g;

    /* renamed from: h */
    final List<zzk> f8346h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1794cm(java.lang.String r14, com.google.android.gms.internal.ads.zzd r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.zzg
            r16 = r0
            r0 = r15
            long r0 = r0.zzh
            r17 = r0
            r0 = r15
            long r0 = r0.zzi
            r19 = r0
            r0 = r15
            long r0 = r0.zzj
            r21 = r0
            r0 = r15
            long r0 = r0.zzk
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.zzk> r0 = r0.zzm
            if (r0 == 0) goto L_0x002c
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.zzk> r0 = r0.zzm
            r15 = r0
            goto L_0x008a
        L_0x002c:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.zzl
            r25 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r25
            int r2 = r2.size()
            r1.<init>(r2)
            r15 = r0
            r0 = r25
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r25 = r0
        L_0x004f:
            r0 = r25
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x008a
            r0 = r25
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r26 = r0
            r0 = r15
            com.google.android.gms.internal.ads.zzk r1 = new com.google.android.gms.internal.ads.zzk
            r2 = r1
            r3 = r26
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r26
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L_0x004f
        L_0x008a:
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r19
            r5 = r21
            r6 = r23
            r7 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1794cm.<init>(java.lang.String, com.google.android.gms.internal.ads.zzd):void");
    }

    private C1794cm(String str, String str2, long j, long j2, long j3, long j4, List<zzk> list) {
        this.f8340b = str;
        this.f8341c = "".equals(str2) ? null : str2;
        this.f8342d = j;
        this.f8343e = j2;
        this.f8344f = j3;
        this.f8345g = j4;
        this.f8346h = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1794cm m4742a(C1816dh dhVar) {
        if (zzal.m4361a((InputStream) dhVar) == 538247942) {
            return new C1794cm(zzal.m4364a(dhVar), zzal.m4364a(dhVar), zzal.m4354b((InputStream) dhVar), zzal.m4354b((InputStream) dhVar), zzal.m4354b((InputStream) dhVar), zzal.m4354b((InputStream) dhVar), zzal.m4355b(dhVar));
        }
        throw new IOException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m4741a(OutputStream outputStream) {
        try {
            zzal.m4360a(outputStream, 538247942);
            zzal.m4358a(outputStream, this.f8340b);
            zzal.m4358a(outputStream, this.f8341c == null ? "" : this.f8341c);
            zzal.m4359a(outputStream, this.f8342d);
            zzal.m4359a(outputStream, this.f8343e);
            zzal.m4359a(outputStream, this.f8344f);
            zzal.m4359a(outputStream, this.f8345g);
            List<zzk> list = this.f8346h;
            if (list != null) {
                zzal.m4360a(outputStream, list.size());
                for (zzk zzkVar : list) {
                    zzal.m4358a(outputStream, zzkVar.getName());
                    zzal.m4358a(outputStream, zzkVar.getValue());
                }
            } else {
                zzal.m4360a(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            zzag.m4412d("%s", e.toString());
            return false;
        }
    }
}
