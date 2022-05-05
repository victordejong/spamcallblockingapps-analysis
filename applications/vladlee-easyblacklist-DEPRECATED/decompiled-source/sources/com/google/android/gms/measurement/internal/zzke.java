package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.p026b.C0529a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzbo;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzkm;
import com.google.android.gms.internal.measurement.zzkn;
import com.google.android.gms.internal.measurement.zzle;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzke.class */
public class zzke implements AbstractC2763eq {

    /* renamed from: a */
    private static volatile zzke f17274a;

    /* renamed from: b */
    private zzfu f17275b;

    /* renamed from: c */
    private zzfa f17276c;

    /* renamed from: d */
    private C2692c f17277d;

    /* renamed from: e */
    private C2732dm f17278e;

    /* renamed from: f */
    private zzka f17279f;

    /* renamed from: g */
    private C2847ht f17280g;

    /* renamed from: h */
    private final zzki f17281h;

    /* renamed from: i */
    private C2792fs f17282i;

    /* renamed from: j */
    private final zzga f17283j;

    /* renamed from: k */
    private boolean f17284k;

    /* renamed from: l */
    private boolean f17285l;

    /* renamed from: m */
    private boolean f17286m;

    /* renamed from: n */
    private long f17287n;

    /* renamed from: o */
    private List<Runnable> f17288o;

    /* renamed from: p */
    private int f17289p;

    /* renamed from: q */
    private int f17290q;

    /* renamed from: r */
    private boolean f17291r;

    /* renamed from: s */
    private boolean f17292s;

    /* renamed from: t */
    private boolean f17293t;

    /* renamed from: u */
    private FileLock f17294u;

    /* renamed from: v */
    private FileChannel f17295v;

    /* renamed from: w */
    private List<Long> f17296w;

    /* renamed from: x */
    private List<Long> f17297x;

    /* renamed from: y */
    private long f17298y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.measurement.internal.zzke$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzke$a.class */
    public final class C2873a implements AbstractC2746e {

        /* renamed from: a */
        zzbr.zzg f17299a;

        /* renamed from: b */
        List<Long> f17300b;

        /* renamed from: c */
        List<zzbr.zzc> f17301c;

        /* renamed from: d */
        private long f17302d;

        private C2873a() {
        }

        /* synthetic */ C2873a(zzke zzkeVar, byte b) {
            this();
        }

        /* renamed from: a */
        private static long m1677a(zzbr.zzc zzcVar) {
            return ((zzcVar.zze() / 1000) / 60) / 60;
        }

        @Override // com.google.android.gms.measurement.internal.AbstractC2746e
        /* renamed from: a */
        public final void mo1676a(zzbr.zzg zzgVar) {
            Preconditions.checkNotNull(zzgVar);
            this.f17299a = zzgVar;
        }

        @Override // com.google.android.gms.measurement.internal.AbstractC2746e
        /* renamed from: a */
        public final boolean mo1678a(long j, zzbr.zzc zzcVar) {
            Preconditions.checkNotNull(zzcVar);
            if (this.f17301c == null) {
                this.f17301c = new ArrayList();
            }
            if (this.f17300b == null) {
                this.f17300b = new ArrayList();
            }
            if (this.f17301c.size() > 0 && m1677a(this.f17301c.get(0)) != m1677a(zzcVar)) {
                return false;
            }
            long zzbn = this.f17302d + zzcVar.zzbn();
            if (zzbn >= Math.max(0, zzap.zzi.zza(null).intValue())) {
                return false;
            }
            this.f17302d = zzbn;
            this.f17301c.add(zzcVar);
            this.f17300b.add(Long.valueOf(j));
            return this.f17301c.size() < Math.max(1, zzap.zzj.zza(null).intValue());
        }
    }

    private zzke(zzkj zzkjVar) {
        this(zzkjVar, (byte) 0);
    }

    private zzke(zzkj zzkjVar, byte b) {
        this.f17284k = false;
        Preconditions.checkNotNull(zzkjVar);
        this.f17283j = zzga.zza(zzkjVar.f17304a, null);
        this.f17298y = -1L;
        zzki zzkiVar = new zzki(this);
        zzkiVar.zzal();
        this.f17281h = zzkiVar;
        zzfa zzfaVar = new zzfa(this);
        zzfaVar.zzal();
        this.f17276c = zzfaVar;
        zzfu zzfuVar = new zzfu(this);
        zzfuVar.zzal();
        this.f17275b = zzfuVar;
        this.f17283j.zzq().zza(new RunnableC2839hl(this, zzkjVar));
    }

    /* renamed from: a */
    private final int m1705a(FileChannel fileChannel) {
        int read;
        m1685k();
        int i = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f17283j.zzr().zzf().zza("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            read = fileChannel.read(allocate);
        } catch (IOException e) {
            this.f17283j.zzr().zzf().zza("Failed to read from channel", e);
        }
        if (read == 4) {
            allocate.flip();
            i = allocate.getInt();
            return i;
        } else if (read == -1) {
            return 0;
        } else {
            this.f17283j.zzr().zzi().zza("Unexpected data length. Bytes read", Integer.valueOf(read));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0281  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.C2744dy m1711a(com.google.android.gms.measurement.internal.zzm r6, com.google.android.gms.measurement.internal.C2744dy r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1711a(com.google.android.gms.measurement.internal.zzm, com.google.android.gms.measurement.internal.dy, java.lang.String):com.google.android.gms.measurement.internal.dy");
    }

    /* renamed from: a */
    private final zzm m1724a(Context context, String str, String str2, boolean z, boolean z2, boolean z3, long j, String str3, String str4) {
        String str5;
        String str6;
        int i;
        String str7;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            this.f17283j.zzr().zzf().zza("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            str5 = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException e) {
            this.f17283j.zzr().zzf().zza("Error retrieving installer package name. appId", zzew.m1855a(str));
            str5 = "Unknown";
        }
        if (str5 == null) {
            str6 = "manual_install";
        } else {
            str6 = str5;
            if ("com.android.vending".equals(str5)) {
                str6 = "";
            }
        }
        String str8 = "Unknown";
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 0);
            if (packageInfo != null) {
                CharSequence applicationLabel = Wrappers.packageManager(context).getApplicationLabel(str);
                str8 = "Unknown";
                if (!TextUtils.isEmpty(applicationLabel)) {
                    str8 = applicationLabel.toString();
                }
                str7 = packageInfo.versionName;
                i = packageInfo.versionCode;
            } else {
                str7 = "Unknown";
                i = Integer.MIN_VALUE;
            }
            return new zzm(str, str2, str7, i, str6, this.f17283j.zzb().zze(), this.f17283j.zzi().m1642a(context, str), (String) null, z, false, "", 0L, j, 0, z2, z3, false, str3, (Boolean) null, 0L, (List<String>) null, (!zzle.zzb() || !this.f17283j.zzb().zze(str, zzap.zzcc)) ? null : str4);
        } catch (PackageManager.NameNotFoundException e2) {
            this.f17283j.zzr().zzf().zza("Error retrieving newly installed package info. appId, appName", zzew.m1855a(str), str8);
            return null;
        }
    }

    /* renamed from: a */
    private final zzm m1707a(String str) {
        C2744dy b = zze().m2184b(str);
        if (b == null || TextUtils.isEmpty(b.m2077l())) {
            this.f17283j.zzr().zzw().zza("No app data available; dropping", str);
            return null;
        }
        Boolean b2 = m1702b(b);
        if (b2 == null || b2.booleanValue()) {
            return new zzm(str, b.m2096e(), b.m2077l(), b.m2075m(), b.m2073n(), b.m2071o(), b.m2069p(), (String) null, b.m2066r(), false, b.m2084i(), b.m2118E(), 0L, 0, b.m2117F(), b.m2116G(), false, b.m2093f(), b.m2115H(), b.m2067q(), b.m2114I(), (!zzle.zzb() || !this.f17283j.zzb().zze(str, zzap.zzcc)) ? null : b.m2090g());
        }
        this.f17283j.zzr().zzf().zza("App version does not match; dropping. appId", zzew.m1855a(str));
        return null;
    }

    /* renamed from: a */
    private static void m1723a(zzbr.zzc.zza zzaVar, int i, String str) {
        List<zzbr.zze> zza = zzaVar.zza();
        for (int i2 = 0; i2 < zza.size(); i2++) {
            if ("_err".equals(zza.get(i2).zza())) {
                return;
            }
        }
        zzbr.zze zzeVar = (zzbr.zze) ((zzfd) zzbr.zze.zzh().zza("_err").zza(i).zzu());
        zzaVar.zza(zzeVar).zza((zzbr.zze) ((zzfd) zzbr.zze.zzh().zza("_ev").zzb(str).zzu()));
    }

    /* renamed from: a */
    private static void m1721a(zzbr.zzc.zza zzaVar, String str) {
        List<zzbr.zze> zza = zzaVar.zza();
        for (int i = 0; i < zza.size(); i++) {
            if (str.equals(zza.get(i).zza())) {
                zzaVar.zzb(i);
                return;
            }
        }
    }

    /* renamed from: a */
    private static void m1720a(zzbr.zzg.zza zzaVar) {
        zzaVar.zzb(Long.MAX_VALUE).zzc(Long.MIN_VALUE);
        for (int i = 0; i < zzaVar.zzb(); i++) {
            zzbr.zzc zzb = zzaVar.zzb(i);
            if (zzb.zze() < zzaVar.zzf()) {
                zzaVar.zzb(zzb.zze());
            }
            if (zzb.zze() > zzaVar.zzg()) {
                zzaVar.zzc(zzb.zze());
            }
        }
    }

    /* renamed from: a */
    private final void m1719a(zzbr.zzg.zza zzaVar, long j, boolean z) {
        String str = z ? "_se" : "_lte";
        C2843hp c = zze().m2177c(zzaVar.zzj(), str);
        C2843hp hpVar = (c == null || c.f17038e == null) ? new C2843hp(zzaVar.zzj(), "auto", str, this.f17283j.zzm().currentTimeMillis(), Long.valueOf(j)) : new C2843hp(zzaVar.zzj(), "auto", str, this.f17283j.zzm().currentTimeMillis(), Long.valueOf(((Long) c.f17038e).longValue() + j));
        zzbr.zzk zzkVar = (zzbr.zzk) ((zzfd) zzbr.zzk.zzj().zza(str).zza(this.f17283j.zzm().currentTimeMillis()).zzb(((Long) hpVar.f17038e).longValue()).zzu());
        boolean z2 = false;
        int a = zzki.m1667a(zzaVar, str);
        if (a >= 0) {
            zzaVar.zza(a, zzkVar);
            z2 = true;
        }
        if (!z2) {
            zzaVar.zza(zzkVar);
        }
        if (j > 0) {
            zze().m2200a(hpVar);
            this.f17283j.zzr().zzw().zza("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", hpVar.f17038e);
        }
    }

    /* renamed from: a */
    private final void m1718a(C2744dy dyVar) {
        C0529a aVar;
        m1685k();
        if (!zzle.zzb() || !this.f17283j.zzb().zze(dyVar.m2103c(), zzap.zzcc)) {
            if (TextUtils.isEmpty(dyVar.m2096e()) && TextUtils.isEmpty(dyVar.m2093f())) {
                m1706a(dyVar.m2103c(), 204, null, null, null);
                return;
            }
        } else if (TextUtils.isEmpty(dyVar.m2096e()) && TextUtils.isEmpty(dyVar.m2090g()) && TextUtils.isEmpty(dyVar.m2093f())) {
            m1706a(dyVar.m2103c(), 204, null, null, null);
            return;
        }
        String zza = this.f17283j.zzb().zza(dyVar);
        try {
            URL url = new URL(zza);
            this.f17283j.zzr().zzx().zza("Fetching remote configuration", dyVar.m2103c());
            zzbo.zzb a = zzc().m1829a(dyVar.m2103c());
            String b = zzc().m1824b(dyVar.m2103c());
            if (a == null || TextUtils.isEmpty(b)) {
                aVar = null;
            } else {
                aVar = new C0529a();
                aVar.put("If-Modified-Since", b);
            }
            this.f17291r = true;
            zzfa zzd = zzd();
            String c = dyVar.m2103c();
            C2840hm hmVar = new C2840hm(this);
            zzd.zzd();
            zzd.m2024w();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(hmVar);
            zzd.zzq().zzb(new RunnableC2733dn(zzd, c, url, null, aVar, hmVar));
        } catch (MalformedURLException e) {
            this.f17283j.zzr().zzf().zza("Failed to parse config URL. Not fetching. appId", zzew.m1855a(dyVar.m2103c()), zza);
        }
    }

    /* renamed from: a */
    private static void m1717a(AbstractC2837hj hjVar) {
        if (hjVar == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!hjVar.m2025v()) {
            String valueOf = String.valueOf(hjVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1714a(zzke zzkeVar) {
        zzkeVar.f17283j.zzq().zzd();
        C2692c cVar = new C2692c(zzkeVar);
        cVar.zzal();
        zzkeVar.f17277d = cVar;
        zzkeVar.f17283j.zzb().m1600a(zzkeVar.f17275b);
        C2847ht htVar = new C2847ht(zzkeVar);
        htVar.zzal();
        zzkeVar.f17280g = htVar;
        C2792fs fsVar = new C2792fs(zzkeVar);
        fsVar.zzal();
        zzkeVar.f17282i = fsVar;
        zzka zzkaVar = new zzka(zzkeVar);
        zzkaVar.zzal();
        zzkeVar.f17279f = zzkaVar;
        zzkeVar.f17278e = new C2732dm(zzkeVar);
        if (zzkeVar.f17289p != zzkeVar.f17290q) {
            zzkeVar.f17283j.zzr().zzf().zza("Not all upload components initialized", Integer.valueOf(zzkeVar.f17289p), Integer.valueOf(zzkeVar.f17290q));
        }
        zzkeVar.f17284k = true;
    }

    /* renamed from: a */
    private final boolean m1726a(int i, FileChannel fileChannel) {
        m1685k();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.f17283j.zzr().zzf().zza("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            if (this.f17283j.zzb().zza(zzap.zzcp) && Build.VERSION.SDK_INT <= 19) {
                fileChannel.position(0L);
            }
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            this.f17283j.zzr().zzf().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            this.f17283j.zzr().zzf().zza("Failed to write to channel", e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x03e6, code lost:
        if (r31 != null) goto L_0x035e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0495, code lost:
        if (r27 != null) goto L_0x042a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0104, code lost:
        if (r27 != null) goto L_0x0107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0107, code lost:
        r27.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01d8, code lost:
        if (r27 != null) goto L_0x0107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x035b, code lost:
        if (r31 != null) goto L_0x035e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03b9, code lost:
        if (r31 != null) goto L_0x035e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:134:0x04a3 A[Catch: all -> 0x182b, TryCatch #8 {all -> 0x182b, blocks: (B:3:0x0009, B:30:0x0107, B:64:0x025d, B:90:0x035e, B:114:0x042a, B:132:0x049b, B:134:0x04a3, B:141:0x04c1, B:143:0x0504, B:146:0x051c, B:148:0x0551, B:150:0x058d, B:157:0x05b0, B:159:0x05be, B:162:0x05f3, B:164:0x060e, B:171:0x0642, B:175:0x0653, B:179:0x0664, B:196:0x06bb, B:199:0x06c9, B:201:0x06dc, B:204:0x070b, B:206:0x071e, B:213:0x075e, B:216:0x0795, B:218:0x07c8, B:220:0x07f9, B:223:0x0813, B:229:0x083b, B:231:0x0870, B:233:0x0897, B:235:0x08a1, B:237:0x08b8, B:240:0x08d4, B:249:0x0905, B:253:0x0921, B:255:0x0958, B:259:0x098c, B:261:0x09a4, B:263:0x09b0, B:268:0x09d3, B:275:0x0a03, B:277:0x0a15, B:279:0x0a27, B:283:0x0a60, B:288:0x0a83, B:290:0x0a8d, B:293:0x0aa1, B:297:0x0ab6, B:298:0x0ae3, B:300:0x0afb, B:302:0x0b09, B:306:0x0b27, B:308:0x0b3c, B:310:0x0b54, B:315:0x0b7e, B:317:0x0b8c, B:321:0x0ba9, B:323:0x0bbe, B:325:0x0bd6, B:329:0x0c15, B:333:0x0c3d, B:335:0x0c4b, B:337:0x0c60, B:343:0x0c98, B:345:0x0cad, B:350:0x0cea, B:352:0x0cf8, B:354:0x0d00, B:356:0x0d11, B:358:0x0d20, B:359:0x0d2a, B:361:0x0d49, B:363:0x0d5a, B:364:0x0d6a, B:365:0x0d75, B:367:0x0d8b, B:368:0x0d98, B:376:0x0dd4, B:378:0x0deb, B:380:0x0dfb, B:382:0x0e15, B:385:0x0e34, B:387:0x0e3c, B:392:0x0e67, B:394:0x0e71, B:398:0x0e95, B:400:0x0eb7, B:402:0x0ec5, B:404:0x0ecd, B:411:0x0ef1, B:412:0x0f00, B:414:0x0f06, B:416:0x0f1b, B:423:0x0f34, B:425:0x0f43, B:426:0x0f69, B:427:0x0f75, B:429:0x0f8a, B:431:0x0f9a, B:433:0x0fae, B:435:0x0fd2, B:437:0x0fe6, B:439:0x0fee, B:441:0x0ff9, B:443:0x102d, B:445:0x1037, B:447:0x104a, B:453:0x1068, B:455:0x1071, B:457:0x1085, B:459:0x108c, B:468:0x1138, B:471:0x1169, B:473:0x118a, B:475:0x1190, B:477:0x119d, B:479:0x11b0, B:481:0x11b6, B:483:0x11c1, B:485:0x11d3, B:487:0x11e5, B:492:0x1239, B:494:0x1247, B:496:0x124f, B:498:0x1269, B:500:0x1271, B:507:0x1292, B:511:0x12b2, B:515:0x12fa, B:518:0x1318, B:520:0x134e, B:521:0x1373, B:530:0x13c3, B:532:0x13dd, B:534:0x13e5, B:536:0x13ed, B:539:0x13f7, B:542:0x141e, B:544:0x1427, B:546:0x1448, B:548:0x1450, B:550:0x145f, B:553:0x1483, B:585:0x159e, B:587:0x15b3, B:589:0x15ba, B:591:0x15d2, B:592:0x15f0, B:594:0x15f8, B:597:0x1604, B:598:0x160e, B:600:0x1616, B:606:0x162e, B:607:0x1638, B:609:0x1640, B:611:0x166f, B:612:0x167a, B:614:0x1681, B:616:0x168b, B:618:0x1691, B:620:0x16af, B:623:0x16ba, B:624:0x16c8, B:626:0x16d6, B:627:0x16e2, B:629:0x16fe, B:631:0x1713, B:633:0x173f, B:637:0x1750, B:639:0x175b, B:640:0x1774, B:642:0x179c, B:644:0x17ba, B:646:0x17c8, B:648:0x17e1, B:650:0x17f7, B:653:0x1806, B:660:0x1821, B:662:0x182a), top: B:673:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04c1 A[Catch: all -> 0x182b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x182b, blocks: (B:3:0x0009, B:30:0x0107, B:64:0x025d, B:90:0x035e, B:114:0x042a, B:132:0x049b, B:134:0x04a3, B:141:0x04c1, B:143:0x0504, B:146:0x051c, B:148:0x0551, B:150:0x058d, B:157:0x05b0, B:159:0x05be, B:162:0x05f3, B:164:0x060e, B:171:0x0642, B:175:0x0653, B:179:0x0664, B:196:0x06bb, B:199:0x06c9, B:201:0x06dc, B:204:0x070b, B:206:0x071e, B:213:0x075e, B:216:0x0795, B:218:0x07c8, B:220:0x07f9, B:223:0x0813, B:229:0x083b, B:231:0x0870, B:233:0x0897, B:235:0x08a1, B:237:0x08b8, B:240:0x08d4, B:249:0x0905, B:253:0x0921, B:255:0x0958, B:259:0x098c, B:261:0x09a4, B:263:0x09b0, B:268:0x09d3, B:275:0x0a03, B:277:0x0a15, B:279:0x0a27, B:283:0x0a60, B:288:0x0a83, B:290:0x0a8d, B:293:0x0aa1, B:297:0x0ab6, B:298:0x0ae3, B:300:0x0afb, B:302:0x0b09, B:306:0x0b27, B:308:0x0b3c, B:310:0x0b54, B:315:0x0b7e, B:317:0x0b8c, B:321:0x0ba9, B:323:0x0bbe, B:325:0x0bd6, B:329:0x0c15, B:333:0x0c3d, B:335:0x0c4b, B:337:0x0c60, B:343:0x0c98, B:345:0x0cad, B:350:0x0cea, B:352:0x0cf8, B:354:0x0d00, B:356:0x0d11, B:358:0x0d20, B:359:0x0d2a, B:361:0x0d49, B:363:0x0d5a, B:364:0x0d6a, B:365:0x0d75, B:367:0x0d8b, B:368:0x0d98, B:376:0x0dd4, B:378:0x0deb, B:380:0x0dfb, B:382:0x0e15, B:385:0x0e34, B:387:0x0e3c, B:392:0x0e67, B:394:0x0e71, B:398:0x0e95, B:400:0x0eb7, B:402:0x0ec5, B:404:0x0ecd, B:411:0x0ef1, B:412:0x0f00, B:414:0x0f06, B:416:0x0f1b, B:423:0x0f34, B:425:0x0f43, B:426:0x0f69, B:427:0x0f75, B:429:0x0f8a, B:431:0x0f9a, B:433:0x0fae, B:435:0x0fd2, B:437:0x0fe6, B:439:0x0fee, B:441:0x0ff9, B:443:0x102d, B:445:0x1037, B:447:0x104a, B:453:0x1068, B:455:0x1071, B:457:0x1085, B:459:0x108c, B:468:0x1138, B:471:0x1169, B:473:0x118a, B:475:0x1190, B:477:0x119d, B:479:0x11b0, B:481:0x11b6, B:483:0x11c1, B:485:0x11d3, B:487:0x11e5, B:492:0x1239, B:494:0x1247, B:496:0x124f, B:498:0x1269, B:500:0x1271, B:507:0x1292, B:511:0x12b2, B:515:0x12fa, B:518:0x1318, B:520:0x134e, B:521:0x1373, B:530:0x13c3, B:532:0x13dd, B:534:0x13e5, B:536:0x13ed, B:539:0x13f7, B:542:0x141e, B:544:0x1427, B:546:0x1448, B:548:0x1450, B:550:0x145f, B:553:0x1483, B:585:0x159e, B:587:0x15b3, B:589:0x15ba, B:591:0x15d2, B:592:0x15f0, B:594:0x15f8, B:597:0x1604, B:598:0x160e, B:600:0x1616, B:606:0x162e, B:607:0x1638, B:609:0x1640, B:611:0x166f, B:612:0x167a, B:614:0x1681, B:616:0x168b, B:618:0x1691, B:620:0x16af, B:623:0x16ba, B:624:0x16c8, B:626:0x16d6, B:627:0x16e2, B:629:0x16fe, B:631:0x1713, B:633:0x173f, B:637:0x1750, B:639:0x175b, B:640:0x1774, B:642:0x179c, B:644:0x17ba, B:646:0x17c8, B:648:0x17e1, B:650:0x17f7, B:653:0x1806, B:660:0x1821, B:662:0x182a), top: B:673:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x069a  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x098c A[Catch: all -> 0x182b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x182b, blocks: (B:3:0x0009, B:30:0x0107, B:64:0x025d, B:90:0x035e, B:114:0x042a, B:132:0x049b, B:134:0x04a3, B:141:0x04c1, B:143:0x0504, B:146:0x051c, B:148:0x0551, B:150:0x058d, B:157:0x05b0, B:159:0x05be, B:162:0x05f3, B:164:0x060e, B:171:0x0642, B:175:0x0653, B:179:0x0664, B:196:0x06bb, B:199:0x06c9, B:201:0x06dc, B:204:0x070b, B:206:0x071e, B:213:0x075e, B:216:0x0795, B:218:0x07c8, B:220:0x07f9, B:223:0x0813, B:229:0x083b, B:231:0x0870, B:233:0x0897, B:235:0x08a1, B:237:0x08b8, B:240:0x08d4, B:249:0x0905, B:253:0x0921, B:255:0x0958, B:259:0x098c, B:261:0x09a4, B:263:0x09b0, B:268:0x09d3, B:275:0x0a03, B:277:0x0a15, B:279:0x0a27, B:283:0x0a60, B:288:0x0a83, B:290:0x0a8d, B:293:0x0aa1, B:297:0x0ab6, B:298:0x0ae3, B:300:0x0afb, B:302:0x0b09, B:306:0x0b27, B:308:0x0b3c, B:310:0x0b54, B:315:0x0b7e, B:317:0x0b8c, B:321:0x0ba9, B:323:0x0bbe, B:325:0x0bd6, B:329:0x0c15, B:333:0x0c3d, B:335:0x0c4b, B:337:0x0c60, B:343:0x0c98, B:345:0x0cad, B:350:0x0cea, B:352:0x0cf8, B:354:0x0d00, B:356:0x0d11, B:358:0x0d20, B:359:0x0d2a, B:361:0x0d49, B:363:0x0d5a, B:364:0x0d6a, B:365:0x0d75, B:367:0x0d8b, B:368:0x0d98, B:376:0x0dd4, B:378:0x0deb, B:380:0x0dfb, B:382:0x0e15, B:385:0x0e34, B:387:0x0e3c, B:392:0x0e67, B:394:0x0e71, B:398:0x0e95, B:400:0x0eb7, B:402:0x0ec5, B:404:0x0ecd, B:411:0x0ef1, B:412:0x0f00, B:414:0x0f06, B:416:0x0f1b, B:423:0x0f34, B:425:0x0f43, B:426:0x0f69, B:427:0x0f75, B:429:0x0f8a, B:431:0x0f9a, B:433:0x0fae, B:435:0x0fd2, B:437:0x0fe6, B:439:0x0fee, B:441:0x0ff9, B:443:0x102d, B:445:0x1037, B:447:0x104a, B:453:0x1068, B:455:0x1071, B:457:0x1085, B:459:0x108c, B:468:0x1138, B:471:0x1169, B:473:0x118a, B:475:0x1190, B:477:0x119d, B:479:0x11b0, B:481:0x11b6, B:483:0x11c1, B:485:0x11d3, B:487:0x11e5, B:492:0x1239, B:494:0x1247, B:496:0x124f, B:498:0x1269, B:500:0x1271, B:507:0x1292, B:511:0x12b2, B:515:0x12fa, B:518:0x1318, B:520:0x134e, B:521:0x1373, B:530:0x13c3, B:532:0x13dd, B:534:0x13e5, B:536:0x13ed, B:539:0x13f7, B:542:0x141e, B:544:0x1427, B:546:0x1448, B:548:0x1450, B:550:0x145f, B:553:0x1483, B:585:0x159e, B:587:0x15b3, B:589:0x15ba, B:591:0x15d2, B:592:0x15f0, B:594:0x15f8, B:597:0x1604, B:598:0x160e, B:600:0x1616, B:606:0x162e, B:607:0x1638, B:609:0x1640, B:611:0x166f, B:612:0x167a, B:614:0x1681, B:616:0x168b, B:618:0x1691, B:620:0x16af, B:623:0x16ba, B:624:0x16c8, B:626:0x16d6, B:627:0x16e2, B:629:0x16fe, B:631:0x1713, B:633:0x173f, B:637:0x1750, B:639:0x175b, B:640:0x1774, B:642:0x179c, B:644:0x17ba, B:646:0x17c8, B:648:0x17e1, B:650:0x17f7, B:653:0x1806, B:660:0x1821, B:662:0x182a), top: B:673:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0afb A[Catch: all -> 0x182b, TryCatch #8 {all -> 0x182b, blocks: (B:3:0x0009, B:30:0x0107, B:64:0x025d, B:90:0x035e, B:114:0x042a, B:132:0x049b, B:134:0x04a3, B:141:0x04c1, B:143:0x0504, B:146:0x051c, B:148:0x0551, B:150:0x058d, B:157:0x05b0, B:159:0x05be, B:162:0x05f3, B:164:0x060e, B:171:0x0642, B:175:0x0653, B:179:0x0664, B:196:0x06bb, B:199:0x06c9, B:201:0x06dc, B:204:0x070b, B:206:0x071e, B:213:0x075e, B:216:0x0795, B:218:0x07c8, B:220:0x07f9, B:223:0x0813, B:229:0x083b, B:231:0x0870, B:233:0x0897, B:235:0x08a1, B:237:0x08b8, B:240:0x08d4, B:249:0x0905, B:253:0x0921, B:255:0x0958, B:259:0x098c, B:261:0x09a4, B:263:0x09b0, B:268:0x09d3, B:275:0x0a03, B:277:0x0a15, B:279:0x0a27, B:283:0x0a60, B:288:0x0a83, B:290:0x0a8d, B:293:0x0aa1, B:297:0x0ab6, B:298:0x0ae3, B:300:0x0afb, B:302:0x0b09, B:306:0x0b27, B:308:0x0b3c, B:310:0x0b54, B:315:0x0b7e, B:317:0x0b8c, B:321:0x0ba9, B:323:0x0bbe, B:325:0x0bd6, B:329:0x0c15, B:333:0x0c3d, B:335:0x0c4b, B:337:0x0c60, B:343:0x0c98, B:345:0x0cad, B:350:0x0cea, B:352:0x0cf8, B:354:0x0d00, B:356:0x0d11, B:358:0x0d20, B:359:0x0d2a, B:361:0x0d49, B:363:0x0d5a, B:364:0x0d6a, B:365:0x0d75, B:367:0x0d8b, B:368:0x0d98, B:376:0x0dd4, B:378:0x0deb, B:380:0x0dfb, B:382:0x0e15, B:385:0x0e34, B:387:0x0e3c, B:392:0x0e67, B:394:0x0e71, B:398:0x0e95, B:400:0x0eb7, B:402:0x0ec5, B:404:0x0ecd, B:411:0x0ef1, B:412:0x0f00, B:414:0x0f06, B:416:0x0f1b, B:423:0x0f34, B:425:0x0f43, B:426:0x0f69, B:427:0x0f75, B:429:0x0f8a, B:431:0x0f9a, B:433:0x0fae, B:435:0x0fd2, B:437:0x0fe6, B:439:0x0fee, B:441:0x0ff9, B:443:0x102d, B:445:0x1037, B:447:0x104a, B:453:0x1068, B:455:0x1071, B:457:0x1085, B:459:0x108c, B:468:0x1138, B:471:0x1169, B:473:0x118a, B:475:0x1190, B:477:0x119d, B:479:0x11b0, B:481:0x11b6, B:483:0x11c1, B:485:0x11d3, B:487:0x11e5, B:492:0x1239, B:494:0x1247, B:496:0x124f, B:498:0x1269, B:500:0x1271, B:507:0x1292, B:511:0x12b2, B:515:0x12fa, B:518:0x1318, B:520:0x134e, B:521:0x1373, B:530:0x13c3, B:532:0x13dd, B:534:0x13e5, B:536:0x13ed, B:539:0x13f7, B:542:0x141e, B:544:0x1427, B:546:0x1448, B:548:0x1450, B:550:0x145f, B:553:0x1483, B:585:0x159e, B:587:0x15b3, B:589:0x15ba, B:591:0x15d2, B:592:0x15f0, B:594:0x15f8, B:597:0x1604, B:598:0x160e, B:600:0x1616, B:606:0x162e, B:607:0x1638, B:609:0x1640, B:611:0x166f, B:612:0x167a, B:614:0x1681, B:616:0x168b, B:618:0x1691, B:620:0x16af, B:623:0x16ba, B:624:0x16c8, B:626:0x16d6, B:627:0x16e2, B:629:0x16fe, B:631:0x1713, B:633:0x173f, B:637:0x1750, B:639:0x175b, B:640:0x1774, B:642:0x179c, B:644:0x17ba, B:646:0x17c8, B:648:0x17e1, B:650:0x17f7, B:653:0x1806, B:660:0x1821, B:662:0x182a), top: B:673:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0cea A[Catch: all -> 0x182b, TRY_ENTER, TryCatch #8 {all -> 0x182b, blocks: (B:3:0x0009, B:30:0x0107, B:64:0x025d, B:90:0x035e, B:114:0x042a, B:132:0x049b, B:134:0x04a3, B:141:0x04c1, B:143:0x0504, B:146:0x051c, B:148:0x0551, B:150:0x058d, B:157:0x05b0, B:159:0x05be, B:162:0x05f3, B:164:0x060e, B:171:0x0642, B:175:0x0653, B:179:0x0664, B:196:0x06bb, B:199:0x06c9, B:201:0x06dc, B:204:0x070b, B:206:0x071e, B:213:0x075e, B:216:0x0795, B:218:0x07c8, B:220:0x07f9, B:223:0x0813, B:229:0x083b, B:231:0x0870, B:233:0x0897, B:235:0x08a1, B:237:0x08b8, B:240:0x08d4, B:249:0x0905, B:253:0x0921, B:255:0x0958, B:259:0x098c, B:261:0x09a4, B:263:0x09b0, B:268:0x09d3, B:275:0x0a03, B:277:0x0a15, B:279:0x0a27, B:283:0x0a60, B:288:0x0a83, B:290:0x0a8d, B:293:0x0aa1, B:297:0x0ab6, B:298:0x0ae3, B:300:0x0afb, B:302:0x0b09, B:306:0x0b27, B:308:0x0b3c, B:310:0x0b54, B:315:0x0b7e, B:317:0x0b8c, B:321:0x0ba9, B:323:0x0bbe, B:325:0x0bd6, B:329:0x0c15, B:333:0x0c3d, B:335:0x0c4b, B:337:0x0c60, B:343:0x0c98, B:345:0x0cad, B:350:0x0cea, B:352:0x0cf8, B:354:0x0d00, B:356:0x0d11, B:358:0x0d20, B:359:0x0d2a, B:361:0x0d49, B:363:0x0d5a, B:364:0x0d6a, B:365:0x0d75, B:367:0x0d8b, B:368:0x0d98, B:376:0x0dd4, B:378:0x0deb, B:380:0x0dfb, B:382:0x0e15, B:385:0x0e34, B:387:0x0e3c, B:392:0x0e67, B:394:0x0e71, B:398:0x0e95, B:400:0x0eb7, B:402:0x0ec5, B:404:0x0ecd, B:411:0x0ef1, B:412:0x0f00, B:414:0x0f06, B:416:0x0f1b, B:423:0x0f34, B:425:0x0f43, B:426:0x0f69, B:427:0x0f75, B:429:0x0f8a, B:431:0x0f9a, B:433:0x0fae, B:435:0x0fd2, B:437:0x0fe6, B:439:0x0fee, B:441:0x0ff9, B:443:0x102d, B:445:0x1037, B:447:0x104a, B:453:0x1068, B:455:0x1071, B:457:0x1085, B:459:0x108c, B:468:0x1138, B:471:0x1169, B:473:0x118a, B:475:0x1190, B:477:0x119d, B:479:0x11b0, B:481:0x11b6, B:483:0x11c1, B:485:0x11d3, B:487:0x11e5, B:492:0x1239, B:494:0x1247, B:496:0x124f, B:498:0x1269, B:500:0x1271, B:507:0x1292, B:511:0x12b2, B:515:0x12fa, B:518:0x1318, B:520:0x134e, B:521:0x1373, B:530:0x13c3, B:532:0x13dd, B:534:0x13e5, B:536:0x13ed, B:539:0x13f7, B:542:0x141e, B:544:0x1427, B:546:0x1448, B:548:0x1450, B:550:0x145f, B:553:0x1483, B:585:0x159e, B:587:0x15b3, B:589:0x15ba, B:591:0x15d2, B:592:0x15f0, B:594:0x15f8, B:597:0x1604, B:598:0x160e, B:600:0x1616, B:606:0x162e, B:607:0x1638, B:609:0x1640, B:611:0x166f, B:612:0x167a, B:614:0x1681, B:616:0x168b, B:618:0x1691, B:620:0x16af, B:623:0x16ba, B:624:0x16c8, B:626:0x16d6, B:627:0x16e2, B:629:0x16fe, B:631:0x1713, B:633:0x173f, B:637:0x1750, B:639:0x175b, B:640:0x1774, B:642:0x179c, B:644:0x17ba, B:646:0x17c8, B:648:0x17e1, B:650:0x17f7, B:653:0x1806, B:660:0x1821, B:662:0x182a), top: B:673:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0245 A[Catch: all -> 0x0267, SQLiteException -> 0x0274, TRY_ENTER, TRY_LEAVE, TryCatch #21 {SQLiteException -> 0x0274, all -> 0x0267, blocks: (B:62:0x0245, B:74:0x02a7), top: B:686:0x0242 }] */
    /* JADX WARN: Removed duplicated region for block: B:653:0x1806 A[Catch: all -> 0x182b, TRY_ENTER, TRY_LEAVE, TryCatch #8 {all -> 0x182b, blocks: (B:3:0x0009, B:30:0x0107, B:64:0x025d, B:90:0x035e, B:114:0x042a, B:132:0x049b, B:134:0x04a3, B:141:0x04c1, B:143:0x0504, B:146:0x051c, B:148:0x0551, B:150:0x058d, B:157:0x05b0, B:159:0x05be, B:162:0x05f3, B:164:0x060e, B:171:0x0642, B:175:0x0653, B:179:0x0664, B:196:0x06bb, B:199:0x06c9, B:201:0x06dc, B:204:0x070b, B:206:0x071e, B:213:0x075e, B:216:0x0795, B:218:0x07c8, B:220:0x07f9, B:223:0x0813, B:229:0x083b, B:231:0x0870, B:233:0x0897, B:235:0x08a1, B:237:0x08b8, B:240:0x08d4, B:249:0x0905, B:253:0x0921, B:255:0x0958, B:259:0x098c, B:261:0x09a4, B:263:0x09b0, B:268:0x09d3, B:275:0x0a03, B:277:0x0a15, B:279:0x0a27, B:283:0x0a60, B:288:0x0a83, B:290:0x0a8d, B:293:0x0aa1, B:297:0x0ab6, B:298:0x0ae3, B:300:0x0afb, B:302:0x0b09, B:306:0x0b27, B:308:0x0b3c, B:310:0x0b54, B:315:0x0b7e, B:317:0x0b8c, B:321:0x0ba9, B:323:0x0bbe, B:325:0x0bd6, B:329:0x0c15, B:333:0x0c3d, B:335:0x0c4b, B:337:0x0c60, B:343:0x0c98, B:345:0x0cad, B:350:0x0cea, B:352:0x0cf8, B:354:0x0d00, B:356:0x0d11, B:358:0x0d20, B:359:0x0d2a, B:361:0x0d49, B:363:0x0d5a, B:364:0x0d6a, B:365:0x0d75, B:367:0x0d8b, B:368:0x0d98, B:376:0x0dd4, B:378:0x0deb, B:380:0x0dfb, B:382:0x0e15, B:385:0x0e34, B:387:0x0e3c, B:392:0x0e67, B:394:0x0e71, B:398:0x0e95, B:400:0x0eb7, B:402:0x0ec5, B:404:0x0ecd, B:411:0x0ef1, B:412:0x0f00, B:414:0x0f06, B:416:0x0f1b, B:423:0x0f34, B:425:0x0f43, B:426:0x0f69, B:427:0x0f75, B:429:0x0f8a, B:431:0x0f9a, B:433:0x0fae, B:435:0x0fd2, B:437:0x0fe6, B:439:0x0fee, B:441:0x0ff9, B:443:0x102d, B:445:0x1037, B:447:0x104a, B:453:0x1068, B:455:0x1071, B:457:0x1085, B:459:0x108c, B:468:0x1138, B:471:0x1169, B:473:0x118a, B:475:0x1190, B:477:0x119d, B:479:0x11b0, B:481:0x11b6, B:483:0x11c1, B:485:0x11d3, B:487:0x11e5, B:492:0x1239, B:494:0x1247, B:496:0x124f, B:498:0x1269, B:500:0x1271, B:507:0x1292, B:511:0x12b2, B:515:0x12fa, B:518:0x1318, B:520:0x134e, B:521:0x1373, B:530:0x13c3, B:532:0x13dd, B:534:0x13e5, B:536:0x13ed, B:539:0x13f7, B:542:0x141e, B:544:0x1427, B:546:0x1448, B:548:0x1450, B:550:0x145f, B:553:0x1483, B:585:0x159e, B:587:0x15b3, B:589:0x15ba, B:591:0x15d2, B:592:0x15f0, B:594:0x15f8, B:597:0x1604, B:598:0x160e, B:600:0x1616, B:606:0x162e, B:607:0x1638, B:609:0x1640, B:611:0x166f, B:612:0x167a, B:614:0x1681, B:616:0x168b, B:618:0x1691, B:620:0x16af, B:623:0x16ba, B:624:0x16c8, B:626:0x16d6, B:627:0x16e2, B:629:0x16fe, B:631:0x1713, B:633:0x173f, B:637:0x1750, B:639:0x175b, B:640:0x1774, B:642:0x179c, B:644:0x17ba, B:646:0x17c8, B:648:0x17e1, B:650:0x17f7, B:653:0x1806, B:660:0x1821, B:662:0x182a), top: B:673:0x0009, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:668:0x0279 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v396, types: [long] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.measurement.internal.zzke] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v11, types: [long] */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r19v15 */
    /* JADX WARN: Type inference failed for: r19v16 */
    /* JADX WARN: Type inference failed for: r19v18 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v2, types: [long] */
    /* JADX WARN: Type inference failed for: r19v20 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v22 */
    /* JADX WARN: Type inference failed for: r19v25 */
    /* JADX WARN: Type inference failed for: r24v10, types: [long] */
    /* JADX WARN: Type inference failed for: r24v11 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r24v8 */
    /* JADX WARN: Type inference failed for: r24v9 */
    /* JADX WARN: Type inference failed for: r27v75, types: [com.google.android.gms.internal.measurement.zzfd$zzb, com.google.android.gms.internal.measurement.zzbr$zzc$zza] */
    /* JADX WARN: Unknown variable types count: 5 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x042a -> B:667:0x049b). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m1725a(long r19) {
        /*
            Method dump skipped, instructions count: 6199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1725a(long):boolean");
    }

    /* renamed from: a */
    private final boolean m1722a(zzbr.zzc.zza zzaVar, zzbr.zzc.zza zzaVar2) {
        Preconditions.checkArgument("_e".equals(zzaVar.zzd()));
        zzh();
        zzbr.zze a = zzki.m1670a((zzbr.zzc) ((zzfd) zzaVar.zzu()), "_sc");
        String str = null;
        String zzc = a == null ? null : a.zzc();
        zzh();
        zzbr.zze a2 = zzki.m1670a((zzbr.zzc) ((zzfd) zzaVar2.zzu()), "_pc");
        if (a2 != null) {
            str = a2.zzc();
        }
        if (str == null || !str.equals(zzc)) {
            return false;
        }
        m1703b(zzaVar, zzaVar2);
        return true;
    }

    /* renamed from: b */
    private final Boolean m1702b(C2744dy dyVar) {
        try {
            if (dyVar.m2075m() != -2147483648L) {
                if (dyVar.m2075m() == Wrappers.packageManager(this.f17283j.zzn()).getPackageInfo(dyVar.m2103c(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(this.f17283j.zzn()).getPackageInfo(dyVar.m2103c(), 0).versionName;
                if (dyVar.m2077l() != null && dyVar.m2077l().equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
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
    private final void m1703b(com.google.android.gms.internal.measurement.zzbr.zzc.zza r6, com.google.android.gms.internal.measurement.zzbr.zzc.zza r7) {
        /*
            r5 = this;
            java.lang.String r0 = "_e"
            r1 = r6
            java.lang.String r1 = r1.zzd()
            boolean r0 = r0.equals(r1)
            com.google.android.gms.common.internal.Preconditions.checkArgument(r0)
            r0 = r5
            com.google.android.gms.measurement.internal.zzki r0 = r0.zzh()
            r0 = r6
            com.google.android.gms.internal.measurement.zzgo r0 = r0.zzu()
            com.google.android.gms.internal.measurement.zzfd r0 = (com.google.android.gms.internal.measurement.zzfd) r0
            com.google.android.gms.internal.measurement.zzbr$zzc r0 = (com.google.android.gms.internal.measurement.zzbr.zzc) r0
            java.lang.String r1 = "_et"
            com.google.android.gms.internal.measurement.zzbr$zze r0 = com.google.android.gms.measurement.internal.zzki.m1670a(r0, r1)
            r8 = r0
            r0 = r8
            boolean r0 = r0.zzd()
            if (r0 == 0) goto L_0x0091
            r0 = r8
            long r0 = r0.zze()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0036
            goto L_0x0091
        L_0x0036:
            r0 = r8
            long r0 = r0.zze()
            r9 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzki r0 = r0.zzh()
            r0 = r7
            com.google.android.gms.internal.measurement.zzgo r0 = r0.zzu()
            com.google.android.gms.internal.measurement.zzfd r0 = (com.google.android.gms.internal.measurement.zzfd) r0
            com.google.android.gms.internal.measurement.zzbr$zzc r0 = (com.google.android.gms.internal.measurement.zzbr.zzc) r0
            java.lang.String r1 = "_et"
            com.google.android.gms.internal.measurement.zzbr$zze r0 = com.google.android.gms.measurement.internal.zzki.m1670a(r0, r1)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0070
            r0 = r9
            r11 = r0
            r0 = r8
            long r0 = r0.zze()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0070
            r0 = r9
            r1 = r8
            long r1 = r1.zze()
            long r0 = r0 + r1
            r11 = r0
        L_0x0070:
            r0 = r5
            com.google.android.gms.measurement.internal.zzki r0 = r0.zzh()
            r0 = r7
            java.lang.String r1 = "_et"
            r2 = r11
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            com.google.android.gms.measurement.internal.zzki.m1671a(r0, r1, r2)
            r0 = r5
            com.google.android.gms.measurement.internal.zzki r0 = r0.zzh()
            r0 = r6
            java.lang.String r1 = "_fr"
            r2 = 1
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            com.google.android.gms.measurement.internal.zzki.m1671a(r0, r1, r2)
        L_0x0091:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1703b(com.google.android.gms.internal.measurement.zzbr$zzc$zza, com.google.android.gms.internal.measurement.zzbr$zzc$zza):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:59|(1:61)(1:62)|63|64|(3:69|78|(1:80))|70|71|305|72|75|76|77|78|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02eb, code lost:
        r30 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02ed, code lost:
        r0.zzr().zzf().zza("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzew.m1855a(r0), r30);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0835 A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x085d A[Catch: all -> 0x0c0b, TRY_LEAVE, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x088c A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x08ba A[Catch: all -> 0x0c0b, TRY_ENTER, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0989 A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:250:0x09a6 A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x09c2 A[Catch: all -> 0x0c0b, TRY_ENTER, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0a63 A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0a77 A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0a9b A[Catch: all -> 0x0c0b, LOOP:0: B:267:0x0a90->B:269:0x0a9b, LOOP_END, TRY_LEAVE, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0b05 A[Catch: all -> 0x0c0b, TRY_LEAVE, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0b8c A[Catch: all -> 0x0c0b, TRY_LEAVE, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0bc3 A[Catch: all -> 0x0c0b, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0335 A[Catch: all -> 0x0c0b, TRY_LEAVE, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x037b A[Catch: all -> 0x0c0b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0c0b, blocks: (B:34:0x0140, B:36:0x0157, B:39:0x016a, B:41:0x0187, B:44:0x01a5, B:50:0x01cb, B:51:0x01d5, B:53:0x01f5, B:55:0x0206, B:57:0x020c, B:59:0x0221, B:61:0x0230, B:62:0x023d, B:64:0x024a, B:66:0x025b, B:69:0x0269, B:70:0x029e, B:72:0x02c7, B:74:0x02ed, B:75:0x0302, B:76:0x0305, B:78:0x0329, B:80:0x0335, B:84:0x037b, B:87:0x038a, B:92:0x03dd, B:94:0x03fb, B:99:0x040e, B:104:0x0436, B:106:0x0454, B:111:0x047e, B:116:0x04b0, B:118:0x04ce, B:121:0x04dc, B:123:0x050b, B:125:0x0534, B:127:0x0542, B:129:0x0556, B:131:0x056b, B:133:0x0576, B:135:0x058d, B:137:0x0597, B:139:0x05ab, B:141:0x05bf, B:143:0x05d4, B:146:0x05e5, B:147:0x05ff, B:148:0x0602, B:150:0x0621, B:152:0x0646, B:156:0x065b, B:159:0x069c, B:160:0x06b5, B:162:0x06cf, B:164:0x0708, B:166:0x071f, B:168:0x072a, B:170:0x0733, B:172:0x073e, B:174:0x0747, B:176:0x0752, B:178:0x075c, B:180:0x0769, B:182:0x077b, B:183:0x0785, B:185:0x078b, B:187:0x079f, B:189:0x07aa, B:191:0x07b4, B:193:0x07c0, B:195:0x07c9, B:197:0x07d4, B:199:0x07de, B:201:0x07e5, B:202:0x07ed, B:204:0x07fd, B:206:0x0808, B:208:0x0812, B:209:0x081a, B:211:0x0824, B:212:0x082c, B:214:0x0835, B:216:0x0841, B:218:0x085d, B:220:0x0869, B:222:0x0871, B:224:0x088c, B:226:0x0893, B:228:0x08a7, B:229:0x08ba, B:231:0x08ce, B:233:0x08d5, B:235:0x08ec, B:238:0x090e, B:240:0x0916, B:242:0x0931, B:244:0x0939, B:246:0x0989, B:248:0x0999, B:250:0x09a6, B:252:0x09ae, B:255:0x09c2, B:257:0x0a5a, B:259:0x0a63, B:261:0x0a6e, B:263:0x0a77, B:265:0x0a82, B:267:0x0a90, B:269:0x0a9b, B:270:0x0ae4, B:272:0x0af9, B:274:0x0b05, B:276:0x0b12, B:278:0x0b1c, B:281:0x0b33, B:283:0x0b61, B:287:0x0b7f, B:289:0x0b8c, B:291:0x0b95, B:293:0x0baf, B:295:0x0bc3), top: B:304:0x0140, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0409  */
    /* JADX WARN: Type inference failed for: r0v527, types: [double] */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1, types: [double] */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1701b(com.google.android.gms.measurement.internal.zzan r13, com.google.android.gms.measurement.internal.zzm r14) {
        /*
            Method dump skipped, instructions count: 3093
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1701b(com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzm):void");
    }

    /* renamed from: e */
    private final boolean m1691e(zzm zzmVar) {
        return (!zzle.zzb() || !this.f17283j.zzb().zze(zzmVar.zza, zzap.zzcc)) ? !TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzr) : !TextUtils.isEmpty(zzmVar.zzb) || !TextUtils.isEmpty(zzmVar.zzv) || !TextUtils.isEmpty(zzmVar.zzr);
    }

    /* renamed from: i */
    private final C2732dm m1687i() {
        C2732dm dmVar = this.f17278e;
        if (dmVar != null) {
            return dmVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    /* renamed from: j */
    private final zzka m1686j() {
        m1717a(this.f17279f);
        return this.f17279f;
    }

    /* renamed from: k */
    private final void m1685k() {
        this.f17283j.zzq().zzd();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m1684l() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzga r0 = r0.f17283j
            com.google.android.gms.common.util.Clock r0 = r0.zzm()
            long r0 = r0.currentTimeMillis()
            r6 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzga r0 = r0.f17283j
            com.google.android.gms.measurement.internal.do r0 = r0.zzc()
            r8 = r0
            r0 = r8
            r0.m2056l()
            r0 = r8
            r0.zzd()
            r0 = r8
            com.google.android.gms.measurement.internal.zzfk r0 = r0.f16683g
            long r0 = r0.zza()
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004c
            r0 = 1
            r1 = r8
            com.google.android.gms.measurement.internal.zzkm r1 = r1.zzp()
            java.security.SecureRandom r1 = r1.m1613c()
            r2 = 86400000(0x5265c00, float:7.82218E-36)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfk r0 = r0.f16683g
            r1 = r11
            r0.zza(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1684l():long");
    }

    /* renamed from: m */
    private final boolean m1683m() {
        m1685k();
        m1704b();
        return zze().m2159k() || !TextUtils.isEmpty(zze().m2169f());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x022f  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 5 */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1682n() {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1682n():void");
    }

    /* renamed from: o */
    private final void m1681o() {
        m1685k();
        if (this.f17291r || this.f17292s || this.f17293t) {
            this.f17283j.zzr().zzx().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.f17291r), Boolean.valueOf(this.f17292s), Boolean.valueOf(this.f17293t));
            return;
        }
        this.f17283j.zzr().zzx().zza("Stopping uploading service(s)");
        List<Runnable> list = this.f17288o;
        if (list != null) {
            for (Runnable runnable : list) {
                runnable.run();
            }
            this.f17288o.clear();
        }
    }

    /* renamed from: p */
    private final boolean m1680p() {
        zzey zzeyVar;
        String str;
        Object e;
        FileLock fileLock;
        m1685k();
        if (!this.f17283j.zzb().zza(zzap.zzca) || (fileLock = this.f17294u) == null || !fileLock.isValid()) {
            try {
                this.f17295v = new RandomAccessFile(new File(this.f17283j.zzn().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.f17294u = this.f17295v.tryLock();
                if (this.f17294u != null) {
                    this.f17283j.zzr().zzx().zza("Storage concurrent access okay");
                    return true;
                }
                this.f17283j.zzr().zzf().zza("Storage concurrent data access panic");
                return false;
            } catch (FileNotFoundException e2) {
                e = e2;
                zzeyVar = this.f17283j.zzr().zzf();
                str = "Failed to acquire storage lock";
                zzeyVar.zza(str, e);
                return false;
            } catch (IOException e3) {
                e = e3;
                zzeyVar = this.f17283j.zzr().zzf();
                str = "Failed to access storage lock file";
                zzeyVar.zza(str, e);
                return false;
            } catch (OverlappingFileLockException e4) {
                e = e4;
                zzeyVar = this.f17283j.zzr().zzi();
                str = "Storage lock already acquired";
                zzeyVar.zza(str, e);
                return false;
            }
        } else {
            this.f17283j.zzr().zzx().zza("Storage concurrent access okay");
            return true;
        }
    }

    /* renamed from: q */
    private final boolean m1679q() {
        m1685k();
        m1704b();
        return this.f17285l;
    }

    public static zzke zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f17274a == null) {
            synchronized (zzke.class) {
                try {
                    if (f17274a == null) {
                        f17274a = new zzke(new zzkj(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17274a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1728a() {
        this.f17283j.zzq().zzd();
        zze().m2163h();
        if (this.f17283j.zzc().f16679c.zza() == 0) {
            this.f17283j.zzc().f16679c.zza(this.f17283j.zzm().currentTimeMillis());
        }
        m1682n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final void m1727a(int i, Throwable th, byte[] bArr) {
        C2692c zze;
        long longValue;
        m1685k();
        m1704b();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.f17292s = false;
                m1681o();
            }
        }
        List<Long> list = this.f17296w;
        this.f17296w = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.f17283j.zzc().f16679c.zza(this.f17283j.zzm().currentTimeMillis());
                this.f17283j.zzc().f16680d.zza(0L);
                m1682n();
                this.f17283j.zzr().zzx().zza("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                zze().m2185b();
                try {
                    for (Long l : list) {
                        try {
                            zze = zze();
                            longValue = l.longValue();
                            zze.zzd();
                            zze.m2024w();
                        } catch (SQLiteException e) {
                            if (this.f17297x == null || !this.f17297x.contains(l)) {
                                throw e;
                            }
                        }
                        try {
                            if (zze.m2172e().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                                break;
                            }
                        } catch (SQLiteException e2) {
                            zze.zzr().zzf().zza("Failed to delete a bundle in a queue table", e2);
                            throw e2;
                            break;
                        }
                    }
                    zze().m2179c();
                    zze().m2175d();
                    this.f17297x = null;
                    if (!zzd().zzf() || !m1683m()) {
                        this.f17298y = -1L;
                        m1682n();
                    } else {
                        m1696c();
                    }
                    this.f17287n = 0L;
                } catch (Throwable th2) {
                    zze().m2175d();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.f17283j.zzr().zzf().zza("Database error while trying to delete uploaded bundles", e3);
                this.f17287n = this.f17283j.zzm().elapsedRealtime();
                this.f17283j.zzr().zzx().zza("Disable upload, time", Long.valueOf(this.f17287n));
            }
        } else {
            this.f17283j.zzr().zzx().zza("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.f17283j.zzc().f16680d.zza(this.f17283j.zzm().currentTimeMillis());
            boolean z = true;
            if (i != 503) {
                z = i == 429;
            }
            if (z) {
                this.f17283j.zzc().f16681e.zza(this.f17283j.zzm().currentTimeMillis());
            }
            zze().m2186a(list);
            m1682n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1716a(zzan zzanVar, zzm zzmVar) {
        List<zzv> list;
        List<zzv> list2;
        List<zzv> list3;
        zzey zzf;
        String str;
        Object a;
        String c;
        Object obj;
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.zza);
        m1685k();
        m1704b();
        String str2 = zzmVar.zza;
        long j = zzanVar.zzd;
        if (zzh().m1664a(zzanVar, zzmVar)) {
            if (!zzmVar.zzh) {
                m1695c(zzmVar);
                return;
            }
            zzan zzanVar2 = zzanVar;
            if (this.f17283j.zzb().zze(str2, zzap.zzbk)) {
                zzanVar2 = zzanVar;
                if (zzmVar.zzu != null) {
                    if (zzmVar.zzu.contains(zzanVar.zza)) {
                        Bundle zzb = zzanVar.zzb.zzb();
                        zzb.putLong("ga_safelisted", 1L);
                        zzanVar2 = new zzan(zzanVar.zza, new zzam(zzb), zzanVar.zzc, zzanVar.zzd);
                    } else {
                        this.f17283j.zzr().zzw().zza("Dropping non-safelisted event. appId, event name, origin", str2, zzanVar.zza, zzanVar.zzc);
                        return;
                    }
                }
            }
            zze().m2185b();
            try {
                C2692c zze = zze();
                Preconditions.checkNotEmpty(str2);
                zze.zzd();
                zze.m2024w();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    zze.zzr().zzi().zza("Invalid time querying timed out conditional properties", zzew.m1855a(str2), Long.valueOf(j));
                    list = Collections.emptyList();
                } else {
                    list = zze.m2188a("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzv zzvVar : list) {
                    if (zzvVar != null) {
                        this.f17283j.zzr().zzw().zza("User property timed out", zzvVar.zza, this.f17283j.zzj().m1862c(zzvVar.zzc.zza), zzvVar.zzc.zza());
                        if (zzvVar.zzg != null) {
                            m1701b(new zzan(zzvVar.zzg, j), zzmVar);
                        }
                        zze().m2170e(str2, zzvVar.zzc.zza);
                    }
                }
                C2692c zze2 = zze();
                Preconditions.checkNotEmpty(str2);
                zze2.zzd();
                zze2.m2024w();
                if (i < 0) {
                    zze2.zzr().zzi().zza("Invalid time querying expired conditional properties", zzew.m1855a(str2), Long.valueOf(j));
                    list2 = Collections.emptyList();
                } else {
                    list2 = zze2.m2188a("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzv zzvVar2 : list2) {
                    if (zzvVar2 != null) {
                        this.f17283j.zzr().zzw().zza("User property expired", zzvVar2.zza, this.f17283j.zzj().m1862c(zzvVar2.zzc.zza), zzvVar2.zzc.zza());
                        zze().m2183b(str2, zzvVar2.zzc.zza);
                        if (zzvVar2.zzk != null) {
                            arrayList.add(zzvVar2.zzk);
                        }
                        zze().m2170e(str2, zzvVar2.zzc.zza);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    m1701b(new zzan((zzan) obj2, j), zzmVar);
                }
                C2692c zze3 = zze();
                String str3 = zzanVar2.zza;
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str3);
                zze3.zzd();
                zze3.m2024w();
                if (i < 0) {
                    zze3.zzr().zzi().zza("Invalid time querying triggered conditional properties", zzew.m1855a(str2), zze3.zzo().m1866a(str3), Long.valueOf(j));
                    list3 = Collections.emptyList();
                } else {
                    list3 = zze3.m2188a("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
                }
                ArrayList arrayList3 = new ArrayList(list3.size());
                for (zzv zzvVar3 : list3) {
                    if (zzvVar3 != null) {
                        zzkl zzklVar = zzvVar3.zzc;
                        C2843hp hpVar = new C2843hp(zzvVar3.zza, zzvVar3.zzb, zzklVar.zza, j, zzklVar.zza());
                        if (zze().m2200a(hpVar)) {
                            zzf = this.f17283j.zzr().zzw();
                            str = "User property triggered";
                            a = zzvVar3.zza;
                            c = this.f17283j.zzj().m1862c(hpVar.f17036c);
                            obj = hpVar.f17038e;
                        } else {
                            zzf = this.f17283j.zzr().zzf();
                            str = "Too many active user properties, ignoring";
                            a = zzew.m1855a(zzvVar3.zza);
                            c = this.f17283j.zzj().m1862c(hpVar.f17036c);
                            obj = hpVar.f17038e;
                        }
                        zzf.zza(str, a, c, obj);
                        if (zzvVar3.zzi != null) {
                            arrayList3.add(zzvVar3.zzi);
                        }
                        zzvVar3.zzc = new zzkl(hpVar);
                        zzvVar3.zze = true;
                        zze().m2198a(zzvVar3);
                    }
                }
                m1701b(zzanVar2, zzmVar);
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj3 = arrayList4.get(i3);
                    i3++;
                    m1701b(new zzan((zzan) obj3, j), zzmVar);
                }
                zze().m2179c();
            } finally {
                zze().m2175d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1715a(zzan zzanVar, String str) {
        C2744dy b = zze().m2184b(str);
        if (b == null || TextUtils.isEmpty(b.m2077l())) {
            this.f17283j.zzr().zzw().zza("No app data available; dropping event", str);
            return;
        }
        Boolean b2 = m1702b(b);
        if (b2 == null) {
            if (!"_ui".equals(zzanVar.zza)) {
                this.f17283j.zzr().zzi().zza("Could not find package. appId", zzew.m1855a(str));
            }
        } else if (!b2.booleanValue()) {
            this.f17283j.zzr().zzf().zza("App version does not match; dropping event. appId", zzew.m1855a(str));
            return;
        }
        m1716a(zzanVar, new zzm(str, b.m2096e(), b.m2077l(), b.m2075m(), b.m2073n(), b.m2071o(), b.m2069p(), (String) null, b.m2066r(), false, b.m2084i(), b.m2118E(), 0L, 0, b.m2117F(), b.m2116G(), false, b.m2093f(), b.m2115H(), b.m2067q(), b.m2114I(), (!zzle.zzb() || !this.f17283j.zzb().zze(b.m2103c(), zzap.zzcc)) ? null : b.m2090g()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b3, code lost:
        if ((r0 instanceof java.lang.CharSequence) != false) goto L_0x00b6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r24v0, types: [long] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1713a(com.google.android.gms.measurement.internal.zzkl r12, com.google.android.gms.measurement.internal.zzm r13) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1713a(com.google.android.gms.measurement.internal.zzkl, com.google.android.gms.measurement.internal.zzm):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1712a(zzm zzmVar) {
        if (this.f17296w != null) {
            this.f17297x = new ArrayList();
            this.f17297x.addAll(this.f17296w);
        }
        C2692c zze = zze();
        String str = zzmVar.zza;
        Preconditions.checkNotEmpty(str);
        zze.zzd();
        zze.m2024w();
        try {
            SQLiteDatabase e = zze.m2172e();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = e.delete("apps", "app_id=?", strArr) + 0 + e.delete("events", "app_id=?", strArr) + e.delete("user_attributes", "app_id=?", strArr) + e.delete("conditional_properties", "app_id=?", strArr) + e.delete("raw_events", "app_id=?", strArr) + e.delete("raw_events_metadata", "app_id=?", strArr) + e.delete("queue", "app_id=?", strArr) + e.delete("audience_filter_values", "app_id=?", strArr) + e.delete("main_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zze.zzr().zzx().zza("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            zze.zzr().zzf().zza("Error resetting analytics data. appId, error", zzew.m1855a(str), e2);
        }
        if (!zzkm.zzb() || !this.f17283j.zzb().zza(zzap.zzch)) {
            zzm a = m1724a(this.f17283j.zzn(), zzmVar.zza, zzmVar.zzb, zzmVar.zzh, zzmVar.zzo, zzmVar.zzp, zzmVar.zzm, zzmVar.zzr, zzmVar.zzv);
            if (zzmVar.zzh) {
                m1699b(a);
            }
        } else if (zzmVar.zzh) {
            m1699b(zzmVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1710a(zzv zzvVar) {
        zzm a = m1707a(zzvVar.zza);
        if (a != null) {
            m1709a(zzvVar, a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1709a(zzv zzvVar, zzm zzmVar) {
        zzey zzf;
        String str;
        Object a;
        String c;
        Object zza;
        zzey zzf2;
        String str2;
        Object a2;
        String c2;
        Object obj;
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotEmpty(zzvVar.zza);
        Preconditions.checkNotNull(zzvVar.zzb);
        Preconditions.checkNotNull(zzvVar.zzc);
        Preconditions.checkNotEmpty(zzvVar.zzc.zza);
        m1685k();
        m1704b();
        if (m1691e(zzmVar)) {
            if (!zzmVar.zzh) {
                m1695c(zzmVar);
                return;
            }
            zzv zzvVar2 = new zzv(zzvVar);
            boolean z = false;
            zzvVar2.zze = false;
            zze().m2185b();
            try {
                zzv d = zze().m2173d(zzvVar2.zza, zzvVar2.zzc.zza);
                if (d != null && !d.zzb.equals(zzvVar2.zzb)) {
                    this.f17283j.zzr().zzi().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.f17283j.zzj().m1862c(zzvVar2.zzc.zza), zzvVar2.zzb, d.zzb);
                }
                if (d != null && d.zze) {
                    zzvVar2.zzb = d.zzb;
                    zzvVar2.zzd = d.zzd;
                    zzvVar2.zzh = d.zzh;
                    zzvVar2.zzf = d.zzf;
                    zzvVar2.zzi = d.zzi;
                    zzvVar2.zze = d.zze;
                    zzvVar2.zzc = new zzkl(zzvVar2.zzc.zza, d.zzc.zzb, zzvVar2.zzc.zza(), d.zzc.zze);
                } else if (TextUtils.isEmpty(zzvVar2.zzf)) {
                    zzvVar2.zzc = new zzkl(zzvVar2.zzc.zza, zzvVar2.zzd, zzvVar2.zzc.zza(), zzvVar2.zzc.zze);
                    zzvVar2.zze = true;
                    z = true;
                }
                if (zzvVar2.zze) {
                    zzkl zzklVar = zzvVar2.zzc;
                    C2843hp hpVar = new C2843hp(zzvVar2.zza, zzvVar2.zzb, zzklVar.zza, zzklVar.zzb, zzklVar.zza());
                    if (zze().m2200a(hpVar)) {
                        zzf2 = this.f17283j.zzr().zzw();
                        str2 = "User property updated immediately";
                        a2 = zzvVar2.zza;
                        c2 = this.f17283j.zzj().m1862c(hpVar.f17036c);
                        obj = hpVar.f17038e;
                    } else {
                        zzf2 = this.f17283j.zzr().zzf();
                        str2 = "(2)Too many active user properties, ignoring";
                        a2 = zzew.m1855a(zzvVar2.zza);
                        c2 = this.f17283j.zzj().m1862c(hpVar.f17036c);
                        obj = hpVar.f17038e;
                    }
                    zzf2.zza(str2, a2, c2, obj);
                    if (z && zzvVar2.zzi != null) {
                        m1701b(new zzan(zzvVar2.zzi, zzvVar2.zzd), zzmVar);
                    }
                }
                if (zze().m2198a(zzvVar2)) {
                    zzf = this.f17283j.zzr().zzw();
                    str = "Conditional property added";
                    a = zzvVar2.zza;
                    c = this.f17283j.zzj().m1862c(zzvVar2.zzc.zza);
                    zza = zzvVar2.zzc.zza();
                } else {
                    zzf = this.f17283j.zzr().zzf();
                    str = "Too many conditional properties, ignoring";
                    a = zzew.m1855a(zzvVar2.zza);
                    c = this.f17283j.zzj().m1862c(zzvVar2.zzc.zza);
                    zza = zzvVar2.zzc.zza();
                }
                zzf.zza(str, a, c, zza);
                zze().m2179c();
            } finally {
                zze().m2175d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1708a(Runnable runnable) {
        m1685k();
        if (this.f17288o == null) {
            this.f17288o = new ArrayList();
        }
        this.f17288o.add(runnable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d3 A[Catch: all -> 0x0225, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x022f, blocks: (B:4:0x0016, B:6:0x001c, B:54:0x017b, B:56:0x0181, B:63:0x01aa, B:78:0x021e, B:8:0x0039, B:21:0x006c, B:26:0x0092, B:35:0x0103, B:37:0x011d, B:40:0x0128, B:44:0x013f, B:46:0x0148, B:52:0x0169, B:59:0x018e, B:61:0x0199, B:64:0x01b2, B:67:0x01d3, B:68:0x01e7, B:70:0x0202, B:72:0x020b, B:74:0x0212, B:76:0x0217), top: B:82:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e7 A[Catch: all -> 0x0225, TRY_ENTER, TryCatch #1 {all -> 0x022f, blocks: (B:4:0x0016, B:6:0x001c, B:54:0x017b, B:56:0x0181, B:63:0x01aa, B:78:0x021e, B:8:0x0039, B:21:0x006c, B:26:0x0092, B:35:0x0103, B:37:0x011d, B:40:0x0128, B:44:0x013f, B:46:0x0148, B:52:0x0169, B:59:0x018e, B:61:0x0199, B:64:0x01b2, B:67:0x01d3, B:68:0x01e7, B:70:0x0202, B:72:0x020b, B:74:0x0212, B:76:0x0217), top: B:82:0x0016 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1706a(java.lang.String r6, int r7, java.lang.Throwable r8, byte[] r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1706a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1704b() {
        if (!this.f17284k) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1700b(zzkl zzklVar, zzm zzmVar) {
        m1685k();
        m1704b();
        if (m1691e(zzmVar)) {
            if (!zzmVar.zzh) {
                m1695c(zzmVar);
            } else if (!this.f17283j.zzb().zze(zzmVar.zza, zzap.zzba)) {
                this.f17283j.zzr().zzw().zza("Removing user property", this.f17283j.zzj().m1862c(zzklVar.zza));
                zze().m2185b();
                try {
                    m1695c(zzmVar);
                    zze().m2183b(zzmVar.zza, zzklVar.zza);
                    zze().m2179c();
                    this.f17283j.zzr().zzw().zza("User property removed", this.f17283j.zzj().m1862c(zzklVar.zza));
                } finally {
                }
            } else if (!"_npa".equals(zzklVar.zza) || zzmVar.zzs == null) {
                this.f17283j.zzr().zzw().zza("Removing user property", this.f17283j.zzj().m1862c(zzklVar.zza));
                zze().m2185b();
                try {
                    m1695c(zzmVar);
                    zze().m2183b(zzmVar.zza, zzklVar.zza);
                    zze().m2179c();
                    this.f17283j.zzr().zzw().zza("User property removed", this.f17283j.zzj().m1862c(zzklVar.zza));
                } finally {
                }
            } else {
                this.f17283j.zzr().zzw().zza("Falling back to manifest metadata value for ad personalization");
                m1713a(new zzkl("_npa", this.f17283j.zzm().currentTimeMillis(), Long.valueOf(zzmVar.zzs.booleanValue() ? 1L : 0L), "auto"), zzmVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x037e A[Catch: all -> 0x0703, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0703, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:92:0x0353, B:95:0x0365, B:100:0x037e, B:103:0x0392, B:105:0x03c0, B:107:0x03d3, B:109:0x042e, B:111:0x0438, B:113:0x043e, B:115:0x0448, B:117:0x0479, B:119:0x0493, B:121:0x04aa, B:125:0x04c8, B:127:0x04d1, B:129:0x04dd, B:134:0x04f4, B:137:0x050c, B:141:0x051c, B:142:0x0535, B:144:0x054c, B:148:0x056a, B:150:0x0573, B:152:0x057d, B:154:0x0587, B:157:0x059a, B:158:0x05a4, B:159:0x05a7, B:161:0x05c3, B:164:0x05d1, B:166:0x0623, B:168:0x062d, B:170:0x0633, B:171:0x063c, B:172:0x063f, B:173:0x065a, B:175:0x066e, B:177:0x0695, B:178:0x069e, B:179:0x06a1, B:181:0x06bd, B:182:0x06c5, B:184:0x06cc, B:185:0x06f4), top: B:195:0x00e1, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x066e A[Catch: all -> 0x0703, TryCatch #2 {all -> 0x0703, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:92:0x0353, B:95:0x0365, B:100:0x037e, B:103:0x0392, B:105:0x03c0, B:107:0x03d3, B:109:0x042e, B:111:0x0438, B:113:0x043e, B:115:0x0448, B:117:0x0479, B:119:0x0493, B:121:0x04aa, B:125:0x04c8, B:127:0x04d1, B:129:0x04dd, B:134:0x04f4, B:137:0x050c, B:141:0x051c, B:142:0x0535, B:144:0x054c, B:148:0x056a, B:150:0x0573, B:152:0x057d, B:154:0x0587, B:157:0x059a, B:158:0x05a4, B:159:0x05a7, B:161:0x05c3, B:164:0x05d1, B:166:0x0623, B:168:0x062d, B:170:0x0633, B:171:0x063c, B:172:0x063f, B:173:0x065a, B:175:0x066e, B:177:0x0695, B:178:0x069e, B:179:0x06a1, B:181:0x06bd, B:182:0x06c5, B:184:0x06cc, B:185:0x06f4), top: B:195:0x00e1, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x06c5 A[Catch: all -> 0x0703, TRY_ENTER, TryCatch #2 {all -> 0x0703, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:92:0x0353, B:95:0x0365, B:100:0x037e, B:103:0x0392, B:105:0x03c0, B:107:0x03d3, B:109:0x042e, B:111:0x0438, B:113:0x043e, B:115:0x0448, B:117:0x0479, B:119:0x0493, B:121:0x04aa, B:125:0x04c8, B:127:0x04d1, B:129:0x04dd, B:134:0x04f4, B:137:0x050c, B:141:0x051c, B:142:0x0535, B:144:0x054c, B:148:0x056a, B:150:0x0573, B:152:0x057d, B:154:0x0587, B:157:0x059a, B:158:0x05a4, B:159:0x05a7, B:161:0x05c3, B:164:0x05d1, B:166:0x0623, B:168:0x062d, B:170:0x0633, B:171:0x063c, B:172:0x063f, B:173:0x065a, B:175:0x066e, B:177:0x0695, B:178:0x069e, B:179:0x06a1, B:181:0x06bd, B:182:0x06c5, B:184:0x06cc, B:185:0x06f4), top: B:195:0x00e1, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02aa A[Catch: all -> 0x0703, TRY_ENTER, TryCatch #2 {all -> 0x0703, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:92:0x0353, B:95:0x0365, B:100:0x037e, B:103:0x0392, B:105:0x03c0, B:107:0x03d3, B:109:0x042e, B:111:0x0438, B:113:0x043e, B:115:0x0448, B:117:0x0479, B:119:0x0493, B:121:0x04aa, B:125:0x04c8, B:127:0x04d1, B:129:0x04dd, B:134:0x04f4, B:137:0x050c, B:141:0x051c, B:142:0x0535, B:144:0x054c, B:148:0x056a, B:150:0x0573, B:152:0x057d, B:154:0x0587, B:157:0x059a, B:158:0x05a4, B:159:0x05a7, B:161:0x05c3, B:164:0x05d1, B:166:0x0623, B:168:0x062d, B:170:0x0633, B:171:0x063c, B:172:0x063f, B:173:0x065a, B:175:0x066e, B:177:0x0695, B:178:0x069e, B:179:0x06a1, B:181:0x06bd, B:182:0x06c5, B:184:0x06cc, B:185:0x06f4), top: B:195:0x00e1, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0343 A[Catch: all -> 0x0703, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0703, blocks: (B:28:0x00e1, B:30:0x00f5, B:32:0x010a, B:35:0x0119, B:37:0x011f, B:42:0x0134, B:44:0x0149, B:47:0x0159, B:50:0x0166, B:51:0x0180, B:53:0x0190, B:55:0x01ae, B:57:0x01e3, B:59:0x01f3, B:61:0x0270, B:64:0x028d, B:69:0x02aa, B:71:0x02b5, B:76:0x02ca, B:78:0x02d5, B:80:0x02dc, B:87:0x02fb, B:88:0x0338, B:90:0x0343, B:92:0x0353, B:95:0x0365, B:100:0x037e, B:103:0x0392, B:105:0x03c0, B:107:0x03d3, B:109:0x042e, B:111:0x0438, B:113:0x043e, B:115:0x0448, B:117:0x0479, B:119:0x0493, B:121:0x04aa, B:125:0x04c8, B:127:0x04d1, B:129:0x04dd, B:134:0x04f4, B:137:0x050c, B:141:0x051c, B:142:0x0535, B:144:0x054c, B:148:0x056a, B:150:0x0573, B:152:0x057d, B:154:0x0587, B:157:0x059a, B:158:0x05a4, B:159:0x05a7, B:161:0x05c3, B:164:0x05d1, B:166:0x0623, B:168:0x062d, B:170:0x0633, B:171:0x063c, B:172:0x063f, B:173:0x065a, B:175:0x066e, B:177:0x0695, B:178:0x069e, B:179:0x06a1, B:181:0x06bd, B:182:0x06c5, B:184:0x06cc, B:185:0x06f4), top: B:195:0x00e1, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x035f  */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1699b(com.google.android.gms.measurement.internal.zzm r9) {
        /*
            Method dump skipped, instructions count: 1805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzke.m1699b(com.google.android.gms.measurement.internal.zzm):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1698b(zzv zzvVar) {
        zzm a = m1707a(zzvVar.zza);
        if (a != null) {
            m1697b(zzvVar, a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m1697b(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotEmpty(zzvVar.zza);
        Preconditions.checkNotNull(zzvVar.zzc);
        Preconditions.checkNotEmpty(zzvVar.zzc.zza);
        m1685k();
        m1704b();
        if (m1691e(zzmVar)) {
            if (!zzmVar.zzh) {
                m1695c(zzmVar);
                return;
            }
            zze().m2185b();
            try {
                m1695c(zzmVar);
                zzv d = zze().m2173d(zzvVar.zza, zzvVar.zzc.zza);
                if (d != null) {
                    this.f17283j.zzr().zzw().zza("Removing conditional user property", zzvVar.zza, this.f17283j.zzj().m1862c(zzvVar.zzc.zza));
                    zze().m2170e(zzvVar.zza, zzvVar.zzc.zza);
                    if (d.zze) {
                        zze().m2183b(zzvVar.zza, zzvVar.zzc.zza);
                    }
                    if (zzvVar.zzk != null) {
                        Bundle bundle = null;
                        if (zzvVar.zzk.zzb != null) {
                            bundle = zzvVar.zzk.zzb.zzb();
                        }
                        m1701b(this.f17283j.zzi().m1625a(zzvVar.zza, zzvVar.zzk.zza, bundle, d.zzb, zzvVar.zzk.zzd), zzmVar);
                    }
                } else {
                    this.f17283j.zzr().zzi().zza("Conditional user property doesn't exist", zzew.m1855a(zzvVar.zza), this.f17283j.zzj().m1862c(zzvVar.zzc.zza));
                }
                zze().m2179c();
            } finally {
                zze().m2175d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final C2744dy m1695c(zzm zzmVar) {
        C2744dy dyVar;
        m1685k();
        m1704b();
        Preconditions.checkNotNull(zzmVar);
        Preconditions.checkNotEmpty(zzmVar.zza);
        C2744dy b = zze().m2184b(zzmVar.zza);
        String b2 = this.f17283j.zzc().m2138b(zzmVar.zza);
        if (!zzkn.zzb() || !this.f17283j.zzb().zza(zzap.zzck)) {
            return m1711a(zzmVar, b, b2);
        }
        if (b == null) {
            dyVar = new C2744dy(this.f17283j, zzmVar.zza);
            dyVar.m2110a(this.f17283j.zzi().m1606e());
            dyVar.m2094e(b2);
        } else {
            dyVar = b;
            if (!b2.equals(b.m2087h())) {
                b.m2094e(b2);
                b.m2110a(this.f17283j.zzi().m1606e());
                dyVar = b;
            }
        }
        dyVar.m2105b(zzmVar.zzb);
        dyVar.m2101c(zzmVar.zzr);
        if (zzle.zzb() && this.f17283j.zzb().zze(dyVar.m2103c(), zzap.zzcc)) {
            dyVar.m2097d(zzmVar.zzv);
        }
        if (!TextUtils.isEmpty(zzmVar.zzk)) {
            dyVar.m2091f(zzmVar.zzk);
        }
        if (zzmVar.zze != 0) {
            dyVar.m2098d(zzmVar.zze);
        }
        if (!TextUtils.isEmpty(zzmVar.zzc)) {
            dyVar.m2088g(zzmVar.zzc);
        }
        dyVar.m2102c(zzmVar.zzj);
        if (zzmVar.zzd != null) {
            dyVar.m2085h(zzmVar.zzd);
        }
        dyVar.m2095e(zzmVar.zzf);
        dyVar.m2108a(zzmVar.zzh);
        if (!TextUtils.isEmpty(zzmVar.zzg)) {
            dyVar.m2082i(zzmVar.zzg);
        }
        dyVar.m2068p(zzmVar.zzl);
        dyVar.m2104b(zzmVar.zzo);
        dyVar.m2100c(zzmVar.zzp);
        if (this.f17283j.zzb().zze(zzmVar.zza, zzap.zzba)) {
            dyVar.m2111a(zzmVar.zzs);
        }
        dyVar.m2092f(zzmVar.zzt);
        if (dyVar.m2113a()) {
            zze().m2202a(dyVar);
        }
        return dyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m1696c() {
        C2744dy b;
        String str;
        zzey zzx;
        String str2;
        m1685k();
        m1704b();
        this.f17293t = true;
        try {
            this.f17283j.zzu();
            Boolean i = this.f17283j.zzw().m1746i();
            if (i == null) {
                zzx = this.f17283j.zzr().zzi();
                str2 = "Upload data called on the client side before use of service was decided";
            } else if (i.booleanValue()) {
                zzx = this.f17283j.zzr().zzf();
                str2 = "Upload called in the client side when service should be used";
            } else {
                if (this.f17287n <= 0) {
                    m1685k();
                    if (this.f17296w != null) {
                        zzx = this.f17283j.zzr().zzx();
                        str2 = "Uploading requested multiple times";
                    } else if (!zzd().zzf()) {
                        this.f17283j.zzr().zzx().zza("Network not connected, ignoring upload request");
                    } else {
                        long currentTimeMillis = this.f17283j.zzm().currentTimeMillis();
                        m1725a(currentTimeMillis - zzx.zzk());
                        long zza = this.f17283j.zzc().f16679c.zza();
                        if (zza != 0) {
                            this.f17283j.zzr().zzw().zza("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(currentTimeMillis - zza)));
                        }
                        String f = zze().m2169f();
                        if (!TextUtils.isEmpty(f)) {
                            if (this.f17298y == -1) {
                                this.f17298y = zze().m2157m();
                            }
                            List<Pair<zzbr.zzg, Long>> a = zze().m2196a(f, this.f17283j.zzb().zzb(f, zzap.zzg), Math.max(0, this.f17283j.zzb().zzb(f, zzap.zzh)));
                            if (!a.isEmpty()) {
                                Iterator<Pair<zzbr.zzg, Long>> it = a.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        str = null;
                                        break;
                                    }
                                    zzbr.zzg zzgVar = (zzbr.zzg) it.next().first;
                                    if (!TextUtils.isEmpty(zzgVar.zzad())) {
                                        str = zzgVar.zzad();
                                        break;
                                    }
                                }
                                List<Pair<zzbr.zzg, Long>> list = a;
                                if (str != null) {
                                    int i2 = 0;
                                    while (true) {
                                        list = a;
                                        if (i2 >= a.size()) {
                                            break;
                                        }
                                        zzbr.zzg zzgVar2 = (zzbr.zzg) a.get(i2).first;
                                        if (!(TextUtils.isEmpty(zzgVar2.zzad()) || zzgVar2.zzad().equals(str))) {
                                            list = a.subList(0, i2);
                                            break;
                                        }
                                        i2++;
                                    }
                                }
                                zzbr.zzf.zza zzb = zzbr.zzf.zzb();
                                int size = list.size();
                                ArrayList arrayList = new ArrayList(list.size());
                                boolean z = this.f17283j.zzb().zza(zzap.zza) && this.f17283j.zzb().zzd(f);
                                for (int i3 = 0; i3 < size; i3++) {
                                    zzbr.zzg.zza zzbm = ((zzbr.zzg) list.get(i3).first).zzbm();
                                    arrayList.add((Long) list.get(i3).second);
                                    zzbr.zzg.zza zza2 = zzbm.zzg(this.f17283j.zzb().zze()).zza(currentTimeMillis);
                                    this.f17283j.zzu();
                                    zza2.zzb(false);
                                    if (!z) {
                                        zzbm.zzn();
                                    }
                                    if (this.f17283j.zzb().zze(f, zzap.zzbf)) {
                                        zzbm.zzl(zzh().m1653a(((zzbr.zzg) ((zzfd) zzbm.zzu())).zzbi()));
                                    }
                                    zzb.zza(zzbm);
                                }
                                String a2 = this.f17283j.zzr().m1861a(2) ? zzh().m1668a((zzbr.zzf) ((zzfd) zzb.zzu())) : null;
                                zzh();
                                byte[] zzbi = ((zzbr.zzf) ((zzfd) zzb.zzu())).zzbi();
                                String zza3 = zzap.zzq.zza(null);
                                try {
                                    URL url = new URL(zza3);
                                    Preconditions.checkArgument(!arrayList.isEmpty());
                                    if (this.f17296w != null) {
                                        this.f17283j.zzr().zzf().zza("Set uploading progress before finishing the previous upload");
                                    } else {
                                        this.f17296w = new ArrayList(arrayList);
                                    }
                                    this.f17283j.zzc().f16680d.zza(currentTimeMillis);
                                    String str3 = "?";
                                    if (size > 0) {
                                        str3 = zzb.zza(0).zzx();
                                    }
                                    this.f17283j.zzr().zzx().zza("Uploading data. app, uncompressed size, data", str3, Integer.valueOf(zzbi.length), a2);
                                    this.f17292s = true;
                                    zzfa zzd = zzd();
                                    C2841hn hnVar = new C2841hn(this, f);
                                    zzd.zzd();
                                    zzd.m2024w();
                                    Preconditions.checkNotNull(url);
                                    Preconditions.checkNotNull(zzbi);
                                    Preconditions.checkNotNull(hnVar);
                                    zzd.zzq().zzb(new RunnableC2733dn(zzd, f, url, zzbi, null, hnVar));
                                } catch (MalformedURLException e) {
                                    this.f17283j.zzr().zzf().zza("Failed to parse upload URL. Not uploading. appId", zzew.m1855a(f), zza3);
                                }
                            }
                        } else {
                            this.f17298y = -1L;
                            String a3 = zze().m2209a(currentTimeMillis - zzx.zzk());
                            if (!TextUtils.isEmpty(a3) && (b = zze().m2184b(a3)) != null) {
                                m1718a(b);
                            }
                        }
                    }
                }
                m1682n();
            }
            zzx.zza(str2);
        } finally {
            this.f17293t = false;
            m1681o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final String m1693d(zzm zzmVar) {
        try {
            return (String) this.f17283j.zzq().zza(new CallableC2842ho(this, zzmVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.f17283j.zzr().zzf().zza("Failed to get app instance id. appId", zzew.m1855a(zzmVar.zza), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m1694d() {
        zzey zzf;
        Integer valueOf;
        Integer valueOf2;
        String str;
        m1685k();
        m1704b();
        if (!this.f17286m) {
            this.f17286m = true;
            m1685k();
            m1704b();
            if ((this.f17283j.zzb().zza(zzap.zzbc) || m1679q()) && m1680p()) {
                int a = m1705a(this.f17295v);
                int i = this.f17283j.zzy().m1878i();
                m1685k();
                if (a > i) {
                    zzf = this.f17283j.zzr().zzf();
                    valueOf = Integer.valueOf(a);
                    valueOf2 = Integer.valueOf(i);
                    str = "Panic: can't downgrade version. Previous, current version";
                } else if (a < i) {
                    if (m1726a(i, this.f17295v)) {
                        zzf = this.f17283j.zzr().zzx();
                        valueOf = Integer.valueOf(a);
                        valueOf2 = Integer.valueOf(i);
                        str = "Storage version upgraded. Previous, current version";
                    } else {
                        zzf = this.f17283j.zzr().zzf();
                        valueOf = Integer.valueOf(a);
                        valueOf2 = Integer.valueOf(i);
                        str = "Storage version upgrade failed. Previous, current version";
                    }
                }
                zzf.zza(str, valueOf, valueOf2);
            }
        }
        if (!this.f17285l && !this.f17283j.zzb().zza(zzap.zzbc)) {
            this.f17283j.zzr().zzv().zza("This instance being marked as an uploader");
            this.f17285l = true;
            m1682n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m1692e() {
        this.f17289p++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m1690f() {
        this.f17290q++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final zzga m1689g() {
        return this.f17283j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m1688h() {
        m1682n();
    }

    public final zzx zzb() {
        return this.f17283j.zzb();
    }

    public final zzfu zzc() {
        m1717a(this.f17275b);
        return this.f17275b;
    }

    public final zzfa zzd() {
        m1717a(this.f17276c);
        return this.f17276c;
    }

    public final C2692c zze() {
        m1717a(this.f17277d);
        return this.f17277d;
    }

    public final C2847ht zzf() {
        m1717a(this.f17280g);
        return this.f17280g;
    }

    public final C2792fs zzg() {
        m1717a(this.f17282i);
        return this.f17282i;
    }

    public final zzki zzh() {
        m1717a(this.f17281h);
        return this.f17281h;
    }

    public final zzeu zzi() {
        return this.f17283j.zzj();
    }

    public final zzkm zzj() {
        return this.f17283j.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final Clock zzm() {
        return this.f17283j.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final Context zzn() {
        return this.f17283j.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final zzft zzq() {
        return this.f17283j.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final zzew zzr() {
        return this.f17283j.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2763eq
    public final zzw zzu() {
        return this.f17283j.zzu();
    }
}
