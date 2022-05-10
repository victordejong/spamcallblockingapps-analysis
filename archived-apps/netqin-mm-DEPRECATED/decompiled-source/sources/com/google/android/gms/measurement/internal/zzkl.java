package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzca;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzlo;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zzne;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.internal.measurement.zznw;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4677e;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4840v7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4646a8;
import p131c.p161d.p170b.p224d.p260i.p261a.C4657c;
import p131c.p161d.p170b.p224d.p260i.p261a.C4706h;
import p131c.p161d.p170b.p224d.p260i.p261a.C4710h3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4719i3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4777o7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4795q7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4811s5;
import p131c.p161d.p170b.p224d.p260i.p261a.C4822t7;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4804r7;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4728j3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4768n7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl.class */
public class zzkl implements AbstractC4765n4 {

    /* renamed from: A */
    public static volatile zzkl f30109A;

    /* renamed from: a */
    public zzfo f30110a;

    /* renamed from: b */
    public zzex f30111b;

    /* renamed from: c */
    public C4657c f30112c;

    /* renamed from: d */
    public C4719i3 f30113d;

    /* renamed from: e */
    public zzkh f30114e;

    /* renamed from: f */
    public C4646a8 f30115f;

    /* renamed from: g */
    public final zzkr f30116g;

    /* renamed from: h */
    public C4811s5 f30117h;

    /* renamed from: i */
    public zzjr f30118i;

    /* renamed from: j */
    public final zzfu f30119j;

    /* renamed from: k */
    public boolean f30120k;

    /* renamed from: l */
    public boolean f30121l;
    @VisibleForTesting

    /* renamed from: m */
    public long f30122m;

    /* renamed from: n */
    public List<Runnable> f30123n;

    /* renamed from: o */
    public int f30124o;

    /* renamed from: p */
    public int f30125p;

    /* renamed from: q */
    public boolean f30126q;

    /* renamed from: r */
    public boolean f30127r;

    /* renamed from: s */
    public boolean f30128s;

    /* renamed from: t */
    public FileLock f30129t;

    /* renamed from: u */
    public FileChannel f30130u;

    /* renamed from: v */
    public List<Long> f30131v;

    /* renamed from: w */
    public List<Long> f30132w;

    /* renamed from: x */
    public long f30133x;

    /* renamed from: y */
    public final Map<String, zzac> f30134y;

    /* renamed from: z */
    public final AbstractC4840v7 f30135z;

    /* renamed from: com.google.android.gms.measurement.internal.zzkl$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkl$a.class */
    public final class C7283a implements AbstractC4677e {

        /* renamed from: a */
        public zzcd.zzg f30136a;

        /* renamed from: b */
        public List<Long> f30137b;

        /* renamed from: c */
        public List<zzcd.zzc> f30138c;

        /* renamed from: d */
        public long f30139d;

        public C7283a(zzkl zzklVar) {
        }

        public /* synthetic */ C7283a(zzkl zzklVar, RunnableC4768n7 n7Var) {
            this(zzklVar);
        }

        /* renamed from: a */
        public static long m8777a(zzcd.zzc zzcVar) {
            return ((zzcVar.m10262s() / 1000) / 60) / 60;
        }

        @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4677e
        /* renamed from: a */
        public final void mo8776a(zzcd.zzg zzgVar) {
            Preconditions.m17288a(zzgVar);
            this.f30136a = zzgVar;
        }

        @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4677e
        /* renamed from: a */
        public final boolean mo8778a(long j, zzcd.zzc zzcVar) {
            Preconditions.m17288a(zzcVar);
            if (this.f30138c == null) {
                this.f30138c = new ArrayList();
            }
            if (this.f30137b == null) {
                this.f30137b = new ArrayList();
            }
            if (this.f30138c.size() > 0 && m8777a(this.f30138c.get(0)) != m8777a(zzcVar)) {
                return false;
            }
            long c = this.f30139d + zzcVar.mo9615c();
            if (c >= Math.max(0, zzas.f29873i.m9196a(null).intValue())) {
                return false;
            }
            this.f30139d = c;
            this.f30138c.add(zzcVar);
            this.f30137b.add(Long.valueOf(j));
            return this.f30138c.size() < Math.max(1, zzas.f29875j.m9196a(null).intValue());
        }
    }

    public zzkl(zzks zzksVar) {
        this(zzksVar, null);
    }

    public zzkl(zzks zzksVar, zzfu zzfuVar) {
        this.f30120k = false;
        this.f30135z = new C4795q7(this);
        Preconditions.m17288a(zzksVar);
        this.f30119j = zzfu.m9071a(zzksVar.f30140a, null, null);
        this.f30133x = -1L;
        zzkr zzkrVar = new zzkr(this);
        zzkrVar.m24902o();
        this.f30116g = zzkrVar;
        zzex zzexVar = new zzex(this);
        zzexVar.m24902o();
        this.f30111b = zzexVar;
        zzfo zzfoVar = new zzfo(this);
        zzfoVar.m24902o();
        this.f30110a = zzfoVar;
        this.f30134y = new HashMap();
        this.f30119j.mo8795j().m9093a(new RunnableC4768n7(this, zzksVar));
    }

    /* renamed from: a */
    public static zzkl m8841a(Context context) {
        Preconditions.m17288a(context);
        Preconditions.m17288a(context.getApplicationContext());
        if (f30109A == null) {
            synchronized (zzkl.class) {
                try {
                    if (f30109A == null) {
                        f30109A = new zzkl(new zzks(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f30109A;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m8838a(zzcd.zzc.zza zzaVar, int i, String str) {
        List<zzcd.zze> zza = zzaVar.zza();
        for (int i2 = 0; i2 < zza.size(); i2++) {
            if ("_err".equals(zza.get(i2).m10216p())) {
                return;
            }
        }
        zzcd.zze.zza F = zzcd.zze.m10234F();
        F.mo9794a("_err");
        F.m10204a(Long.valueOf(i).longValue());
        zzcd.zze zzeVar = (zzcd.zze) ((zzhy) F.mo9619b());
        zzcd.zze.zza F2 = zzcd.zze.m10234F();
        F2.mo9794a("_ev");
        F2.m10201b(str);
        zzaVar.m10249a(zzeVar);
        zzaVar.m10249a((zzcd.zze) ((zzhy) F2.mo9619b()));
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m8836a(zzcd.zzc.zza zzaVar, String str) {
        List<zzcd.zze> zza = zzaVar.zza();
        for (int i = 0; i < zza.size(); i++) {
            if (str.equals(zza.get(i).m10216p())) {
                zzaVar.m10247b(i);
                return;
            }
        }
    }

    /* renamed from: b */
    public static void m8814b(AbstractC4750l7 l7Var) {
        if (l7Var == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!l7Var.m24904m()) {
            String valueOf = String.valueOf(l7Var.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m8847A() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f30119j
            com.google.android.gms.common.util.Clock r0 = r0.mo8779z()
            long r0 = r0.mo17091b()
            r6 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzfu r0 = r0.f30119j
            c.d.b.d.i.a.k3 r0 = r0.m9050l()
            r8 = r0
            r0 = r8
            r0.m24909l()
            r0 = r8
            r0.mo9085c()
            r0 = r8
            com.google.android.gms.measurement.internal.zzfg r0 = r0.f17215i
            long r0 = r0.m9131a()
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004c
            r0 = 1
            r1 = r8
            com.google.android.gms.measurement.internal.zzkv r1 = r1.m24899f()
            java.security.SecureRandom r1 = r1.m8674r()
            r2 = 86400000(0x5265c00, float:7.82218E-36)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfg r0 = r0.f17215i
            r1 = r11
            r0.m9130a(r1)
        L_0x004c:
            r0 = r6
            r1 = r11
            long r0 = r0 + r1
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 60
            long r0 = r0 / r1
            r1 = 24
            long r0 = r0 / r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8847A():long");
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: B */
    public final Context mo8846B() {
        return this.f30119j.mo8846B();
    }

    @Deprecated
    /* renamed from: C */
    public final String m8845C() {
        byte[] bArr = new byte[16];
        this.f30119j.m9044s().m8674r().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final int m8818a(FileChannel fileChannel) {
        int read;
        m8780y();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f30119j.mo8789p().m9152q().m9143a("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            read = fileChannel.read(allocate);
        } catch (IOException e) {
            this.f30119j.mo8789p().m9152q().m9142a("Failed to read from channel", e);
        }
        if (read == 4) {
            allocate.flip();
            i = allocate.getInt();
            return i;
        } else if (read == -1) {
            return 0;
        } else {
            this.f30119j.mo8789p().m9149t().m9142a("Unexpected data length. Bytes read", Integer.valueOf(read));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p131c.p161d.p170b.p224d.p260i.p261a.C4710h3 m8826a(com.google.android.gms.measurement.internal.zzn r6, p131c.p161d.p170b.p224d.p260i.p261a.C4710h3 r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8826a(com.google.android.gms.measurement.internal.zzn, c.d.b.d.i.a.h3, java.lang.String):c.d.b.d.i.a.h3");
    }

    /* renamed from: a */
    public final zzac m8822a(String str) {
        zzac zzacVar = zzac.f29791c;
        zzac zzacVar2 = zzacVar;
        if (zzml.m9520a()) {
            zzacVar2 = zzacVar;
            if (this.f30119j.m9062b().m9354a(zzas.f29835J0)) {
                m8780y();
                m8787r();
                zzac zzacVar3 = this.f30134y.get(str);
                zzacVar2 = zzacVar3;
                if (zzacVar3 == null) {
                    zzac j = m8794k().m25046j(str);
                    zzacVar2 = j;
                    if (j == null) {
                        zzacVar2 = zzac.f29791c;
                    }
                    m8819a(str, zzacVar2);
                }
            }
        }
        return zzacVar2;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: a */
    public final zzw mo8844a() {
        return this.f30119j.mo8844a();
    }

    /* renamed from: a */
    public final String m8834a(zzac zzacVar) {
        if (!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0) || zzacVar.m9306e()) {
            return m8845C();
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    @VisibleForTesting
    /* renamed from: a */
    public final void m8843a(int i, Throwable th, byte[] bArr, String str) {
        C4657c k;
        long longValue;
        m8780y();
        m8787r();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } catch (Throwable th2) {
                this.f30127r = false;
                m8801e();
                throw th2;
            }
        }
        List<Long> list = this.f30131v;
        this.f30131v = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.f30119j.m9050l().f17211e.m9130a(this.f30119j.mo8779z().mo17091b());
                this.f30119j.m9050l().f17212f.m9130a(0L);
                m8803d();
                this.f30119j.mo8789p().m9144y().m9141a("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                m8794k().m25040w();
                try {
                    for (Long l : list) {
                        try {
                            k = m8794k();
                            longValue = l.longValue();
                            k.mo9085c();
                            k.m24903n();
                        } catch (SQLiteException e) {
                            if (this.f30132w == null || !this.f30132w.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (k.m25044s().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                        } catch (SQLiteException e2) {
                            k.mo8789p().m9152q().m9142a("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    m8794k().m25045r();
                    m8794k().m25039x();
                    this.f30132w = null;
                    if (!m8796i().m9134r() || !m8806c()) {
                        this.f30133x = -1L;
                        m8803d();
                    } else {
                        m8786s();
                    }
                    this.f30122m = 0L;
                } catch (Throwable th3) {
                    m8794k().m25039x();
                    throw th3;
                }
            } catch (SQLiteException e3) {
                this.f30119j.mo8789p().m9152q().m9142a("Database error while trying to delete uploaded bundles", e3);
                this.f30122m = this.f30119j.mo8779z().mo17092a();
                this.f30119j.mo8789p().m9144y().m9142a("Disable upload, time", Long.valueOf(this.f30122m));
            }
        } else {
            this.f30119j.mo8789p().m9144y().m9141a("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.f30119j.m9050l().f17212f.m9130a(this.f30119j.mo8779z().mo17091b());
            boolean z = true;
            if (i != 503) {
                z = i == 429;
            }
            if (z) {
                this.f30119j.m9050l().f17213g.m9130a(this.f30119j.mo8779z().mo17091b());
            }
            m8794k().m25065a(list);
            m8803d();
        }
        this.f30127r = false;
        m8801e();
    }

    /* renamed from: a */
    public final void m8840a(C4710h3 h3Var) {
        C0780a aVar;
        m8780y();
        if (!zznv.m9491a() || !this.f30119j.m9062b().m9342e(h3Var.m24968l(), zzas.f29876j0)) {
            if (TextUtils.isEmpty(h3Var.m24964n()) && TextUtils.isEmpty(h3Var.m24962o())) {
                m8821a(h3Var.m24968l(), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(h3Var.m24964n()) && TextUtils.isEmpty(h3Var.m24960p()) && TextUtils.isEmpty(h3Var.m24962o())) {
            m8821a(h3Var.m24968l(), 204, null, null, null);
            return;
        }
        String a = this.f30119j.m9062b().m9355a(h3Var);
        try {
            URL url = new URL(a);
            this.f30119j.mo8789p().m9144y().m9142a("Fetching remote configuration", h3Var.m24968l());
            zzca.zzb a2 = m8797h().m9113a(h3Var.m24968l());
            String b = m8797h().m9108b(h3Var.m24968l());
            if (a2 == null || TextUtils.isEmpty(b)) {
                aVar = null;
            } else {
                aVar = new C0780a();
                aVar.put("If-Modified-Since", b);
            }
            this.f30126q = true;
            zzex i = m8796i();
            String l = h3Var.m24968l();
            C4777o7 o7Var = new C4777o7(this);
            i.mo9085c();
            i.m24903n();
            Preconditions.m17288a(url);
            Preconditions.m17288a(o7Var);
            i.mo8795j().m9083c(new RunnableC4728j3(i, l, url, null, aVar, o7Var));
        } catch (MalformedURLException e) {
            this.f30119j.mo8789p().m9152q().m9141a("Failed to parse config URL. Not fetching. appId", zzeq.m9157a(h3Var.m24968l()), a);
        }
    }

    /* renamed from: a */
    public final void m8839a(AbstractC4750l7 l7Var) {
        this.f30124o++;
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m8835a(zzcd.zzg.zza zzaVar, long j, boolean z) {
        String str = z ? "_se" : "_lte";
        C4822t7 c = m8794k().m25058c(zzaVar.m9951z(), str);
        C4822t7 t7Var = (c == null || c.f17405e == null) ? new C4822t7(zzaVar.m9951z(), "auto", str, this.f30119j.mo8779z().mo17091b(), Long.valueOf(j)) : new C4822t7(zzaVar.m9951z(), "auto", str, this.f30119j.mo8779z().mo17091b(), Long.valueOf(((Long) c.f17405e).longValue() + j));
        zzcd.zzk.zza A = zzcd.zzk.m9900A();
        A.mo9794a(str);
        A.m9873a(this.f30119j.mo8779z().mo17091b());
        A.m9872b(((Long) t7Var.f17405e).longValue());
        zzcd.zzk zzkVar = (zzcd.zzk) ((zzhy) A.mo9619b());
        boolean z2 = false;
        int a = zzkr.m8768a(zzaVar, str);
        if (a >= 0) {
            zzaVar.m10004a(a, zzkVar);
            z2 = true;
        }
        if (!z2) {
            zzaVar.m10000a(zzkVar);
        }
        if (j > 0) {
            m8794k().m25083a(t7Var);
            this.f30119j.mo8789p().m9144y().m9141a("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", t7Var.f17405e);
        }
    }

    /* renamed from: a */
    public final void m8833a(zzaq zzaqVar, zzn zznVar) {
        List<zzz> list;
        List<zzz> list2;
        List<zzz> list3;
        Preconditions.m17288a(zznVar);
        Preconditions.m17281b(zznVar.f30154a);
        m8780y();
        m8787r();
        String str = zznVar.f30154a;
        long j = zzaqVar.f29815d;
        m8791n();
        if (zzkr.m8764a(zzaqVar, zznVar)) {
            if (!zznVar.f30161h) {
                m8804c(zznVar);
                return;
            }
            List<String> list4 = zznVar.f30174u;
            zzaq zzaqVar2 = zzaqVar;
            if (list4 != null) {
                if (list4.contains(zzaqVar.f29812a)) {
                    Bundle zzb = zzaqVar.f29813b.zzb();
                    zzb.putLong("ga_safelisted", 1L);
                    zzaqVar2 = new zzaq(zzaqVar.f29812a, new zzap(zzb), zzaqVar.f29814c, zzaqVar.f29815d);
                } else {
                    this.f30119j.mo8789p().m9145x().m9140a("Dropping non-safelisted event. appId, event name, origin", str, zzaqVar.f29812a, zzaqVar.f29814c);
                    return;
                }
            }
            m8794k().m25040w();
            try {
                C4657c k = m8794k();
                Preconditions.m17281b(str);
                k.mo9085c();
                k.m24903n();
                if (j < 0) {
                    k.mo8789p().m9149t().m9141a("Invalid time querying timed out conditional properties", zzeq.m9157a(str), Long.valueOf(j));
                    list = Collections.emptyList();
                } else {
                    list = k.m25068a("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzz zzzVar : list) {
                    if (zzzVar != null) {
                        this.f30119j.mo8789p().m9144y().m9140a("User property timed out", zzzVar.f30178a, this.f30119j.m9043t().m9167c(zzzVar.f30180c.f30142b), zzzVar.f30180c.zza());
                        if (zzzVar.f30184g != null) {
                            m8805c(new zzaq(zzzVar.f30184g, j), zznVar);
                        }
                        m8794k().m25054e(str, zzzVar.f30180c.f30142b);
                    }
                }
                C4657c k2 = m8794k();
                Preconditions.m17281b(str);
                k2.mo9085c();
                k2.m24903n();
                if (j < 0) {
                    k2.mo8789p().m9149t().m9141a("Invalid time querying expired conditional properties", zzeq.m9157a(str), Long.valueOf(j));
                    list2 = Collections.emptyList();
                } else {
                    list2 = k2.m25068a("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzz zzzVar2 : list2) {
                    if (zzzVar2 != null) {
                        this.f30119j.mo8789p().m9144y().m9140a("User property expired", zzzVar2.f30178a, this.f30119j.m9043t().m9167c(zzzVar2.f30180c.f30142b), zzzVar2.f30180c.zza());
                        m8794k().m25063b(str, zzzVar2.f30180c.f30142b);
                        if (zzzVar2.f30188k != null) {
                            arrayList.add(zzzVar2.f30188k);
                        }
                        m8794k().m25054e(str, zzzVar2.f30180c.f30142b);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    m8805c(new zzaq((zzaq) obj, j), zznVar);
                }
                C4657c k3 = m8794k();
                String str2 = zzaqVar2.f29812a;
                Preconditions.m17281b(str);
                Preconditions.m17281b(str2);
                k3.mo9085c();
                k3.m24903n();
                if (j < 0) {
                    k3.mo8789p().m9149t().m9140a("Invalid time querying triggered conditional properties", zzeq.m9157a(str), k3.m24900e().m9171a(str2), Long.valueOf(j));
                    list3 = Collections.emptyList();
                } else {
                    list3 = k3.m25068a("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(list3.size());
                for (zzz zzzVar3 : list3) {
                    if (zzzVar3 != null) {
                        zzku zzkuVar = zzzVar3.f30180c;
                        C4822t7 t7Var = new C4822t7(zzzVar3.f30178a, zzzVar3.f30179b, zzkuVar.f30142b, j, zzkuVar.zza());
                        if (m8794k().m25083a(t7Var)) {
                            this.f30119j.mo8789p().m9144y().m9140a("User property triggered", zzzVar3.f30178a, this.f30119j.m9043t().m9167c(t7Var.f17403c), t7Var.f17405e);
                        } else {
                            this.f30119j.mo8789p().m9152q().m9140a("Too many active user properties, ignoring", zzeq.m9157a(zzzVar3.f30178a), this.f30119j.m9043t().m9167c(t7Var.f17403c), t7Var.f17405e);
                        }
                        if (zzzVar3.f30186i != null) {
                            arrayList2.add(zzzVar3.f30186i);
                        }
                        zzzVar3.f30180c = new zzku(t7Var);
                        zzzVar3.f30182e = true;
                        m8794k().m25079a(zzzVar3);
                    }
                }
                m8805c(zzaqVar2, zznVar);
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    m8805c(new zzaq((zzaq) obj2, j), zznVar);
                }
                m8794k().m25045r();
                m8794k().m25039x();
            } catch (Throwable th) {
                m8794k().m25039x();
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m8832a(zzaq zzaqVar, String str) {
        C4710h3 b = m8794k().m25064b(str);
        if (b == null || TextUtils.isEmpty(b.m24954u())) {
            this.f30119j.mo8789p().m9145x().m9142a("No app data available; dropping event", str);
            return;
        }
        Boolean b2 = m8815b(b);
        if (b2 == null) {
            if (!"_ui".equals(zzaqVar.f29812a)) {
                this.f30119j.mo8789p().m9149t().m9142a("Could not find package. appId", zzeq.m9157a(str));
            }
        } else if (!b2.booleanValue()) {
            this.f30119j.mo8789p().m9152q().m9142a("App version does not match; dropping event. appId", zzeq.m9157a(str));
            return;
        }
        m8812b(zzaqVar, new zzn(str, b.m24964n(), b.m24954u(), b.m24953v(), b.m24952w(), b.m24951x(), b.m24950y(), (String) null, b.m25013A(), false, b.m24957r(), b.m24984f(), 0L, 0, b.m24981g(), b.m24978h(), false, b.m24962o(), b.m24975i(), b.m24949z(), b.m24972j(), (!zznv.m9491a() || !this.f30119j.m9062b().m9342e(b.m24968l(), zzas.f29876j0)) ? null : b.m24960p(), (!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0)) ? "" : m8822a(str).m9322a()));
    }

    /* renamed from: a */
    public final void m8829a(zzks zzksVar) {
        this.f30119j.mo8795j().mo9085c();
        C4657c cVar = new C4657c(this);
        cVar.m24902o();
        this.f30112c = cVar;
        this.f30119j.m9062b().m9356a(this.f30110a);
        zzjr zzjrVar = new zzjr(this);
        zzjrVar.m24902o();
        this.f30118i = zzjrVar;
        C4646a8 a8Var = new C4646a8(this);
        a8Var.m24902o();
        this.f30115f = a8Var;
        C4811s5 s5Var = new C4811s5(this);
        s5Var.m24902o();
        this.f30117h = s5Var;
        zzkh zzkhVar = new zzkh(this);
        zzkhVar.m24902o();
        this.f30114e = zzkhVar;
        this.f30113d = new C4719i3(this);
        if (this.f30124o != this.f30125p) {
            this.f30119j.mo8789p().m9152q().m9141a("Not all upload components initialized", Integer.valueOf(this.f30124o), Integer.valueOf(this.f30125p));
        }
        this.f30120k = true;
    }

    /* renamed from: a */
    public final void m8828a(zzku zzkuVar, zzn zznVar) {
        m8780y();
        m8787r();
        if (m8800e(zznVar)) {
            if (!zznVar.f30161h) {
                m8804c(zznVar);
                return;
            }
            int a = this.f30119j.m9044s().m8716a(zzkuVar.f30142b);
            if (a != 0) {
                this.f30119j.m9044s();
                String a2 = zzkv.m8713a(zzkuVar.f30142b, 24, true);
                String str = zzkuVar.f30142b;
                this.f30119j.m9044s().m8728a(this.f30135z, zznVar.f30154a, a, "_ev", a2, str != null ? str.length() : 0);
                return;
            }
            int b = this.f30119j.m9044s().m8691b(zzkuVar.f30142b, zzkuVar.zza());
            if (b != 0) {
                this.f30119j.m9044s();
                String a3 = zzkv.m8713a(zzkuVar.f30142b, 24, true);
                Object zza = zzkuVar.zza();
                this.f30119j.m9044s().m8728a(this.f30135z, zznVar.f30154a, b, "_ev", a3, (zza == null || (!(zza instanceof String) && !(zza instanceof CharSequence))) ? 0 : String.valueOf(zza).length());
                return;
            }
            Object c = this.f30119j.m9044s().m8686c(zzkuVar.f30142b, zzkuVar.zza());
            if (c != null) {
                if ("_sid".equals(zzkuVar.f30142b)) {
                    long j = zzkuVar.f30143c;
                    String str2 = zzkuVar.f30146f;
                    long j2 = 0;
                    C4822t7 c2 = m8794k().m25058c(zznVar.f30154a, "_sno");
                    if (c2 != null) {
                        Object obj = c2.f17405e;
                        if (obj instanceof Long) {
                            j2 = ((Long) obj).longValue();
                            m8828a(new zzku("_sno", j, Long.valueOf(j2 + 1), str2), zznVar);
                        }
                    }
                    if (c2 != null) {
                        this.f30119j.mo8789p().m9149t().m9142a("Retrieved last session number from database does not contain a valid (long) value", c2.f17405e);
                    }
                    C4706h a4 = m8794k().m25071a(zznVar.f30154a, "_s");
                    if (a4 != null) {
                        j2 = a4.f17104c;
                        this.f30119j.mo8789p().m9144y().m9142a("Backfill the session number. Last used session number", Long.valueOf(j2));
                    }
                    m8828a(new zzku("_sno", j, Long.valueOf(j2 + 1), str2), zznVar);
                }
                C4822t7 t7Var = new C4822t7(zznVar.f30154a, zzkuVar.f30146f, zzkuVar.f30142b, zzkuVar.f30143c, c);
                this.f30119j.mo8789p().m9144y().m9141a("Setting user property", this.f30119j.m9043t().m9167c(t7Var.f17403c), c);
                m8794k().m25040w();
                try {
                    m8804c(zznVar);
                    boolean a5 = m8794k().m25083a(t7Var);
                    m8794k().m25045r();
                    if (!a5) {
                        this.f30119j.mo8789p().m9152q().m9141a("Too many unique user properties are set. Ignoring user property", this.f30119j.m9043t().m9167c(t7Var.f17403c), t7Var.f17405e);
                        this.f30119j.m9044s().m8728a(this.f30135z, zznVar.f30154a, 9, (String) null, (String) null, 0);
                    }
                } finally {
                    m8794k().m25039x();
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m8827a(zzn zznVar) {
        if (this.f30131v != null) {
            ArrayList arrayList = new ArrayList();
            this.f30132w = arrayList;
            arrayList.addAll(this.f30131v);
        }
        C4657c k = m8794k();
        String str = zznVar.f30154a;
        Preconditions.m17281b(str);
        k.mo9085c();
        k.m24903n();
        try {
            SQLiteDatabase s = k.m25044s();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = s.delete("apps", "app_id=?", strArr) + 0 + s.delete(Constants.VIDEO_TRACKING_EVENTS_KEY, "app_id=?", strArr) + s.delete("user_attributes", "app_id=?", strArr) + s.delete("conditional_properties", "app_id=?", strArr) + s.delete("raw_events", "app_id=?", strArr) + s.delete("raw_events_metadata", "app_id=?", strArr) + s.delete("queue", "app_id=?", strArr) + s.delete("audience_filter_values", "app_id=?", strArr) + s.delete("main_event_params", "app_id=?", strArr) + s.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                k.mo8789p().m9144y().m9141a("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            k.mo8789p().m9152q().m9141a("Error resetting analytics data. appId, error", zzeq.m9157a(str), e);
        }
        if (zznVar.f30161h) {
            m8810b(zznVar);
        }
    }

    /* renamed from: a */
    public final void m8825a(zzz zzzVar) {
        zzn b = m8807b(zzzVar.f30178a);
        if (b != null) {
            m8824a(zzzVar, b);
        }
    }

    /* renamed from: a */
    public final void m8824a(zzz zzzVar, zzn zznVar) {
        Preconditions.m17288a(zzzVar);
        Preconditions.m17281b(zzzVar.f30178a);
        Preconditions.m17288a(zzzVar.f30179b);
        Preconditions.m17288a(zzzVar.f30180c);
        Preconditions.m17281b(zzzVar.f30180c.f30142b);
        m8780y();
        m8787r();
        if (m8800e(zznVar)) {
            if (!zznVar.f30161h) {
                m8804c(zznVar);
                return;
            }
            zzz zzzVar2 = new zzz(zzzVar);
            boolean z = false;
            zzzVar2.f30182e = false;
            m8794k().m25040w();
            try {
                zzz d = m8794k().m25056d(zzzVar2.f30178a, zzzVar2.f30180c.f30142b);
                if (d != null && !d.f30179b.equals(zzzVar2.f30179b)) {
                    this.f30119j.mo8789p().m9149t().m9140a("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f30119j.m9043t().m9167c(zzzVar2.f30180c.f30142b), zzzVar2.f30179b, d.f30179b);
                }
                if (d != null && d.f30182e) {
                    zzzVar2.f30179b = d.f30179b;
                    zzzVar2.f30181d = d.f30181d;
                    zzzVar2.f30185h = d.f30185h;
                    zzzVar2.f30183f = d.f30183f;
                    zzzVar2.f30186i = d.f30186i;
                    zzzVar2.f30182e = d.f30182e;
                    zzzVar2.f30180c = new zzku(zzzVar2.f30180c.f30142b, d.f30180c.f30143c, zzzVar2.f30180c.zza(), d.f30180c.f30146f);
                } else if (TextUtils.isEmpty(zzzVar2.f30183f)) {
                    zzzVar2.f30180c = new zzku(zzzVar2.f30180c.f30142b, zzzVar2.f30181d, zzzVar2.f30180c.zza(), zzzVar2.f30180c.f30146f);
                    zzzVar2.f30182e = true;
                    z = true;
                }
                if (zzzVar2.f30182e) {
                    zzku zzkuVar = zzzVar2.f30180c;
                    C4822t7 t7Var = new C4822t7(zzzVar2.f30178a, zzzVar2.f30179b, zzkuVar.f30142b, zzkuVar.f30143c, zzkuVar.zza());
                    if (m8794k().m25083a(t7Var)) {
                        this.f30119j.mo8789p().m9145x().m9140a("User property updated immediately", zzzVar2.f30178a, this.f30119j.m9043t().m9167c(t7Var.f17403c), t7Var.f17405e);
                    } else {
                        this.f30119j.mo8789p().m9152q().m9140a("(2)Too many active user properties, ignoring", zzeq.m9157a(zzzVar2.f30178a), this.f30119j.m9043t().m9167c(t7Var.f17403c), t7Var.f17405e);
                    }
                    if (z && zzzVar2.f30186i != null) {
                        m8805c(new zzaq(zzzVar2.f30186i, zzzVar2.f30181d), zznVar);
                    }
                }
                if (m8794k().m25079a(zzzVar2)) {
                    this.f30119j.mo8789p().m9145x().m9140a("Conditional property added", zzzVar2.f30178a, this.f30119j.m9043t().m9167c(zzzVar2.f30180c.f30142b), zzzVar2.f30180c.zza());
                } else {
                    this.f30119j.mo8789p().m9152q().m9140a("Too many conditional properties, ignoring", zzeq.m9157a(zzzVar2.f30178a), this.f30119j.m9043t().m9167c(zzzVar2.f30180c.f30142b), zzzVar2.f30180c.zza());
                }
                m8794k().m25045r();
            } finally {
                m8794k().m25039x();
            }
        }
    }

    /* renamed from: a */
    public final void m8823a(Runnable runnable) {
        m8780y();
        if (this.f30123n == null) {
            this.f30123n = new ArrayList();
        }
        this.f30123n.add(runnable);
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m8821a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        m8780y();
        m8787r();
        Preconditions.m17281b(str);
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f30126q = false;
                m8801e();
            }
        }
        this.f30119j.mo8789p().m9144y().m9142a("onConfigFetched. Response size", Integer.valueOf(bArr2.length));
        m8794k().m25040w();
        C4710h3 b = m8794k().m25064b(str);
        boolean z = (i == 200 || i == 204 || i == 304) && th == null;
        if (b == null) {
            this.f30119j.mo8789p().m9149t().m9142a("App does not exist in onConfigFetched. appId", zzeq.m9157a(str));
        } else if (z || i == 404) {
            List<String> list = map != null ? map.get("Last-Modified") : null;
            String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
            if (i == 404 || i == 304) {
                if (m8797h().m9113a(str) == null && !m8797h().m9109a(str, null, null)) {
                    m8794k().m25039x();
                    return;
                }
            } else if (!m8797h().m9109a(str, bArr2, str2)) {
                m8794k().m25039x();
                return;
            }
            b.m24977h(this.f30119j.mo8779z().mo17091b());
            m8794k().m25085a(b);
            if (i == 404) {
                this.f30119j.mo8789p().m9147v().m9142a("Config not found. Using empty config. appId", str);
            } else {
                this.f30119j.mo8789p().m9144y().m9141a("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
            }
            if (!m8796i().m9134r() || !m8806c()) {
                m8803d();
            } else {
                m8786s();
            }
        } else {
            b.m24974i(this.f30119j.mo8779z().mo17091b());
            m8794k().m25085a(b);
            this.f30119j.mo8789p().m9144y().m9141a("Fetching config failed. code, error", Integer.valueOf(i), th);
            m8797h().m9106c(str);
            this.f30119j.m9050l().f17212f.m9130a(this.f30119j.mo8779z().mo17091b());
            boolean z2 = true;
            if (i != 503) {
                z2 = i == 429;
            }
            if (z2) {
                this.f30119j.m9050l().f17213g.m9130a(this.f30119j.mo8779z().mo17091b());
            }
            m8803d();
        }
        m8794k().m25045r();
        m8794k().m25039x();
    }

    /* renamed from: a */
    public final void m8819a(String str, zzac zzacVar) {
        if (zzml.m9520a() && this.f30119j.m9062b().m9354a(zzas.f29835J0)) {
            m8780y();
            m8787r();
            this.f30134y.put(str, zzacVar);
            C4657c k = m8794k();
            if (zzml.m9520a() && k.m24897h().m9354a(zzas.f29835J0)) {
                Preconditions.m17288a(str);
                Preconditions.m17288a(zzacVar);
                k.mo9085c();
                k.m24903n();
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str);
                contentValues.put("consent_state", zzacVar.m9322a());
                try {
                    if (k.m25044s().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                        k.mo8789p().m9152q().m9142a("Failed to insert/update consent setting (got -1). appId", zzeq.m9157a(str));
                    }
                } catch (SQLiteException e) {
                    k.mo8789p().m9152q().m9141a("Error storing consent setting. appId, error", zzeq.m9157a(str), e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8817a(boolean z) {
        m8803d();
    }

    @VisibleForTesting
    /* renamed from: a */
    public final boolean m8842a(int i, FileChannel fileChannel) {
        m8780y();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f30119j.mo8789p().m9152q().m9143a("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            if (this.f30119j.m9062b().m9354a(zzas.f29894s0) && Build.VERSION.SDK_INT <= 19) {
                fileChannel.position(0L);
            }
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            this.f30119j.mo8789p().m9152q().m9142a("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            this.f30119j.mo8789p().m9152q().m9142a("Failed to write to channel", e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m8837a(zzcd.zzc.zza zzaVar, zzcd.zzc.zza zzaVar2) {
        Preconditions.m17284a("_e".equals(zzaVar.m10243q()));
        m8791n();
        zzcd.zze a = zzkr.m8771a((zzcd.zzc) ((zzhy) zzaVar.mo9619b()), "_sc");
        String str = null;
        String r = a == null ? null : a.m10214r();
        m8791n();
        zzcd.zze a2 = zzkr.m8771a((zzcd.zzc) ((zzhy) zzaVar2.mo9619b()), "_pc");
        if (a2 != null) {
            str = a2.m10214r();
        }
        if (str == null || !str.equals(r)) {
            return false;
        }
        m8813b(zzaVar, zzaVar2);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04b9 A[Catch: all -> 0x19b8, TRY_ENTER, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04c8 A[Catch: all -> 0x19b8, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04e6 A[Catch: all -> 0x19b8, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x076a  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0a9c A[Catch: all -> 0x19b8, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0c06 A[Catch: all -> 0x19b8, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0ea7  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0eba  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x1455 A[Catch: all -> 0x19b8, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:570:0x146e  */
    /* JADX WARN: Removed duplicated region for block: B:573:0x1476 A[Catch: all -> 0x19b8, TRY_ENTER, TRY_LEAVE, TryCatch #12 {all -> 0x19b8, blocks: (B:3:0x0014, B:22:0x00e6, B:53:0x01d6, B:69:0x0269, B:100:0x0395, B:109:0x03f4, B:117:0x0426, B:126:0x0469, B:140:0x04b9, B:142:0x04c2, B:144:0x04c8, B:151:0x04e6, B:153:0x052f, B:156:0x0546, B:158:0x0578, B:160:0x05b6, B:167:0x05d9, B:169:0x05e6, B:172:0x060f, B:174:0x0615, B:176:0x062e, B:178:0x063e, B:182:0x0669, B:184:0x0673, B:186:0x0686, B:188:0x0696, B:190:0x06a9, B:191:0x06ba, B:193:0x06c3, B:195:0x06de, B:202:0x0712, B:206:0x0723, B:210:0x0734, B:227:0x0788, B:230:0x0796, B:232:0x07a9, B:234:0x07d8, B:236:0x07eb, B:243:0x082e, B:246:0x0874, B:248:0x08b3, B:251:0x08f0, B:255:0x0911, B:261:0x093f, B:263:0x0975, B:265:0x099d, B:267:0x09a7, B:269:0x09be, B:272:0x09d7, B:281:0x0a07, B:285:0x0a26, B:287:0x0a69, B:291:0x0a9c, B:293:0x0ab2, B:296:0x0ac1, B:301:0x0ae3, B:308:0x0b12, B:310:0x0b23, B:312:0x0b34, B:316:0x0b6e, B:321:0x0b8e, B:323:0x0b97, B:326:0x0baa, B:330:0x0bbf, B:331:0x0bed, B:333:0x0c06, B:335:0x0c14, B:339:0x0c31, B:341:0x0c46, B:343:0x0c5d, B:350:0x0c92, B:352:0x0ca0, B:356:0x0cbe, B:358:0x0cd3, B:360:0x0cea, B:364:0x0d25, B:368:0x0d4d, B:370:0x0d5b, B:372:0x0d6f, B:378:0x0da6, B:380:0x0dbb, B:382:0x0e2a, B:384:0x0e36, B:386:0x0e3d, B:389:0x0e50, B:391:0x0e5d, B:393:0x0e64, B:396:0x0e77, B:398:0x0e8e, B:404:0x0ebd, B:406:0x0ecb, B:408:0x0ed3, B:410:0x0ef5, B:412:0x0f15, B:414:0x0f37, B:416:0x0f42, B:417:0x0f5b, B:425:0x0f8a, B:427:0x0f9f, B:429:0x0fae, B:431:0x0fc8, B:434:0x0fe4, B:436:0x0feb, B:441:0x1012, B:443:0x101b, B:446:0x103e, B:448:0x1053, B:450:0x105b, B:456:0x1082, B:458:0x1093, B:465:0x10aa, B:466:0x10b6, B:468:0x10c5, B:470:0x10ea, B:472:0x110a, B:474:0x111d, B:476:0x1125, B:478:0x112f, B:480:0x116c, B:482:0x1176, B:484:0x1188, B:490:0x11a5, B:492:0x11ae, B:494:0x11c1, B:496:0x11cb, B:498:0x11e0, B:500:0x11eb, B:502:0x11f7, B:503:0x1201, B:504:0x1207, B:506:0x120d, B:508:0x1223, B:510:0x122b, B:519:0x12c9, B:522:0x12fa, B:524:0x131a, B:526:0x1320, B:528:0x132d, B:530:0x1341, B:532:0x1347, B:534:0x1352, B:536:0x1365, B:538:0x1378, B:544:0x13cf, B:546:0x13dd, B:548:0x13e5, B:550:0x13ff, B:552:0x1407, B:555:0x1419, B:557:0x141f, B:560:0x142e, B:562:0x1434, B:569:0x1455, B:573:0x1476, B:73:0x0293), top: B:727:0x0014, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:574:0x14b1 A[Catch: all -> 0x198e, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x198e, blocks: (B:512:0x1275, B:515:0x129e, B:517:0x12a8, B:540:0x1383, B:574:0x14b1, B:577:0x14ca, B:580:0x14e9, B:582:0x152c, B:586:0x1554, B:589:0x1561, B:591:0x157c, B:593:0x1584, B:595:0x158c, B:598:0x1596, B:600:0x15ae, B:601:0x15b9, B:603:0x15c3, B:605:0x15cc, B:607:0x15ef, B:609:0x15f7, B:611:0x1605, B:612:0x161f, B:614:0x1627, B:615:0x1633, B:619:0x164c, B:621:0x1666, B:623:0x1689, B:625:0x1691, B:627:0x16a3, B:629:0x16b7, B:631:0x16ca, B:633:0x16d2, B:635:0x16eb, B:636:0x16f5, B:637:0x16fb, B:639:0x170a, B:641:0x1719, B:643:0x1727, B:645:0x172f, B:648:0x1756), top: B:731:0x1275 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:713:0x1992 A[Catch: all -> 0x19b4, TRY_ENTER, TRY_LEAVE, TryCatch #11 {all -> 0x19b4, blocks: (B:650:0x176f, B:651:0x178c, B:653:0x1794, B:656:0x17a2, B:657:0x17ad, B:659:0x17b5, B:665:0x17cb, B:666:0x17d5, B:668:0x17dd, B:670:0x180c, B:671:0x1817, B:673:0x181e, B:675:0x1828, B:677:0x182e, B:679:0x1843, B:682:0x184e, B:683:0x185c, B:685:0x1869, B:686:0x1875, B:688:0x1890, B:690:0x18a5, B:692:0x18ce, B:696:0x18de, B:698:0x18e9, B:699:0x1901, B:701:0x1928, B:703:0x1945, B:705:0x1951, B:707:0x196a, B:709:0x197f, B:713:0x1992, B:719:0x19ab, B:721:0x19b3), top: B:727:0x0014, inners: #6 }] */
    /* JADX WARN: Type inference failed for: r0v401, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.measurement.internal.zzkl] */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r19v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r19v60 */
    /* JADX WARN: Type inference failed for: r19v76 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v11, types: [long] */
    /* JADX WARN: Type inference failed for: r20v12 */
    /* JADX WARN: Type inference failed for: r20v13, types: [long] */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v16 */
    /* JADX WARN: Type inference failed for: r20v17 */
    /* JADX WARN: Type inference failed for: r20v18 */
    /* JADX WARN: Type inference failed for: r20v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v20 */
    /* JADX WARN: Type inference failed for: r20v21 */
    /* JADX WARN: Type inference failed for: r20v22 */
    /* JADX WARN: Type inference failed for: r20v23 */
    /* JADX WARN: Type inference failed for: r20v24 */
    /* JADX WARN: Type inference failed for: r20v25 */
    /* JADX WARN: Type inference failed for: r20v26 */
    /* JADX WARN: Type inference failed for: r20v3, types: [long] */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r27v7, types: [long] */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8820a(java.lang.String r19, long r20) {
        /*
            Method dump skipped, instructions count: 6600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8820a(java.lang.String, long):boolean");
    }

    /* renamed from: b */
    public final zzn m8807b(String str) {
        C4710h3 b = m8794k().m25064b(str);
        if (b == null || TextUtils.isEmpty(b.m24954u())) {
            this.f30119j.mo8789p().m9145x().m9142a("No app data available; dropping", str);
            return null;
        }
        Boolean b2 = m8815b(b);
        if (b2 == null || b2.booleanValue()) {
            return new zzn(str, b.m24964n(), b.m24954u(), b.m24953v(), b.m24952w(), b.m24951x(), b.m24950y(), (String) null, b.m25013A(), false, b.m24957r(), b.m24984f(), 0L, 0, b.m24981g(), b.m24978h(), false, b.m24962o(), b.m24975i(), b.m24949z(), b.m24972j(), (!zznv.m9491a() || !this.f30119j.m9062b().m9342e(str, zzas.f29876j0)) ? null : b.m24960p(), (!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0)) ? "" : m8822a(str).m9322a());
        }
        this.f30119j.mo8789p().m9152q().m9142a("App version does not match; dropping. appId", zzeq.m9157a(str));
        return null;
    }

    /* renamed from: b */
    public final Boolean m8815b(C4710h3 h3Var) {
        try {
            if (h3Var.m24953v() != -2147483648L) {
                if (h3Var.m24953v() == Wrappers.m17026b(this.f30119j.mo8846B()).m17028b(h3Var.m24968l(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.m17026b(this.f30119j.mo8846B()).m17028b(h3Var.m24968l(), 0).versionName;
                if (h3Var.m24954u() != null && h3Var.m24954u().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: b */
    public final void m8816b() {
        this.f30119j.mo8795j().mo9085c();
        m8794k().m25038y();
        if (this.f30119j.m9050l().f17211e.m9131a() == 0) {
            this.f30119j.m9050l().f17211e.m9130a(this.f30119j.mo8779z().mo17091b());
        }
        m8803d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8813b(com.google.android.gms.internal.measurement.zzcd.zzc.zza r6, com.google.android.gms.internal.measurement.zzcd.zzc.zza r7) {
        /*
            r5 = this;
            java.lang.String r0 = "_e"
            r1 = r6
            java.lang.String r1 = r1.m10243q()
            boolean r0 = r0.equals(r1)
            com.google.android.gms.common.internal.Preconditions.m17284a(r0)
            r0 = r5
            com.google.android.gms.measurement.internal.zzkr r0 = r0.m8791n()
            r0 = r6
            com.google.android.gms.internal.measurement.zzjj r0 = r0.mo9619b()
            com.google.android.gms.internal.measurement.zzhy r0 = (com.google.android.gms.internal.measurement.zzhy) r0
            com.google.android.gms.internal.measurement.zzcd$zzc r0 = (com.google.android.gms.internal.measurement.zzcd.zzc) r0
            java.lang.String r1 = "_et"
            com.google.android.gms.internal.measurement.zzcd$zze r0 = com.google.android.gms.measurement.internal.zzkr.m8771a(r0, r1)
            r8 = r0
            r0 = r8
            boolean r0 = r0.m10213s()
            if (r0 == 0) goto L_0x0091
            r0 = r8
            long r0 = r0.m10212t()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0036
            goto L_0x0091
        L_0x0036:
            r0 = r8
            long r0 = r0.m10212t()
            r9 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzkr r0 = r0.m8791n()
            r0 = r7
            com.google.android.gms.internal.measurement.zzjj r0 = r0.mo9619b()
            com.google.android.gms.internal.measurement.zzhy r0 = (com.google.android.gms.internal.measurement.zzhy) r0
            com.google.android.gms.internal.measurement.zzcd$zzc r0 = (com.google.android.gms.internal.measurement.zzcd.zzc) r0
            java.lang.String r1 = "_et"
            com.google.android.gms.internal.measurement.zzcd$zze r0 = com.google.android.gms.measurement.internal.zzkr.m8771a(r0, r1)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0070
            r0 = r9
            r11 = r0
            r0 = r8
            long r0 = r0.m10212t()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0070
            r0 = r9
            r1 = r8
            long r1 = r1.m10212t()
            long r0 = r0 + r1
            r11 = r0
        L_0x0070:
            r0 = r5
            com.google.android.gms.measurement.internal.zzkr r0 = r0.m8791n()
            r0 = r7
            java.lang.String r1 = "_et"
            r2 = r11
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            com.google.android.gms.measurement.internal.zzkr.m8772a(r0, r1, r2)
            r0 = r5
            com.google.android.gms.measurement.internal.zzkr r0 = r0.m8791n()
            r0 = r6
            java.lang.String r1 = "_fr"
            r2 = 1
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            com.google.android.gms.measurement.internal.zzkr.m8772a(r0, r1, r2)
        L_0x0091:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8813b(com.google.android.gms.internal.measurement.zzcd$zzc$zza, com.google.android.gms.internal.measurement.zzcd$zzc$zza):void");
    }

    /* renamed from: b */
    public final void m8812b(zzaq zzaqVar, zzn zznVar) {
        zzaq zzaqVar2 = zzaqVar;
        if (zznw.m9489a()) {
            zzaqVar2 = zzaqVar;
            if (this.f30119j.m9062b().m9354a(zzas.f29817A0)) {
                zzeu a = zzeu.m9138a(zzaqVar);
                this.f30119j.m9044s().m8732a(a.f29952d, m8794k().m25047i(zznVar.f30154a));
                this.f30119j.m9044s().m8719a(a, this.f30119j.m9062b().m9353a(zznVar.f30154a));
                zzaqVar2 = a.m9139a();
            }
        }
        if (this.f30119j.m9062b().m9354a(zzas.f29866e0) && "_cmp".equals(zzaqVar2.f29812a) && "referrer API v2".equals(zzaqVar2.f29813b.m9290d("_cis"))) {
            String d = zzaqVar2.f29813b.m9290d("gclid");
            if (!TextUtils.isEmpty(d)) {
                m8828a(new zzku("_lgclid", zzaqVar2.f29815d, d, "auto"), zznVar);
            }
        }
        m8833a(zzaqVar2, zznVar);
    }

    /* renamed from: b */
    public final void m8811b(zzku zzkuVar, zzn zznVar) {
        m8780y();
        m8787r();
        if (m8800e(zznVar)) {
            if (!zznVar.f30161h) {
                m8804c(zznVar);
            } else if (!"_npa".equals(zzkuVar.f30142b) || zznVar.f30172s == null) {
                this.f30119j.mo8789p().m9145x().m9142a("Removing user property", this.f30119j.m9043t().m9167c(zzkuVar.f30142b));
                m8794k().m25040w();
                try {
                    m8804c(zznVar);
                    m8794k().m25063b(zznVar.f30154a, zzkuVar.f30142b);
                    m8794k().m25045r();
                    this.f30119j.mo8789p().m9145x().m9142a("User property removed", this.f30119j.m9043t().m9167c(zzkuVar.f30142b));
                } finally {
                    m8794k().m25039x();
                }
            } else {
                this.f30119j.mo8789p().m9145x().m9143a("Falling back to manifest metadata value for ad personalization");
                m8828a(new zzku("_npa", this.f30119j.mo8779z().mo17091b(), Long.valueOf(zznVar.f30172s.booleanValue() ? 1L : 0L), "auto"), zznVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:170:0x06a9 A[Catch: all -> 0x06ed, TRY_ENTER, TryCatch #3 {all -> 0x06ed, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a9, B:172:0x06b0, B:174:0x06df), top: B:187:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016e A[Catch: all -> 0x06ed, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x06ed, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a9, B:172:0x06b0, B:174:0x06df), top: B:187:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x029c A[Catch: all -> 0x06ed, TRY_ENTER, TryCatch #3 {all -> 0x06ed, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a9, B:172:0x06b0, B:174:0x06df), top: B:187:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0335 A[Catch: all -> 0x06ed, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x06ed, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a9, B:172:0x06b0, B:174:0x06df), top: B:187:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0365 A[Catch: all -> 0x06ed, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x06ed, blocks: (B:25:0x00cd, B:27:0x00e0, B:30:0x00f3, B:32:0x00fa, B:37:0x0110, B:39:0x0125, B:42:0x0135, B:45:0x0142, B:47:0x015a, B:50:0x016e, B:52:0x0179, B:54:0x0191, B:56:0x01c4, B:58:0x01d5, B:60:0x0269, B:62:0x0282, B:67:0x029c, B:69:0x02a7, B:74:0x02bc, B:76:0x02c7, B:78:0x02ce, B:85:0x02ed, B:86:0x032a, B:88:0x0335, B:91:0x034d, B:95:0x0365, B:98:0x0379, B:100:0x0401, B:101:0x040d, B:103:0x0414, B:105:0x041e, B:107:0x044e, B:109:0x0468, B:111:0x047f, B:115:0x049d, B:117:0x04a6, B:119:0x04b2, B:124:0x04c9, B:125:0x04d5, B:129:0x04e7, B:133:0x04f7, B:134:0x0510, B:136:0x0527, B:140:0x0545, B:142:0x054e, B:144:0x0558, B:146:0x0562, B:149:0x0575, B:150:0x057f, B:151:0x0582, B:154:0x05ac, B:156:0x05fe, B:157:0x060a, B:159:0x0611, B:160:0x061a, B:161:0x061d, B:163:0x063f, B:165:0x0652, B:167:0x0679, B:168:0x0682, B:169:0x0685, B:170:0x06a9, B:172:0x06b0, B:174:0x06df), top: B:187:0x00cd, inners: #0, #1, #2 }] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8810b(com.google.android.gms.measurement.internal.zzn r8) {
        /*
            Method dump skipped, instructions count: 1789
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8810b(com.google.android.gms.measurement.internal.zzn):void");
    }

    /* renamed from: b */
    public final void m8809b(zzz zzzVar) {
        zzn b = m8807b(zzzVar.f30178a);
        if (b != null) {
            m8808b(zzzVar, b);
        }
    }

    /* renamed from: b */
    public final void m8808b(zzz zzzVar, zzn zznVar) {
        Preconditions.m17288a(zzzVar);
        Preconditions.m17281b(zzzVar.f30178a);
        Preconditions.m17288a(zzzVar.f30180c);
        Preconditions.m17281b(zzzVar.f30180c.f30142b);
        m8780y();
        m8787r();
        if (m8800e(zznVar)) {
            if (!zznVar.f30161h) {
                m8804c(zznVar);
                return;
            }
            m8794k().m25040w();
            try {
                m8804c(zznVar);
                zzz d = m8794k().m25056d(zzzVar.f30178a, zzzVar.f30180c.f30142b);
                if (d != null) {
                    this.f30119j.mo8789p().m9145x().m9141a("Removing conditional user property", zzzVar.f30178a, this.f30119j.m9043t().m9167c(zzzVar.f30180c.f30142b));
                    m8794k().m25054e(zzzVar.f30178a, zzzVar.f30180c.f30142b);
                    if (d.f30182e) {
                        m8794k().m25063b(zzzVar.f30178a, zzzVar.f30180c.f30142b);
                    }
                    if (zzzVar.f30188k != null) {
                        Bundle bundle = null;
                        if (zzzVar.f30188k.f29813b != null) {
                            bundle = zzzVar.f30188k.f29813b.zzb();
                        }
                        m8805c(this.f30119j.m9044s().m8709a(zzzVar.f30178a, zzzVar.f30188k.f29812a, bundle, d.f30179b, zzzVar.f30188k.f29815d, true, false, zzlo.m9595a() && this.f30119j.m9062b().m9354a(zzas.f29841M0)), zznVar);
                    }
                } else {
                    this.f30119j.mo8789p().m9149t().m9141a("Conditional user property doesn't exist", zzeq.m9157a(zzzVar.f30178a), this.f30119j.m9043t().m9167c(zzzVar.f30180c.f30142b));
                }
                m8794k().m25045r();
            } finally {
                m8794k().m25039x();
            }
        }
    }

    /* renamed from: c */
    public final C4710h3 m8804c(zzn zznVar) {
        C4710h3 h3Var;
        m8780y();
        m8787r();
        Preconditions.m17288a(zznVar);
        Preconditions.m17281b(zznVar.f30154a);
        C4710h3 b = m8794k().m25064b(zznVar.f30154a);
        zzac zzacVar = zzac.f29791c;
        zzac zzacVar2 = zzacVar;
        if (zzml.m9520a()) {
            zzacVar2 = zzacVar;
            if (this.f30119j.m9062b().m9354a(zzas.f29835J0)) {
                zzacVar2 = m8822a(zznVar.f30154a).m9312b(zzac.m9315a(zznVar.f30176w));
            }
        }
        String a = (!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0) || zzacVar2.m9309c()) ? this.f30118i.m8867a(zznVar.f30154a) : "";
        if (!zzne.m9500a() || !this.f30119j.m9062b().m9354a(zzas.f29886o0)) {
            return m8826a(zznVar, b, a);
        }
        if (b == null) {
            C4710h3 h3Var2 = new C4710h3(this.f30119j, zznVar.f30154a);
            if (!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0)) {
                h3Var2.m25001a(m8845C());
                h3Var2.m24985e(a);
                h3Var = h3Var2;
            } else {
                if (zzacVar2.m9306e()) {
                    h3Var2.m25001a(m8834a(zzacVar2));
                }
                h3Var = h3Var2;
                if (zzacVar2.m9309c()) {
                    h3Var2.m24985e(a);
                    h3Var = h3Var2;
                }
            }
        } else if ((!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0) || zzacVar2.m9309c()) && !a.equals(b.m24958q())) {
            b.m24985e(a);
            if (!zzml.m9520a() || !this.f30119j.m9062b().m9354a(zzas.f29835J0)) {
                b.m25001a(m8845C());
                h3Var = b;
            } else {
                b.m25001a(m8834a(zzacVar2));
                h3Var = b;
            }
        } else {
            h3Var = b;
            if (zzml.m9520a()) {
                h3Var = b;
                if (this.f30119j.m9062b().m9354a(zzas.f29835J0)) {
                    h3Var = b;
                    if (TextUtils.isEmpty(b.m24966m())) {
                        h3Var = b;
                        if (zzacVar2.m9306e()) {
                            b.m25001a(m8834a(zzacVar2));
                            h3Var = b;
                        }
                    }
                }
            }
        }
        h3Var.m24996b(zznVar.f30155b);
        h3Var.m24992c(zznVar.f30171r);
        if (zznv.m9491a() && this.f30119j.m9062b().m9342e(h3Var.m24968l(), zzas.f29876j0)) {
            h3Var.m24988d(zznVar.f30175v);
        }
        if (!TextUtils.isEmpty(zznVar.f30164k)) {
            h3Var.m24982f(zznVar.f30164k);
        }
        long j = zznVar.f30158e;
        if (j != 0) {
            h3Var.m24989d(j);
        }
        if (!TextUtils.isEmpty(zznVar.f30156c)) {
            h3Var.m24979g(zznVar.f30156c);
        }
        h3Var.m24993c(zznVar.f30163j);
        String str = zznVar.f30157d;
        if (str != null) {
            h3Var.m24976h(str);
        }
        h3Var.m24986e(zznVar.f30159f);
        h3Var.m24999a(zznVar.f30161h);
        if (!TextUtils.isEmpty(zznVar.f30160g)) {
            h3Var.m24973i(zznVar.f30160g);
        }
        if (!this.f30119j.m9062b().m9354a(zzas.f29906y0)) {
            h3Var.m24959p(zznVar.f30165l);
        }
        h3Var.m24995b(zznVar.f30168o);
        h3Var.m24991c(zznVar.f30169p);
        h3Var.m25002a(zznVar.f30172s);
        h3Var.m24983f(zznVar.f30173t);
        if (h3Var.m25004a()) {
            m8794k().m25085a(h3Var);
        }
        return h3Var;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:81|(1:83)(1:84)|85|86|(4:91|92|101|(1:103))|93|94|356|95|98|99|100|92|101|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0377, code lost:
        r35 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0379, code lost:
        r0.mo8789p().m9152q().m9141a("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzeq.m9157a(r0), r35);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03be A[Catch: all -> 0x0d19, TRY_LEAVE, TryCatch #1 {all -> 0x0d19, blocks: (B:39:0x018a, B:41:0x01a2, B:43:0x01b0, B:48:0x01ca, B:56:0x01ee, B:58:0x01ff, B:61:0x021e, B:67:0x0253, B:69:0x025e, B:73:0x0274, B:75:0x0294, B:77:0x02a5, B:79:0x02ab, B:81:0x02bd, B:83:0x02c9, B:84:0x02d4, B:86:0x02e0, B:88:0x02ee, B:91:0x02fb, B:93:0x032e, B:95:0x0353, B:97:0x0379, B:98:0x038d, B:99:0x0390, B:101:0x03b3, B:103:0x03be, B:107:0x0405, B:110:0x0414, B:115:0x047c, B:117:0x0499, B:122:0x04ac, B:127:0x04d3, B:129:0x04f0, B:134:0x051d, B:139:0x054e, B:141:0x056b, B:144:0x0579, B:146:0x05a8, B:148:0x05cf, B:150:0x05da, B:152:0x05ed, B:154:0x05f7, B:156:0x060a, B:159:0x061b, B:160:0x0635, B:161:0x0638, B:163:0x0668, B:167:0x0687, B:170:0x06d6, B:171:0x06f4, B:173:0x070e, B:175:0x075d, B:177:0x0768, B:179:0x0771, B:181:0x077c, B:183:0x0785, B:185:0x0790, B:187:0x079a, B:189:0x07a7, B:191:0x07b9, B:192:0x07c3, B:194:0x07c9, B:196:0x07d9, B:197:0x07f4, B:199:0x07fa, B:201:0x080e, B:203:0x0819, B:205:0x0823, B:207:0x082f, B:209:0x0838, B:211:0x0843, B:213:0x084d, B:214:0x085a, B:216:0x0865, B:218:0x086f, B:220:0x087a, B:222:0x0882, B:224:0x088e, B:226:0x08a4, B:228:0x08ad, B:230:0x08c6, B:232:0x08d6, B:235:0x08df, B:237:0x08f2, B:239:0x0900, B:241:0x0907, B:243:0x091d, B:244:0x0931, B:246:0x0945, B:248:0x094c, B:250:0x0952, B:253:0x0967, B:255:0x097b, B:258:0x099e, B:260:0x09a5, B:262:0x09c0, B:264:0x09c9, B:266:0x0a1f, B:268:0x0a2a, B:270:0x0a33, B:272:0x0a39, B:274:0x0a49, B:275:0x0a52, B:277:0x0a59, B:279:0x0a5f, B:281:0x0a67, B:284:0x0a79, B:286:0x0a91, B:288:0x0aa1, B:289:0x0aaf, B:291:0x0aba, B:293:0x0ad0, B:295:0x0ae0, B:298:0x0aea, B:300:0x0afa, B:302:0x0b50, B:304:0x0b5b, B:305:0x0b6b, B:307:0x0b71, B:309:0x0b81, B:312:0x0b8b, B:314:0x0b94, B:316:0x0ba1, B:318:0x0baa, B:320:0x0bb6, B:322:0x0bc5, B:324:0x0bd1, B:325:0x0c21, B:327:0x0c36, B:329:0x0c41, B:331:0x0c4c, B:333:0x0c54, B:337:0x0c6d, B:339:0x0c99, B:343:0x0cb7, B:345:0x0cc3, B:347:0x0ccc, B:349:0x0ce6), top: B:358:0x018a, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0405 A[Catch: all -> 0x0d19, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0d19, blocks: (B:39:0x018a, B:41:0x01a2, B:43:0x01b0, B:48:0x01ca, B:56:0x01ee, B:58:0x01ff, B:61:0x021e, B:67:0x0253, B:69:0x025e, B:73:0x0274, B:75:0x0294, B:77:0x02a5, B:79:0x02ab, B:81:0x02bd, B:83:0x02c9, B:84:0x02d4, B:86:0x02e0, B:88:0x02ee, B:91:0x02fb, B:93:0x032e, B:95:0x0353, B:97:0x0379, B:98:0x038d, B:99:0x0390, B:101:0x03b3, B:103:0x03be, B:107:0x0405, B:110:0x0414, B:115:0x047c, B:117:0x0499, B:122:0x04ac, B:127:0x04d3, B:129:0x04f0, B:134:0x051d, B:139:0x054e, B:141:0x056b, B:144:0x0579, B:146:0x05a8, B:148:0x05cf, B:150:0x05da, B:152:0x05ed, B:154:0x05f7, B:156:0x060a, B:159:0x061b, B:160:0x0635, B:161:0x0638, B:163:0x0668, B:167:0x0687, B:170:0x06d6, B:171:0x06f4, B:173:0x070e, B:175:0x075d, B:177:0x0768, B:179:0x0771, B:181:0x077c, B:183:0x0785, B:185:0x0790, B:187:0x079a, B:189:0x07a7, B:191:0x07b9, B:192:0x07c3, B:194:0x07c9, B:196:0x07d9, B:197:0x07f4, B:199:0x07fa, B:201:0x080e, B:203:0x0819, B:205:0x0823, B:207:0x082f, B:209:0x0838, B:211:0x0843, B:213:0x084d, B:214:0x085a, B:216:0x0865, B:218:0x086f, B:220:0x087a, B:222:0x0882, B:224:0x088e, B:226:0x08a4, B:228:0x08ad, B:230:0x08c6, B:232:0x08d6, B:235:0x08df, B:237:0x08f2, B:239:0x0900, B:241:0x0907, B:243:0x091d, B:244:0x0931, B:246:0x0945, B:248:0x094c, B:250:0x0952, B:253:0x0967, B:255:0x097b, B:258:0x099e, B:260:0x09a5, B:262:0x09c0, B:264:0x09c9, B:266:0x0a1f, B:268:0x0a2a, B:270:0x0a33, B:272:0x0a39, B:274:0x0a49, B:275:0x0a52, B:277:0x0a59, B:279:0x0a5f, B:281:0x0a67, B:284:0x0a79, B:286:0x0a91, B:288:0x0aa1, B:289:0x0aaf, B:291:0x0aba, B:293:0x0ad0, B:295:0x0ae0, B:298:0x0aea, B:300:0x0afa, B:302:0x0b50, B:304:0x0b5b, B:305:0x0b6b, B:307:0x0b71, B:309:0x0b81, B:312:0x0b8b, B:314:0x0b94, B:316:0x0ba1, B:318:0x0baa, B:320:0x0bb6, B:322:0x0bc5, B:324:0x0bd1, B:325:0x0c21, B:327:0x0c36, B:329:0x0c41, B:331:0x0c4c, B:333:0x0c54, B:337:0x0c6d, B:339:0x0c99, B:343:0x0cb7, B:345:0x0cc3, B:347:0x0ccc, B:349:0x0ce6), top: B:358:0x018a, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0cc3 A[Catch: all -> 0x0d19, TRY_LEAVE, TryCatch #1 {all -> 0x0d19, blocks: (B:39:0x018a, B:41:0x01a2, B:43:0x01b0, B:48:0x01ca, B:56:0x01ee, B:58:0x01ff, B:61:0x021e, B:67:0x0253, B:69:0x025e, B:73:0x0274, B:75:0x0294, B:77:0x02a5, B:79:0x02ab, B:81:0x02bd, B:83:0x02c9, B:84:0x02d4, B:86:0x02e0, B:88:0x02ee, B:91:0x02fb, B:93:0x032e, B:95:0x0353, B:97:0x0379, B:98:0x038d, B:99:0x0390, B:101:0x03b3, B:103:0x03be, B:107:0x0405, B:110:0x0414, B:115:0x047c, B:117:0x0499, B:122:0x04ac, B:127:0x04d3, B:129:0x04f0, B:134:0x051d, B:139:0x054e, B:141:0x056b, B:144:0x0579, B:146:0x05a8, B:148:0x05cf, B:150:0x05da, B:152:0x05ed, B:154:0x05f7, B:156:0x060a, B:159:0x061b, B:160:0x0635, B:161:0x0638, B:163:0x0668, B:167:0x0687, B:170:0x06d6, B:171:0x06f4, B:173:0x070e, B:175:0x075d, B:177:0x0768, B:179:0x0771, B:181:0x077c, B:183:0x0785, B:185:0x0790, B:187:0x079a, B:189:0x07a7, B:191:0x07b9, B:192:0x07c3, B:194:0x07c9, B:196:0x07d9, B:197:0x07f4, B:199:0x07fa, B:201:0x080e, B:203:0x0819, B:205:0x0823, B:207:0x082f, B:209:0x0838, B:211:0x0843, B:213:0x084d, B:214:0x085a, B:216:0x0865, B:218:0x086f, B:220:0x087a, B:222:0x0882, B:224:0x088e, B:226:0x08a4, B:228:0x08ad, B:230:0x08c6, B:232:0x08d6, B:235:0x08df, B:237:0x08f2, B:239:0x0900, B:241:0x0907, B:243:0x091d, B:244:0x0931, B:246:0x0945, B:248:0x094c, B:250:0x0952, B:253:0x0967, B:255:0x097b, B:258:0x099e, B:260:0x09a5, B:262:0x09c0, B:264:0x09c9, B:266:0x0a1f, B:268:0x0a2a, B:270:0x0a33, B:272:0x0a39, B:274:0x0a49, B:275:0x0a52, B:277:0x0a59, B:279:0x0a5f, B:281:0x0a67, B:284:0x0a79, B:286:0x0a91, B:288:0x0aa1, B:289:0x0aaf, B:291:0x0aba, B:293:0x0ad0, B:295:0x0ae0, B:298:0x0aea, B:300:0x0afa, B:302:0x0b50, B:304:0x0b5b, B:305:0x0b6b, B:307:0x0b71, B:309:0x0b81, B:312:0x0b8b, B:314:0x0b94, B:316:0x0ba1, B:318:0x0baa, B:320:0x0bb6, B:322:0x0bc5, B:324:0x0bd1, B:325:0x0c21, B:327:0x0c36, B:329:0x0c41, B:331:0x0c4c, B:333:0x0c54, B:337:0x0c6d, B:339:0x0c99, B:343:0x0cb7, B:345:0x0cc3, B:347:0x0ccc, B:349:0x0ce6), top: B:358:0x018a, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01ee A[Catch: all -> 0x0d19, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0d19, blocks: (B:39:0x018a, B:41:0x01a2, B:43:0x01b0, B:48:0x01ca, B:56:0x01ee, B:58:0x01ff, B:61:0x021e, B:67:0x0253, B:69:0x025e, B:73:0x0274, B:75:0x0294, B:77:0x02a5, B:79:0x02ab, B:81:0x02bd, B:83:0x02c9, B:84:0x02d4, B:86:0x02e0, B:88:0x02ee, B:91:0x02fb, B:93:0x032e, B:95:0x0353, B:97:0x0379, B:98:0x038d, B:99:0x0390, B:101:0x03b3, B:103:0x03be, B:107:0x0405, B:110:0x0414, B:115:0x047c, B:117:0x0499, B:122:0x04ac, B:127:0x04d3, B:129:0x04f0, B:134:0x051d, B:139:0x054e, B:141:0x056b, B:144:0x0579, B:146:0x05a8, B:148:0x05cf, B:150:0x05da, B:152:0x05ed, B:154:0x05f7, B:156:0x060a, B:159:0x061b, B:160:0x0635, B:161:0x0638, B:163:0x0668, B:167:0x0687, B:170:0x06d6, B:171:0x06f4, B:173:0x070e, B:175:0x075d, B:177:0x0768, B:179:0x0771, B:181:0x077c, B:183:0x0785, B:185:0x0790, B:187:0x079a, B:189:0x07a7, B:191:0x07b9, B:192:0x07c3, B:194:0x07c9, B:196:0x07d9, B:197:0x07f4, B:199:0x07fa, B:201:0x080e, B:203:0x0819, B:205:0x0823, B:207:0x082f, B:209:0x0838, B:211:0x0843, B:213:0x084d, B:214:0x085a, B:216:0x0865, B:218:0x086f, B:220:0x087a, B:222:0x0882, B:224:0x088e, B:226:0x08a4, B:228:0x08ad, B:230:0x08c6, B:232:0x08d6, B:235:0x08df, B:237:0x08f2, B:239:0x0900, B:241:0x0907, B:243:0x091d, B:244:0x0931, B:246:0x0945, B:248:0x094c, B:250:0x0952, B:253:0x0967, B:255:0x097b, B:258:0x099e, B:260:0x09a5, B:262:0x09c0, B:264:0x09c9, B:266:0x0a1f, B:268:0x0a2a, B:270:0x0a33, B:272:0x0a39, B:274:0x0a49, B:275:0x0a52, B:277:0x0a59, B:279:0x0a5f, B:281:0x0a67, B:284:0x0a79, B:286:0x0a91, B:288:0x0aa1, B:289:0x0aaf, B:291:0x0aba, B:293:0x0ad0, B:295:0x0ae0, B:298:0x0aea, B:300:0x0afa, B:302:0x0b50, B:304:0x0b5b, B:305:0x0b6b, B:307:0x0b71, B:309:0x0b81, B:312:0x0b8b, B:314:0x0b94, B:316:0x0ba1, B:318:0x0baa, B:320:0x0bb6, B:322:0x0bc5, B:324:0x0bd1, B:325:0x0c21, B:327:0x0c36, B:329:0x0c41, B:331:0x0c4c, B:333:0x0c54, B:337:0x0c6d, B:339:0x0c99, B:343:0x0cb7, B:345:0x0cc3, B:347:0x0ccc, B:349:0x0ce6), top: B:358:0x018a, inners: #0, #2 }] */
    /* JADX WARN: Type inference failed for: r0v546, types: [double] */
    /* JADX WARN: Type inference failed for: r0v560, types: [long] */
    /* JADX WARN: Type inference failed for: r24v10 */
    /* JADX WARN: Type inference failed for: r24v11 */
    /* JADX WARN: Type inference failed for: r24v6, types: [long] */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1, types: [double] */
    /* JADX WARN: Type inference failed for: r31v4 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8805c(com.google.android.gms.measurement.internal.zzaq r17, com.google.android.gms.measurement.internal.zzn r18) {
        /*
            Method dump skipped, instructions count: 3369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8805c(com.google.android.gms.measurement.internal.zzaq, com.google.android.gms.measurement.internal.zzn):void");
    }

    /* renamed from: c */
    public final boolean m8806c() {
        m8780y();
        m8787r();
        return m8794k().m25102D() || !TextUtils.isEmpty(m8794k().m25043t());
    }

    /* renamed from: d */
    public final String m8802d(zzn zznVar) {
        try {
            return (String) this.f30119j.mo8795j().m9092a(new CallableC4804r7(this, zznVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.f30119j.mo8789p().m9152q().m9141a("Failed to get app instance id. appId", zzeq.m9157a(zznVar.f30154a), e);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x022e  */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7, types: [long] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 5 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8803d() {
        /*
            Method dump skipped, instructions count: 795
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8803d():void");
    }

    /* renamed from: e */
    public final void m8801e() {
        m8780y();
        if (this.f30126q || this.f30127r || this.f30128s) {
            this.f30119j.mo8789p().m9144y().m9140a("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f30126q), Boolean.valueOf(this.f30127r), Boolean.valueOf(this.f30128s));
            return;
        }
        this.f30119j.mo8789p().m9144y().m9143a("Stopping uploading service(s)");
        List<Runnable> list = this.f30123n;
        if (list != null) {
            for (Runnable runnable : list) {
                runnable.run();
            }
            this.f30123n.clear();
        }
    }

    /* renamed from: e */
    public final boolean m8800e(zzn zznVar) {
        return (!zznv.m9491a() || !this.f30119j.m9062b().m9342e(zznVar.f30154a, zzas.f29876j0)) ? !TextUtils.isEmpty(zznVar.f30155b) || !TextUtils.isEmpty(zznVar.f30171r) : !TextUtils.isEmpty(zznVar.f30155b) || !TextUtils.isEmpty(zznVar.f30175v) || !TextUtils.isEmpty(zznVar.f30171r);
    }

    @VisibleForTesting
    /* renamed from: f */
    public final boolean m8799f() {
        FileLock fileLock;
        m8780y();
        if (!this.f30119j.m9062b().m9354a(zzas.f29874i0) || (fileLock = this.f30129t) == null || !fileLock.isValid()) {
            try {
                FileChannel channel = new RandomAccessFile(new File(this.f30119j.mo8846B().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.f30130u = channel;
                FileLock tryLock = channel.tryLock();
                this.f30129t = tryLock;
                if (tryLock != null) {
                    this.f30119j.mo8789p().m9144y().m9143a("Storage concurrent access okay");
                    return true;
                }
                this.f30119j.mo8789p().m9152q().m9143a("Storage concurrent data access panic");
                return false;
            } catch (FileNotFoundException e) {
                this.f30119j.mo8789p().m9152q().m9142a("Failed to acquire storage lock", e);
                return false;
            } catch (IOException e2) {
                this.f30119j.mo8789p().m9152q().m9142a("Failed to access storage lock file", e2);
                return false;
            } catch (OverlappingFileLockException e3) {
                this.f30119j.mo8789p().m9149t().m9142a("Storage lock already acquired", e3);
                return false;
            }
        } else {
            this.f30119j.mo8789p().m9144y().m9143a("Storage concurrent access okay");
            return true;
        }
    }

    /* renamed from: g */
    public final zzab m8798g() {
        return this.f30119j.m9062b();
    }

    /* renamed from: h */
    public final zzfo m8797h() {
        m8814b(this.f30110a);
        return this.f30110a;
    }

    /* renamed from: i */
    public final zzex m8796i() {
        m8814b(this.f30111b);
        return this.f30111b;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: j */
    public final zzfr mo8795j() {
        return this.f30119j.mo8795j();
    }

    /* renamed from: k */
    public final C4657c m8794k() {
        m8814b(this.f30112c);
        return this.f30112c;
    }

    /* renamed from: l */
    public final C4646a8 m8793l() {
        m8814b(this.f30115f);
        return this.f30115f;
    }

    /* renamed from: m */
    public final C4811s5 m8792m() {
        m8814b(this.f30117h);
        return this.f30117h;
    }

    /* renamed from: n */
    public final zzkr m8791n() {
        m8814b(this.f30116g);
        return this.f30116g;
    }

    /* renamed from: o */
    public final zzeo m8790o() {
        return this.f30119j.m9043t();
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: p */
    public final zzeq mo8789p() {
        return this.f30119j.mo8789p();
    }

    /* renamed from: q */
    public final zzkv m8788q() {
        return this.f30119j.m9044s();
    }

    /* renamed from: r */
    public final void m8787r() {
        if (!this.f30120k) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x01b9, code lost:
        if (m8822a(r0).m9309c() != false) goto L_0x01bc;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0306 A[Catch: all -> 0x0544, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0544, blocks: (B:3:0x000d, B:5:0x001c, B:8:0x0036, B:10:0x003d, B:13:0x0057, B:15:0x0060, B:18:0x006e, B:25:0x0084, B:28:0x009e, B:30:0x00a8, B:33:0x00c6, B:37:0x00f0, B:39:0x00fc, B:40:0x0102, B:43:0x0118, B:45:0x0133, B:47:0x0143, B:49:0x014e, B:51:0x015a, B:53:0x0196, B:55:0x019c, B:59:0x01b0, B:62:0x01be, B:64:0x01c5, B:66:0x01cd, B:68:0x01e9, B:74:0x0202, B:76:0x020d, B:78:0x022b, B:80:0x0237, B:82:0x024b, B:84:0x0277, B:86:0x027d, B:88:0x028d, B:93:0x02a0, B:95:0x02a6, B:97:0x02b6, B:102:0x02ce, B:104:0x02d4, B:106:0x02e4, B:114:0x0306, B:116:0x0354, B:117:0x035a, B:119:0x0360, B:123:0x0375, B:126:0x0386, B:128:0x038d, B:130:0x039e, B:132:0x03bf, B:133:0x03cb, B:135:0x03d9, B:137:0x03f3, B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484, B:156:0x04f3, B:157:0x050d, B:159:0x0528, B:161:0x0535), top: B:169:0x000d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03d9 A[Catch: all -> 0x0544, TRY_LEAVE, TryCatch #0 {all -> 0x0544, blocks: (B:3:0x000d, B:5:0x001c, B:8:0x0036, B:10:0x003d, B:13:0x0057, B:15:0x0060, B:18:0x006e, B:25:0x0084, B:28:0x009e, B:30:0x00a8, B:33:0x00c6, B:37:0x00f0, B:39:0x00fc, B:40:0x0102, B:43:0x0118, B:45:0x0133, B:47:0x0143, B:49:0x014e, B:51:0x015a, B:53:0x0196, B:55:0x019c, B:59:0x01b0, B:62:0x01be, B:64:0x01c5, B:66:0x01cd, B:68:0x01e9, B:74:0x0202, B:76:0x020d, B:78:0x022b, B:80:0x0237, B:82:0x024b, B:84:0x0277, B:86:0x027d, B:88:0x028d, B:93:0x02a0, B:95:0x02a6, B:97:0x02b6, B:102:0x02ce, B:104:0x02d4, B:106:0x02e4, B:114:0x0306, B:116:0x0354, B:117:0x035a, B:119:0x0360, B:123:0x0375, B:126:0x0386, B:128:0x038d, B:130:0x039e, B:132:0x03bf, B:133:0x03cb, B:135:0x03d9, B:137:0x03f3, B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484, B:156:0x04f3, B:157:0x050d, B:159:0x0528, B:161:0x0535), top: B:169:0x000d, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x043e A[Catch: MalformedURLException -> 0x04f2, all -> 0x0544, TRY_LEAVE, TryCatch #1 {MalformedURLException -> 0x04f2, blocks: (B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484), top: B:170:0x0414, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0451 A[Catch: MalformedURLException -> 0x04f2, all -> 0x0544, TRY_ENTER, TryCatch #1 {MalformedURLException -> 0x04f2, blocks: (B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484), top: B:170:0x0414, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0479 A[Catch: MalformedURLException -> 0x04f2, all -> 0x0544, TRY_ENTER, TryCatch #1 {MalformedURLException -> 0x04f2, blocks: (B:138:0x0414, B:139:0x0417, B:144:0x0432, B:146:0x043e, B:147:0x0451, B:149:0x0463, B:152:0x0479, B:154:0x0484), top: B:170:0x0414, outer: #0 }] */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8786s() {
        /*
            Method dump skipped, instructions count: 1366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkl.m8786s():void");
    }

    @VisibleForTesting
    /* renamed from: t */
    public final void m8785t() {
        m8780y();
        m8787r();
        if (!this.f30121l) {
            this.f30121l = true;
            if (m8799f()) {
                int a = m8818a(this.f30130u);
                int E = this.f30119j.m9074F().m9180E();
                m8780y();
                if (a > E) {
                    this.f30119j.mo8789p().m9152q().m9141a("Panic: can't downgrade version. Previous, current version", Integer.valueOf(a), Integer.valueOf(E));
                } else if (a >= E) {
                } else {
                    if (m8842a(E, this.f30130u)) {
                        this.f30119j.mo8789p().m9144y().m9141a("Storage version upgraded. Previous, current version", Integer.valueOf(a), Integer.valueOf(E));
                    } else {
                        this.f30119j.mo8789p().m9152q().m9141a("Storage version upgrade failed. Previous, current version", Integer.valueOf(a), Integer.valueOf(E));
                    }
                }
            }
        }
    }

    /* renamed from: u */
    public final void m8784u() {
        this.f30125p++;
    }

    /* renamed from: v */
    public final zzfu m8783v() {
        return this.f30119j;
    }

    /* renamed from: w */
    public final C4719i3 m8782w() {
        C4719i3 i3Var = this.f30113d;
        if (i3Var != null) {
            return i3Var;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    /* renamed from: x */
    public final zzkh m8781x() {
        m8814b(this.f30114e);
        return this.f30114e;
    }

    /* renamed from: y */
    public final void m8780y() {
        this.f30119j.mo8795j().mo9085c();
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4765n4
    /* renamed from: z */
    public final Clock mo8779z() {
        return this.f30119j.mo8779z();
    }
}
