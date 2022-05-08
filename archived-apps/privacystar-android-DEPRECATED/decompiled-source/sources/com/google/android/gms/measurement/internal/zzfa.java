package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.support.p001v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.apptentive.android.sdk.util.Constants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgd;
import com.google.android.gms.internal.measurement.zzgf;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgh;
import com.google.android.gms.internal.measurement.zzgi;
import com.google.android.gms.internal.measurement.zzgl;
import com.privacystar.core.util.pdus.PduHeaders;
import com.zendesk.service.HttpConstants;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfa.class */
public class zzfa implements zzcq {
    private static volatile zzfa zzatc;
    private final zzbt zzadj;
    private zzbn zzatd;
    private zzat zzate;
    private zzq zzatf;
    private zzay zzatg;
    private zzew zzath;
    private zzj zzati;
    private final zzfg zzatj;
    private boolean zzatk;
    @VisibleForTesting
    private long zzatl;
    private List<Runnable> zzatm;
    private int zzatn;
    private int zzato;
    private boolean zzatp;
    private boolean zzatq;
    private boolean zzatr;
    private FileLock zzats;
    private FileChannel zzatt;
    private List<Long> zzatu;
    private List<Long> zzatv;
    private long zzatw;
    private boolean zzvz;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfa$zza.class */
    public final class zza implements zzs {
        zzgi zzaua;
        List<Long> zzaub;
        List<zzgf> zzauc;
        private long zzaud;

        private zza() {
        }

        /* synthetic */ zza(zzfa zzfaVar, zzfb zzfbVar) {
            this();
        }

        private static long zza(zzgf zzgfVar) {
            return ((zzgfVar.zzawu.longValue() / 1000) / 60) / 60;
        }

        @Override // com.google.android.gms.measurement.internal.zzs
        public final boolean zza(long j, zzgf zzgfVar) {
            Preconditions.checkNotNull(zzgfVar);
            if (this.zzauc == null) {
                this.zzauc = new ArrayList();
            }
            if (this.zzaub == null) {
                this.zzaub = new ArrayList();
            }
            if (this.zzauc.size() > 0 && zza(this.zzauc.get(0)) != zza(zzgfVar)) {
                return false;
            }
            long zzvu = this.zzaud + zzgfVar.zzvu();
            if (zzvu >= Math.max(0, zzaf.zzajl.get().intValue())) {
                return false;
            }
            this.zzaud = zzvu;
            this.zzauc.add(zzgfVar);
            this.zzaub.add(Long.valueOf(j));
            return this.zzauc.size() < Math.max(1, zzaf.zzajm.get().intValue());
        }

        @Override // com.google.android.gms.measurement.internal.zzs
        public final void zzb(zzgi zzgiVar) {
            Preconditions.checkNotNull(zzgiVar);
            this.zzaua = zzgiVar;
        }
    }

    private zzfa(zzff zzffVar) {
        this(zzffVar, null);
    }

    private zzfa(zzff zzffVar, zzbt zzbtVar) {
        this.zzvz = false;
        Preconditions.checkNotNull(zzffVar);
        this.zzadj = zzbt.zza(zzffVar.zzri, (zzak) null);
        this.zzatw = -1L;
        zzfg zzfgVar = new zzfg(this);
        zzfgVar.zzq();
        this.zzatj = zzfgVar;
        zzat zzatVar = new zzat(this);
        zzatVar.zzq();
        this.zzate = zzatVar;
        zzbn zzbnVar = new zzbn(this);
        zzbnVar.zzq();
        this.zzatd = zzbnVar;
        this.zzadj.zzgn().zzc(new zzfb(this, zzffVar));
    }

    @WorkerThread
    @VisibleForTesting
    private final int zza(FileChannel fileChannel) {
        int i;
        int read;
        zzaf();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzadj.zzgo().zzjd().zzbx("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            read = fileChannel.read(allocate);
        } catch (IOException e) {
            this.zzadj.zzgo().zzjd().zzg("Failed to read from channel", e);
            i = 0;
        }
        if (read == 4) {
            allocate.flip();
            i = allocate.getInt();
            return i;
        } else if (read == -1) {
            return 0;
        } else {
            this.zzadj.zzgo().zzjg().zzg("Unexpected data length. Bytes read", Integer.valueOf(read));
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.zzh zza(android.content.Context r27, java.lang.String r28, java.lang.String r29, boolean r30, boolean r31, boolean r32, long r33, java.lang.String r35) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zza(android.content.Context, java.lang.String, java.lang.String, boolean, boolean, boolean, long, java.lang.String):com.google.android.gms.measurement.internal.zzh");
    }

    private static void zza(zzez zzezVar) {
        if (zzezVar == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!zzezVar.isInitialized()) {
            String valueOf = String.valueOf(zzezVar.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zza(zzff zzffVar) {
        this.zzadj.zzgn().zzaf();
        zzq zzqVar = new zzq(this);
        zzqVar.zzq();
        this.zzatf = zzqVar;
        this.zzadj.zzgq().zza(this.zzatd);
        zzj zzjVar = new zzj(this);
        zzjVar.zzq();
        this.zzati = zzjVar;
        zzew zzewVar = new zzew(this);
        zzewVar.zzq();
        this.zzath = zzewVar;
        this.zzatg = new zzay(this);
        if (this.zzatn != this.zzato) {
            this.zzadj.zzgo().zzjd().zze("Not all upload components initialized", Integer.valueOf(this.zzatn), Integer.valueOf(this.zzato));
        }
        this.zzvz = true;
    }

    @WorkerThread
    @VisibleForTesting
    private final boolean zza(int i, FileChannel fileChannel) {
        zzaf();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzadj.zzgo().zzjd().zzbx("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() == 4) {
                return true;
            }
            this.zzadj.zzgo().zzjd().zzg("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            return true;
        } catch (IOException e) {
            this.zzadj.zzgo().zzjd().zzg("Failed to write to channel", e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v70, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [double] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zza(java.lang.String r13, com.google.android.gms.measurement.internal.zzad r14) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zza(java.lang.String, com.google.android.gms.measurement.internal.zzad):boolean");
    }

    private final zzgd[] zza(String str, zzgl[] zzglVarArr, zzgf[] zzgfVarArr) {
        Preconditions.checkNotEmpty(str);
        return zzjp().zza(str, zzgfVarArr, zzglVarArr);
    }

    @VisibleForTesting
    private static zzgg[] zza(zzgg[] zzggVarArr, int i) {
        zzgg[] zzggVarArr2 = new zzgg[zzggVarArr.length - 1];
        if (i > 0) {
            System.arraycopy(zzggVarArr, 0, zzggVarArr2, 0, i);
        }
        if (i < zzggVarArr2.length) {
            System.arraycopy(zzggVarArr, i + 1, zzggVarArr2, i, zzggVarArr2.length - i);
        }
        return zzggVarArr2;
    }

    @VisibleForTesting
    private static zzgg[] zza(zzgg[] zzggVarArr, int i, String str) {
        for (zzgg zzggVar : zzggVarArr) {
            if ("_err".equals(zzggVar.name)) {
                return zzggVarArr;
            }
        }
        zzgg[] zzggVarArr2 = new zzgg[zzggVarArr.length + 2];
        System.arraycopy(zzggVarArr, 0, zzggVarArr2, 0, zzggVarArr.length);
        zzgg zzggVar2 = new zzgg();
        zzggVar2.name = "_err";
        zzggVar2.zzawx = Long.valueOf(i);
        zzgg zzggVar3 = new zzgg();
        zzggVar3.name = "_ev";
        zzggVar3.zzamp = str;
        zzggVarArr2[zzggVarArr2.length - 2] = zzggVar2;
        zzggVarArr2[zzggVarArr2.length - 1] = zzggVar3;
        return zzggVarArr2;
    }

    @VisibleForTesting
    private static zzgg[] zza(zzgg[] zzggVarArr, @NonNull String str) {
        int i = 0;
        while (true) {
            if (i >= zzggVarArr.length) {
                i = -1;
                break;
            } else if (str.equals(zzggVarArr[i].name)) {
                break;
            } else {
                i++;
            }
        }
        return i < 0 ? zzggVarArr : zza(zzggVarArr, i);
    }

    @WorkerThread
    private final void zzaf() {
        this.zzadj.zzgn().zzaf();
    }

    @WorkerThread
    private final void zzb(zzg zzgVar) {
        ArrayMap arrayMap;
        zzaf();
        if (!TextUtils.isEmpty(zzgVar.getGmpAppId()) || (zzn.zzic() && !TextUtils.isEmpty(zzgVar.zzgw()))) {
            zzn zzgq = this.zzadj.zzgq();
            Uri.Builder builder = new Uri.Builder();
            String gmpAppId = zzgVar.getGmpAppId();
            String str = gmpAppId;
            if (TextUtils.isEmpty(gmpAppId)) {
                str = gmpAppId;
                if (zzn.zzic()) {
                    str = zzgVar.zzgw();
                }
            }
            Uri.Builder encodedAuthority = builder.scheme(zzaf.zzajh.get()).encodedAuthority(zzaf.zzaji.get());
            String valueOf = String.valueOf(str);
            encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", zzgVar.getAppInstanceId()).appendQueryParameter("platform", AbstractSpiCall.ANDROID_CLIENT_TYPE).appendQueryParameter("gmp_version", String.valueOf(zzgq.zzhc()));
            String uri = builder.build().toString();
            try {
                URL url = new URL(uri);
                this.zzadj.zzgo().zzjl().zzg("Fetching remote configuration", zzgVar.zzal());
                zzgb zzcf = zzln().zzcf(zzgVar.zzal());
                String zzcg = zzln().zzcg(zzgVar.zzal());
                if (zzcf == null || TextUtils.isEmpty(zzcg)) {
                    arrayMap = null;
                } else {
                    arrayMap = new ArrayMap();
                    arrayMap.put("If-Modified-Since", zzcg);
                }
                this.zzatp = true;
                zzat zzlo = zzlo();
                String zzal = zzgVar.zzal();
                zzfd zzfdVar = new zzfd(this);
                zzlo.zzaf();
                zzlo.zzcl();
                Preconditions.checkNotNull(url);
                Preconditions.checkNotNull(zzfdVar);
                zzlo.zzgn().zzd(new zzax(zzlo, zzal, url, null, arrayMap, zzfdVar));
            } catch (MalformedURLException e) {
                this.zzadj.zzgo().zzjd().zze("Failed to parse config URL. Not fetching. appId", zzap.zzbv(zzgVar.zzal()), uri);
            }
        } else {
            zzb(zzgVar.zzal(), HttpConstants.HTTP_NO_CONTENT, null, null, null);
        }
    }

    @WorkerThread
    private final Boolean zzc(zzg zzgVar) {
        try {
            if (zzgVar.zzha() != -2147483648L) {
                if (zzgVar.zzha() == Wrappers.packageManager(this.zzadj.getContext()).getPackageInfo(zzgVar.zzal(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzadj.getContext()).getPackageInfo(zzgVar.zzal(), 0).versionName;
                if (zzgVar.zzak() != null && zzgVar.zzak().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @WorkerThread
    private final zzh zzco(String str) {
        zzg zzbl = zzjq().zzbl(str);
        if (zzbl == null || TextUtils.isEmpty(zzbl.zzak())) {
            this.zzadj.zzgo().zzjk().zzg("No app data available; dropping", str);
            return null;
        }
        Boolean zzc = zzc(zzbl);
        if (zzc == null || zzc.booleanValue()) {
            return new zzh(str, zzbl.getGmpAppId(), zzbl.zzak(), zzbl.zzha(), zzbl.zzhb(), zzbl.zzhc(), zzbl.zzhd(), (String) null, zzbl.isMeasurementEnabled(), false, zzbl.getFirebaseInstanceId(), zzbl.zzhq(), 0L, 0, zzbl.zzhr(), zzbl.zzhs(), false, zzbl.zzgw());
        }
        this.zzadj.zzgo().zzjd().zzg("App version does not match; dropping. appId", zzap.zzbv(str));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x080c A[Catch: all -> 0x088a, TRY_LEAVE, TryCatch #1 {all -> 0x088a, blocks: (B:34:0x0148, B:36:0x015b, B:39:0x0169, B:41:0x0172, B:44:0x0181, B:49:0x01d3, B:51:0x01f1, B:56:0x0204, B:61:0x022b, B:63:0x0249, B:68:0x0275, B:73:0x02a7, B:75:0x02c5, B:78:0x02d3, B:80:0x02fe, B:82:0x0325, B:85:0x0336, B:86:0x0350, B:87:0x0353, B:89:0x0384, B:93:0x0399, B:96:0x03dc, B:98:0x03ff, B:100:0x041a, B:102:0x0457, B:106:0x0494, B:108:0x04a0, B:112:0x04d2, B:114:0x04dd, B:116:0x04f7, B:118:0x0505, B:120:0x050c, B:121:0x0529, B:123:0x053d, B:125:0x0544, B:127:0x055b, B:130:0x057f, B:132:0x0587, B:134:0x05a3, B:136:0x05ab, B:138:0x061e, B:140:0x0624, B:142:0x062b, B:145:0x0640, B:147:0x06e2, B:149:0x0711, B:151:0x071c, B:152:0x0776, B:154:0x0782, B:156:0x078d, B:158:0x0798, B:160:0x07a0, B:163:0x07b6, B:165:0x07e2, B:169:0x0800, B:171:0x080c, B:173:0x0815, B:175:0x082f, B:177:0x0843), top: B:186:0x0148, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0843 A[Catch: all -> 0x088a, TryCatch #1 {all -> 0x088a, blocks: (B:34:0x0148, B:36:0x015b, B:39:0x0169, B:41:0x0172, B:44:0x0181, B:49:0x01d3, B:51:0x01f1, B:56:0x0204, B:61:0x022b, B:63:0x0249, B:68:0x0275, B:73:0x02a7, B:75:0x02c5, B:78:0x02d3, B:80:0x02fe, B:82:0x0325, B:85:0x0336, B:86:0x0350, B:87:0x0353, B:89:0x0384, B:93:0x0399, B:96:0x03dc, B:98:0x03ff, B:100:0x041a, B:102:0x0457, B:106:0x0494, B:108:0x04a0, B:112:0x04d2, B:114:0x04dd, B:116:0x04f7, B:118:0x0505, B:120:0x050c, B:121:0x0529, B:123:0x053d, B:125:0x0544, B:127:0x055b, B:130:0x057f, B:132:0x0587, B:134:0x05a3, B:136:0x05ab, B:138:0x061e, B:140:0x0624, B:142:0x062b, B:145:0x0640, B:147:0x06e2, B:149:0x0711, B:151:0x071c, B:152:0x0776, B:154:0x0782, B:156:0x078d, B:158:0x0798, B:160:0x07a0, B:163:0x07b6, B:165:0x07e2, B:169:0x0800, B:171:0x080c, B:173:0x0815, B:175:0x082f, B:177:0x0843), top: B:186:0x0148, inners: #0 }] */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzd(com.google.android.gms.measurement.internal.zzad r17, com.google.android.gms.measurement.internal.zzh r18) {
        /*
            Method dump skipped, instructions count: 2196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zzd(com.google.android.gms.measurement.internal.zzad, com.google.android.gms.measurement.internal.zzh):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:495:0x10de, code lost:
        if (r18 != r0) goto L_0x10e1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04ca A[Catch: all -> 0x14f0, TRY_ENTER, TryCatch #9 {all -> 0x14f0, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01ea, B:70:0x026a, B:96:0x0373, B:105:0x03e0, B:113:0x0413, B:122:0x0457, B:140:0x04ca, B:142:0x04d3, B:144:0x04d9, B:151:0x04f7, B:153:0x052c, B:155:0x053b, B:157:0x0563, B:159:0x059f, B:166:0x05c2, B:168:0x05d0, B:171:0x05f4, B:173:0x060f, B:180:0x0640, B:184:0x0650, B:188:0x0660, B:200:0x06a8, B:202:0x06b0, B:204:0x06bb, B:209:0x06d9, B:211:0x06e7, B:214:0x06fa, B:216:0x0708, B:223:0x072c, B:226:0x078c, B:228:0x07e9, B:232:0x081d, B:234:0x0828, B:236:0x083c, B:238:0x084d, B:240:0x085c, B:242:0x0861, B:244:0x0877, B:247:0x088a, B:251:0x089a, B:253:0x08cf, B:258:0x090c, B:263:0x0924, B:272:0x094a, B:275:0x0969, B:276:0x097d, B:278:0x09a2, B:282:0x09bc, B:284:0x09cc, B:286:0x09d4, B:291:0x09f0, B:298:0x0a1c, B:300:0x0a27, B:302:0x0a32, B:307:0x0a67, B:309:0x0a74, B:313:0x0a82, B:315:0x0a8b, B:318:0x0a9e, B:323:0x0abc, B:325:0x0ae4, B:329:0x0af6, B:331:0x0b04, B:333:0x0b0c, B:336:0x0b18, B:338:0x0b2d, B:340:0x0b4e, B:341:0x0b59, B:343:0x0b77, B:346:0x0b90, B:348:0x0b9f, B:351:0x0bb6, B:353:0x0bcc, B:356:0x0bd7, B:357:0x0bf8, B:76:0x02a4), top: B:626:0x0007, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04d9 A[Catch: all -> 0x14f0, TryCatch #9 {all -> 0x14f0, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01ea, B:70:0x026a, B:96:0x0373, B:105:0x03e0, B:113:0x0413, B:122:0x0457, B:140:0x04ca, B:142:0x04d3, B:144:0x04d9, B:151:0x04f7, B:153:0x052c, B:155:0x053b, B:157:0x0563, B:159:0x059f, B:166:0x05c2, B:168:0x05d0, B:171:0x05f4, B:173:0x060f, B:180:0x0640, B:184:0x0650, B:188:0x0660, B:200:0x06a8, B:202:0x06b0, B:204:0x06bb, B:209:0x06d9, B:211:0x06e7, B:214:0x06fa, B:216:0x0708, B:223:0x072c, B:226:0x078c, B:228:0x07e9, B:232:0x081d, B:234:0x0828, B:236:0x083c, B:238:0x084d, B:240:0x085c, B:242:0x0861, B:244:0x0877, B:247:0x088a, B:251:0x089a, B:253:0x08cf, B:258:0x090c, B:263:0x0924, B:272:0x094a, B:275:0x0969, B:276:0x097d, B:278:0x09a2, B:282:0x09bc, B:284:0x09cc, B:286:0x09d4, B:291:0x09f0, B:298:0x0a1c, B:300:0x0a27, B:302:0x0a32, B:307:0x0a67, B:309:0x0a74, B:313:0x0a82, B:315:0x0a8b, B:318:0x0a9e, B:323:0x0abc, B:325:0x0ae4, B:329:0x0af6, B:331:0x0b04, B:333:0x0b0c, B:336:0x0b18, B:338:0x0b2d, B:340:0x0b4e, B:341:0x0b59, B:343:0x0b77, B:346:0x0b90, B:348:0x0b9f, B:351:0x0bb6, B:353:0x0bcc, B:356:0x0bd7, B:357:0x0bf8, B:76:0x02a4), top: B:626:0x0007, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04f7 A[Catch: all -> 0x14f0, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x14f0, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01ea, B:70:0x026a, B:96:0x0373, B:105:0x03e0, B:113:0x0413, B:122:0x0457, B:140:0x04ca, B:142:0x04d3, B:144:0x04d9, B:151:0x04f7, B:153:0x052c, B:155:0x053b, B:157:0x0563, B:159:0x059f, B:166:0x05c2, B:168:0x05d0, B:171:0x05f4, B:173:0x060f, B:180:0x0640, B:184:0x0650, B:188:0x0660, B:200:0x06a8, B:202:0x06b0, B:204:0x06bb, B:209:0x06d9, B:211:0x06e7, B:214:0x06fa, B:216:0x0708, B:223:0x072c, B:226:0x078c, B:228:0x07e9, B:232:0x081d, B:234:0x0828, B:236:0x083c, B:238:0x084d, B:240:0x085c, B:242:0x0861, B:244:0x0877, B:247:0x088a, B:251:0x089a, B:253:0x08cf, B:258:0x090c, B:263:0x0924, B:272:0x094a, B:275:0x0969, B:276:0x097d, B:278:0x09a2, B:282:0x09bc, B:284:0x09cc, B:286:0x09d4, B:291:0x09f0, B:298:0x0a1c, B:300:0x0a27, B:302:0x0a32, B:307:0x0a67, B:309:0x0a74, B:313:0x0a82, B:315:0x0a8b, B:318:0x0a9e, B:323:0x0abc, B:325:0x0ae4, B:329:0x0af6, B:331:0x0b04, B:333:0x0b0c, B:336:0x0b18, B:338:0x0b2d, B:340:0x0b4e, B:341:0x0b59, B:343:0x0b77, B:346:0x0b90, B:348:0x0b9f, B:351:0x0bb6, B:353:0x0bcc, B:356:0x0bd7, B:357:0x0bf8, B:76:0x02a4), top: B:626:0x0007, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0696  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x06a1  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x09d4 A[Catch: all -> 0x14f0, TryCatch #9 {all -> 0x14f0, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01ea, B:70:0x026a, B:96:0x0373, B:105:0x03e0, B:113:0x0413, B:122:0x0457, B:140:0x04ca, B:142:0x04d3, B:144:0x04d9, B:151:0x04f7, B:153:0x052c, B:155:0x053b, B:157:0x0563, B:159:0x059f, B:166:0x05c2, B:168:0x05d0, B:171:0x05f4, B:173:0x060f, B:180:0x0640, B:184:0x0650, B:188:0x0660, B:200:0x06a8, B:202:0x06b0, B:204:0x06bb, B:209:0x06d9, B:211:0x06e7, B:214:0x06fa, B:216:0x0708, B:223:0x072c, B:226:0x078c, B:228:0x07e9, B:232:0x081d, B:234:0x0828, B:236:0x083c, B:238:0x084d, B:240:0x085c, B:242:0x0861, B:244:0x0877, B:247:0x088a, B:251:0x089a, B:253:0x08cf, B:258:0x090c, B:263:0x0924, B:272:0x094a, B:275:0x0969, B:276:0x097d, B:278:0x09a2, B:282:0x09bc, B:284:0x09cc, B:286:0x09d4, B:291:0x09f0, B:298:0x0a1c, B:300:0x0a27, B:302:0x0a32, B:307:0x0a67, B:309:0x0a74, B:313:0x0a82, B:315:0x0a8b, B:318:0x0a9e, B:323:0x0abc, B:325:0x0ae4, B:329:0x0af6, B:331:0x0b04, B:333:0x0b0c, B:336:0x0b18, B:338:0x0b2d, B:340:0x0b4e, B:341:0x0b59, B:343:0x0b77, B:346:0x0b90, B:348:0x0b9f, B:351:0x0bb6, B:353:0x0bcc, B:356:0x0bd7, B:357:0x0bf8, B:76:0x02a4), top: B:626:0x0007, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0a1c A[Catch: all -> 0x14f0, TRY_ENTER, TryCatch #9 {all -> 0x14f0, blocks: (B:3:0x0007, B:5:0x000f, B:34:0x010d, B:58:0x01ea, B:70:0x026a, B:96:0x0373, B:105:0x03e0, B:113:0x0413, B:122:0x0457, B:140:0x04ca, B:142:0x04d3, B:144:0x04d9, B:151:0x04f7, B:153:0x052c, B:155:0x053b, B:157:0x0563, B:159:0x059f, B:166:0x05c2, B:168:0x05d0, B:171:0x05f4, B:173:0x060f, B:180:0x0640, B:184:0x0650, B:188:0x0660, B:200:0x06a8, B:202:0x06b0, B:204:0x06bb, B:209:0x06d9, B:211:0x06e7, B:214:0x06fa, B:216:0x0708, B:223:0x072c, B:226:0x078c, B:228:0x07e9, B:232:0x081d, B:234:0x0828, B:236:0x083c, B:238:0x084d, B:240:0x085c, B:242:0x0861, B:244:0x0877, B:247:0x088a, B:251:0x089a, B:253:0x08cf, B:258:0x090c, B:263:0x0924, B:272:0x094a, B:275:0x0969, B:276:0x097d, B:278:0x09a2, B:282:0x09bc, B:284:0x09cc, B:286:0x09d4, B:291:0x09f0, B:298:0x0a1c, B:300:0x0a27, B:302:0x0a32, B:307:0x0a67, B:309:0x0a74, B:313:0x0a82, B:315:0x0a8b, B:318:0x0a9e, B:323:0x0abc, B:325:0x0ae4, B:329:0x0af6, B:331:0x0b04, B:333:0x0b0c, B:336:0x0b18, B:338:0x0b2d, B:340:0x0b4e, B:341:0x0b59, B:343:0x0b77, B:346:0x0b90, B:348:0x0b9f, B:351:0x0bb6, B:353:0x0bcc, B:356:0x0bd7, B:357:0x0bf8, B:76:0x02a4), top: B:626:0x0007, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0af3  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0c7f A[Catch: all -> 0x14ea, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0cb0 A[Catch: all -> 0x14ea, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0ce6 A[Catch: all -> 0x14ea, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0f02 A[Catch: all -> 0x14ea, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0f1b  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0f23 A[Catch: all -> 0x14ea, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0f4b A[Catch: all -> 0x14ea, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:600:0x14c3 A[Catch: all -> 0x14ea, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x14ea, blocks: (B:362:0x0c25, B:365:0x0c42, B:367:0x0c74, B:369:0x0c7f, B:371:0x0c93, B:377:0x0cb0, B:380:0x0ce6, B:385:0x0d16, B:387:0x0d44, B:392:0x0d89, B:394:0x0d97, B:397:0x0dbf, B:399:0x0ddd, B:401:0x0de3, B:403:0x0def, B:405:0x0e09, B:407:0x0e0f, B:409:0x0e19, B:412:0x0e49, B:416:0x0e87, B:421:0x0ea1, B:423:0x0eaf, B:425:0x0eb7, B:428:0x0ec6, B:430:0x0ecc, B:433:0x0edb, B:435:0x0ee1, B:443:0x0f02, B:447:0x0f23, B:449:0x0f4b, B:452:0x0f64, B:455:0x0f82, B:457:0x0fc5, B:461:0x0fe4, B:465:0x0ff8, B:467:0x1000, B:469:0x1007, B:471:0x100e, B:474:0x1016, B:475:0x102b, B:476:0x1031, B:478:0x103b, B:480:0x104b, B:482:0x1066, B:484:0x106e, B:486:0x107c, B:487:0x109c, B:489:0x10b2, B:491:0x10b9, B:492:0x10c4, B:498:0x10ed, B:503:0x110e, B:505:0x1137, B:507:0x1152, B:509:0x115a, B:511:0x116b, B:514:0x1192, B:516:0x119a, B:520:0x11c1, B:522:0x11cc, B:524:0x11dd, B:527:0x11f0, B:529:0x11fa, B:531:0x121c, B:533:0x1235, B:535:0x1240, B:537:0x125e, B:539:0x126a, B:541:0x127c, B:542:0x1286, B:543:0x128c, B:545:0x12a5, B:546:0x12c3, B:548:0x12cc, B:551:0x12d8, B:553:0x12e4, B:559:0x1305, B:561:0x1311, B:563:0x135a, B:565:0x1361, B:567:0x137f, B:570:0x138a, B:571:0x1397, B:573:0x13a4, B:574:0x13b2, B:576:0x13ce, B:578:0x13da, B:580:0x1403, B:584:0x1414, B:586:0x141d, B:587:0x1436, B:589:0x145c, B:591:0x147a, B:593:0x1486, B:595:0x149f, B:597:0x14b4, B:600:0x14c3, B:607:0x14e0, B:610:0x14ef), top: B:618:0x000f, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0283 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:665:0x0ca8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0253 A[Catch: all -> 0x0274, SQLiteException -> 0x0278, TRY_ENTER, TRY_LEAVE, TryCatch #23 {SQLiteException -> 0x0278, all -> 0x0274, blocks: (B:68:0x0253, B:80:0x02b8), top: B:637:0x0250 }] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v14 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4, types: [long] */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Unknown variable types count: 3 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzd(java.lang.String r17, long r18) {
        /*
            Method dump skipped, instructions count: 5370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zzd(java.lang.String, long):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0218  */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzg zzg(com.google.android.gms.measurement.internal.zzh r6) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zzg(com.google.android.gms.measurement.internal.zzh):com.google.android.gms.measurement.internal.zzg");
    }

    private final zzbn zzln() {
        zza(this.zzatd);
        return this.zzatd;
    }

    private final zzay zzlp() {
        if (this.zzatg != null) {
            return this.zzatg;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzew zzlq() {
        zza(this.zzath);
        return this.zzath;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzls() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzbt r0 = r0.zzadj
            com.google.android.gms.common.util.Clock r0 = r0.zzbx()
            long r0 = r0.currentTimeMillis()
            r6 = r0
            r0 = r5
            com.google.android.gms.measurement.internal.zzbt r0 = r0.zzadj
            com.google.android.gms.measurement.internal.zzba r0 = r0.zzgp()
            r8 = r0
            r0 = r8
            r0.zzcl()
            r0 = r8
            r0.zzaf()
            r0 = r8
            com.google.android.gms.measurement.internal.zzbd r0 = r0.zzani
            long r0 = r0.get()
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004c
            r0 = 1
            r1 = r8
            com.google.android.gms.measurement.internal.zzfk r1 = r1.zzgm()
            java.security.SecureRandom r1 = r1.zzmd()
            r2 = 86400000(0x5265c00, float:7.82218E-36)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzbd r0 = r0.zzani
            r1 = r11
            r0.set(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zzls():long");
    }

    private final boolean zzlu() {
        zzaf();
        zzlr();
        return zzjq().zzii() || !TextUtils.isEmpty(zzjq().zzid());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0232  */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 5 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzlv() {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zzlv():void");
    }

    @WorkerThread
    private final void zzlw() {
        zzaf();
        if (this.zzatp || this.zzatq || this.zzatr) {
            this.zzadj.zzgo().zzjl().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzatp), Boolean.valueOf(this.zzatq), Boolean.valueOf(this.zzatr));
            return;
        }
        this.zzadj.zzgo().zzjl().zzbx("Stopping uploading service(s)");
        if (this.zzatm != null) {
            for (Runnable runnable : this.zzatm) {
                runnable.run();
            }
            this.zzatm.clear();
        }
    }

    @WorkerThread
    @VisibleForTesting
    private final boolean zzlx() {
        zzaf();
        try {
            this.zzatt = new RandomAccessFile(new File(this.zzadj.getContext().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzats = this.zzatt.tryLock();
            if (this.zzats != null) {
                this.zzadj.zzgo().zzjl().zzbx("Storage concurrent access okay");
                return true;
            }
            this.zzadj.zzgo().zzjd().zzbx("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            this.zzadj.zzgo().zzjd().zzg("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            this.zzadj.zzgo().zzjd().zzg("Failed to access storage lock file", e2);
            return false;
        }
    }

    @WorkerThread
    private final boolean zzlz() {
        zzaf();
        zzlr();
        return this.zzatk;
    }

    public static zzfa zzm(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzatc == null) {
            synchronized (zzfa.class) {
                try {
                    if (zzatc == null) {
                        zzatc = new zzfa(new zzff(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzatc;
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final Context getContext() {
        return this.zzadj.getContext();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void start() {
        this.zzadj.zzgn().zzaf();
        zzjq().zzif();
        if (this.zzadj.zzgp().zzane.get() == 0) {
            this.zzadj.zzgp().zzane.set(this.zzadj.zzbx().currentTimeMillis());
        }
        zzlv();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    @WorkerThread
    @VisibleForTesting
    public final void zza(int i, Throwable th, byte[] bArr, String str) {
        zzq zzjq;
        long longValue;
        zzaf();
        zzlr();
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.zzatq = false;
                zzlw();
            }
        }
        List<Long> list = this.zzatu;
        this.zzatu = null;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.zzadj.zzgp().zzane.set(this.zzadj.zzbx().currentTimeMillis());
                this.zzadj.zzgp().zzanf.set(0L);
                zzlv();
                this.zzadj.zzgo().zzjl().zze("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                zzjq().beginTransaction();
                try {
                    for (Long l : list) {
                        try {
                            zzjq = zzjq();
                            longValue = l.longValue();
                            zzjq.zzaf();
                            zzjq.zzcl();
                            try {
                            } catch (SQLiteException e) {
                                zzjq.zzgo().zzjd().zzg("Failed to delete a bundle in a queue table", e);
                                throw e;
                                break;
                            }
                        } catch (SQLiteException e2) {
                            if (this.zzatv == null || !this.zzatv.contains(l)) {
                                throw e2;
                            }
                        }
                        if (zzjq.getWritableDatabase().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                            break;
                        }
                        continue;
                    }
                    zzjq().setTransactionSuccessful();
                    zzjq().endTransaction();
                    this.zzatv = null;
                    if (!zzlo().zzfb() || !zzlu()) {
                        this.zzatw = -1L;
                        zzlv();
                    } else {
                        zzlt();
                    }
                    this.zzatl = 0L;
                } catch (Throwable th2) {
                    zzjq().endTransaction();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                this.zzadj.zzgo().zzjd().zzg("Database error while trying to delete uploaded bundles", e3);
                this.zzatl = this.zzadj.zzbx().elapsedRealtime();
                this.zzadj.zzgo().zzjl().zzg("Disable upload, time", Long.valueOf(this.zzatl));
            }
        } else {
            this.zzadj.zzgo().zzjl().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzadj.zzgp().zzanf.set(this.zzadj.zzbx().currentTimeMillis());
            boolean z = true;
            if (i != 503) {
                z = i == 429;
            }
            if (z) {
                this.zzadj.zzgp().zzang.set(this.zzadj.zzbx().currentTimeMillis());
            }
            if (this.zzadj.zzgq().zzaz(str)) {
                zzjq().zzc(list);
            }
            zzlv();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r25v3, types: [long] */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] zza(@android.support.annotation.NonNull com.google.android.gms.measurement.internal.zzad r17, @android.support.annotation.Size(min = 1) java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 1875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zza(com.google.android.gms.measurement.internal.zzad, java.lang.String):byte[]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzez zzezVar) {
        this.zzatn++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzb(zzfh zzfhVar, zzh zzhVar) {
        zzfj zzi;
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
        } else if (!this.zzadj.zzgq().zze(zzhVar.packageName, zzaf.zzalj) || !"_ap".equals(zzfhVar.name) || (zzi = zzjq().zzi(zzhVar.packageName, "_ap")) == null || !PduHeaders.MESSAGE_CLASS_AUTO_STR.equals(zzfhVar.origin) || PduHeaders.MESSAGE_CLASS_AUTO_STR.equals(zzi.origin)) {
            int zzcs = this.zzadj.zzgm().zzcs(zzfhVar.name);
            if (zzcs != 0) {
                this.zzadj.zzgm();
                this.zzadj.zzgm().zza(zzhVar.packageName, zzcs, "_ev", zzfk.zza(zzfhVar.name, 24, true), zzfhVar.name != null ? zzfhVar.name.length() : 0);
                return;
            }
            int zzi2 = this.zzadj.zzgm().zzi(zzfhVar.name, zzfhVar.getValue());
            if (zzi2 != 0) {
                this.zzadj.zzgm();
                String zza2 = zzfk.zza(zzfhVar.name, 24, true);
                Object value = zzfhVar.getValue();
                this.zzadj.zzgm().zza(zzhVar.packageName, zzi2, "_ev", zza2, (value == null || (!(value instanceof String) && !(value instanceof CharSequence))) ? 0 : String.valueOf(value).length());
                return;
            }
            Object zzj = this.zzadj.zzgm().zzj(zzfhVar.name, zzfhVar.getValue());
            if (zzj != null) {
                zzfj zzfjVar = new zzfj(zzhVar.packageName, zzfhVar.origin, zzfhVar.name, zzfhVar.zzaue, zzj);
                this.zzadj.zzgo().zzjk().zze("Setting user property", this.zzadj.zzgl().zzbu(zzfjVar.name), zzj);
                zzjq().beginTransaction();
                try {
                    zzg(zzhVar);
                    boolean zza3 = zzjq().zza(zzfjVar);
                    zzjq().setTransactionSuccessful();
                    if (zza3) {
                        this.zzadj.zzgo().zzjk().zze("User property set", this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                    } else {
                        this.zzadj.zzgo().zzjd().zze("Too many unique user properties are set. Ignoring user property", this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                        this.zzadj.zzgm().zza(zzhVar.packageName, 9, (String) null, (String) null, 0);
                    }
                } finally {
                    zzjq().endTransaction();
                }
            }
        } else {
            this.zzadj.zzgo().zzjk().zzbx("Not setting lower priority ad personalization property");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzb(zzl zzlVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzlVar);
        Preconditions.checkNotEmpty(zzlVar.packageName);
        Preconditions.checkNotNull(zzlVar.origin);
        Preconditions.checkNotNull(zzlVar.zzahb);
        Preconditions.checkNotEmpty(zzlVar.zzahb.name);
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        zzl zzlVar2 = new zzl(zzlVar);
        boolean z = false;
        zzlVar2.active = false;
        zzjq().beginTransaction();
        try {
            zzl zzj = zzjq().zzj(zzlVar2.packageName, zzlVar2.zzahb.name);
            if (zzj != null && !zzj.origin.equals(zzlVar2.origin)) {
                this.zzadj.zzgo().zzjg().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.origin, zzj.origin);
            }
            if (zzj != null && zzj.active) {
                zzlVar2.origin = zzj.origin;
                zzlVar2.creationTimestamp = zzj.creationTimestamp;
                zzlVar2.triggerTimeout = zzj.triggerTimeout;
                zzlVar2.triggerEventName = zzj.triggerEventName;
                zzlVar2.zzahd = zzj.zzahd;
                zzlVar2.active = zzj.active;
                zzlVar2.zzahb = new zzfh(zzlVar2.zzahb.name, zzj.zzahb.zzaue, zzlVar2.zzahb.getValue(), zzj.zzahb.origin);
            } else if (TextUtils.isEmpty(zzlVar2.triggerEventName)) {
                zzlVar2.zzahb = new zzfh(zzlVar2.zzahb.name, zzlVar2.creationTimestamp, zzlVar2.zzahb.getValue(), zzlVar2.zzahb.origin);
                zzlVar2.active = true;
                z = true;
            }
            if (zzlVar2.active) {
                zzfh zzfhVar = zzlVar2.zzahb;
                zzfj zzfjVar = new zzfj(zzlVar2.packageName, zzlVar2.origin, zzfhVar.name, zzfhVar.zzaue, zzfhVar.getValue());
                if (zzjq().zza(zzfjVar)) {
                    this.zzadj.zzgo().zzjk().zzd("User property updated immediately", zzlVar2.packageName, this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                } else {
                    this.zzadj.zzgo().zzjd().zzd("(2)Too many active user properties, ignoring", zzap.zzbv(zzlVar2.packageName), this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                }
                if (z && zzlVar2.zzahd != null) {
                    zzd(new zzad(zzlVar2.zzahd, zzlVar2.creationTimestamp), zzhVar);
                }
            }
            if (zzjq().zza(zzlVar2)) {
                this.zzadj.zzgo().zzjk().zzd("Conditional property added", zzlVar2.packageName, this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.zzahb.getValue());
            } else {
                this.zzadj.zzgo().zzjd().zzd("Too many conditional properties, ignoring", zzap.zzbv(zzlVar2.packageName), this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.zzahb.getValue());
            }
            zzjq().setTransactionSuccessful();
        } finally {
            zzjq().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    @VisibleForTesting
    public final void zzb(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        zzaf();
        zzlr();
        Preconditions.checkNotEmpty(str);
        byte[] bArr2 = bArr;
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } catch (Throwable th2) {
                this.zzatp = false;
                zzlw();
                throw th2;
            }
        }
        this.zzadj.zzgo().zzjl().zzg("onConfigFetched. Response size", Integer.valueOf(bArr2.length));
        zzjq().beginTransaction();
        zzg zzbl = zzjq().zzbl(str);
        boolean z = (i == 200 || i == 204 || i == 304) && th == null;
        if (zzbl == null) {
            this.zzadj.zzgo().zzjg().zzg("App does not exist in onConfigFetched. appId", zzap.zzbv(str));
        } else if (z || i == 404) {
            List<String> list = map != null ? map.get(HttpRequest.HEADER_LAST_MODIFIED) : null;
            String str2 = (list == null || list.size() <= 0) ? null : list.get(0);
            if (i == 404 || i == 304) {
                if (zzln().zzcf(str) == null && !zzln().zza(str, null, null)) {
                    zzjq().endTransaction();
                    this.zzatp = false;
                    zzlw();
                    return;
                }
            } else if (!zzln().zza(str, bArr2, str2)) {
                zzjq().endTransaction();
                this.zzatp = false;
                zzlw();
                return;
            }
            zzbl.zzy(this.zzadj.zzbx().currentTimeMillis());
            zzjq().zza(zzbl);
            if (i == 404) {
                this.zzadj.zzgo().zzji().zzg("Config not found. Using empty config. appId", str);
            } else {
                this.zzadj.zzgo().zzjl().zze("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
            }
            if (!zzlo().zzfb() || !zzlu()) {
                zzlv();
            } else {
                zzlt();
            }
        } else {
            zzbl.zzz(this.zzadj.zzbx().currentTimeMillis());
            zzjq().zza(zzbl);
            this.zzadj.zzgo().zzjl().zze("Fetching config failed. code, error", Integer.valueOf(i), th);
            zzln().zzch(str);
            this.zzadj.zzgp().zzanf.set(this.zzadj.zzbx().currentTimeMillis());
            boolean z2 = true;
            if (i != 503) {
                z2 = i == 429;
            }
            if (z2) {
                this.zzadj.zzgp().zzang.set(this.zzadj.zzbx().currentTimeMillis());
            }
            zzlv();
        }
        zzjq().setTransactionSuccessful();
        zzjq().endTransaction();
        this.zzatp = false;
        zzlw();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final Clock zzbx() {
        return this.zzadj.zzbx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzc(zzad zzadVar, zzh zzhVar) {
        List<zzl> list;
        List<zzl> list2;
        List<zzl> list3;
        Preconditions.checkNotNull(zzhVar);
        Preconditions.checkNotEmpty(zzhVar.packageName);
        zzaf();
        zzlr();
        String str = zzhVar.packageName;
        long j = zzadVar.zzaip;
        if (zzjo().zze(zzadVar, zzhVar)) {
            if (!zzhVar.zzagg) {
                zzg(zzhVar);
                return;
            }
            zzjq().beginTransaction();
            try {
                zzq zzjq = zzjq();
                Preconditions.checkNotEmpty(str);
                zzjq.zzaf();
                zzjq.zzcl();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    zzjq.zzgo().zzjg().zze("Invalid time querying timed out conditional properties", zzap.zzbv(str), Long.valueOf(j));
                    list = Collections.emptyList();
                } else {
                    list = zzjq.zzb("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzl zzlVar : list) {
                    if (zzlVar != null) {
                        this.zzadj.zzgo().zzjk().zzd("User property timed out", zzlVar.packageName, this.zzadj.zzgl().zzbu(zzlVar.zzahb.name), zzlVar.zzahb.getValue());
                        if (zzlVar.zzahc != null) {
                            zzd(new zzad(zzlVar.zzahc, j), zzhVar);
                        }
                        zzjq().zzk(str, zzlVar.zzahb.name);
                    }
                }
                zzq zzjq2 = zzjq();
                Preconditions.checkNotEmpty(str);
                zzjq2.zzaf();
                zzjq2.zzcl();
                if (i < 0) {
                    zzjq2.zzgo().zzjg().zze("Invalid time querying expired conditional properties", zzap.zzbv(str), Long.valueOf(j));
                    list2 = Collections.emptyList();
                } else {
                    list2 = zzjq2.zzb("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzl zzlVar2 : list2) {
                    if (zzlVar2 != null) {
                        this.zzadj.zzgo().zzjk().zzd("User property expired", zzlVar2.packageName, this.zzadj.zzgl().zzbu(zzlVar2.zzahb.name), zzlVar2.zzahb.getValue());
                        zzjq().zzh(str, zzlVar2.zzahb.name);
                        if (zzlVar2.zzahe != null) {
                            arrayList.add(zzlVar2.zzahe);
                        }
                        zzjq().zzk(str, zzlVar2.zzahb.name);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    zzd(new zzad((zzad) obj, j), zzhVar);
                }
                zzq zzjq3 = zzjq();
                String str2 = zzadVar.name;
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotEmpty(str2);
                zzjq3.zzaf();
                zzjq3.zzcl();
                if (i < 0) {
                    zzjq3.zzgo().zzjg().zzd("Invalid time querying triggered conditional properties", zzap.zzbv(str), zzjq3.zzgl().zzbs(str2), Long.valueOf(j));
                    list3 = Collections.emptyList();
                } else {
                    list3 = zzjq3.zzb("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList3 = new ArrayList(list3.size());
                for (zzl zzlVar3 : list3) {
                    if (zzlVar3 != null) {
                        zzfh zzfhVar = zzlVar3.zzahb;
                        zzfj zzfjVar = new zzfj(zzlVar3.packageName, zzlVar3.origin, zzfhVar.name, j, zzfhVar.getValue());
                        if (zzjq().zza(zzfjVar)) {
                            this.zzadj.zzgo().zzjk().zzd("User property triggered", zzlVar3.packageName, this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                        } else {
                            this.zzadj.zzgo().zzjd().zzd("Too many active user properties, ignoring", zzap.zzbv(zzlVar3.packageName), this.zzadj.zzgl().zzbu(zzfjVar.name), zzfjVar.value);
                        }
                        if (zzlVar3.zzahd != null) {
                            arrayList3.add(zzlVar3.zzahd);
                        }
                        zzlVar3.zzahb = new zzfh(zzfjVar);
                        zzlVar3.active = true;
                        zzjq().zza(zzlVar3);
                    }
                }
                zzd(zzadVar, zzhVar);
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList4.get(i3);
                    i3++;
                    zzd(new zzad((zzad) obj2, j), zzhVar);
                }
                zzjq().setTransactionSuccessful();
            } finally {
                zzjq().endTransaction();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzc(zzad zzadVar, String str) {
        zzg zzbl = zzjq().zzbl(str);
        if (zzbl == null || TextUtils.isEmpty(zzbl.zzak())) {
            this.zzadj.zzgo().zzjk().zzg("No app data available; dropping event", str);
            return;
        }
        Boolean zzc = zzc(zzbl);
        if (zzc == null) {
            if (!"_ui".equals(zzadVar.name)) {
                this.zzadj.zzgo().zzjg().zzg("Could not find package. appId", zzap.zzbv(str));
            }
        } else if (!zzc.booleanValue()) {
            this.zzadj.zzgo().zzjd().zzg("App version does not match; dropping event. appId", zzap.zzbv(str));
            return;
        }
        zzc(zzadVar, new zzh(str, zzbl.getGmpAppId(), zzbl.zzak(), zzbl.zzha(), zzbl.zzhb(), zzbl.zzhc(), zzbl.zzhd(), (String) null, zzbl.isMeasurementEnabled(), false, zzbl.getFirebaseInstanceId(), zzbl.zzhq(), 0L, 0, zzbl.zzhr(), zzbl.zzhs(), false, zzbl.zzgw()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzc(zzfh zzfhVar, zzh zzhVar) {
        zzfj zzi;
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
        } else if (!this.zzadj.zzgq().zze(zzhVar.packageName, zzaf.zzalj) || !"_ap".equals(zzfhVar.name) || (zzi = zzjq().zzi(zzhVar.packageName, "_ap")) == null || !PduHeaders.MESSAGE_CLASS_AUTO_STR.equals(zzfhVar.origin) || PduHeaders.MESSAGE_CLASS_AUTO_STR.equals(zzi.origin)) {
            this.zzadj.zzgo().zzjk().zzg("Removing user property", this.zzadj.zzgl().zzbu(zzfhVar.name));
            zzjq().beginTransaction();
            try {
                zzg(zzhVar);
                zzjq().zzh(zzhVar.packageName, zzfhVar.name);
                zzjq().setTransactionSuccessful();
                this.zzadj.zzgo().zzjk().zzg("User property removed", this.zzadj.zzgl().zzbu(zzfhVar.name));
            } finally {
                zzjq().endTransaction();
            }
        } else {
            this.zzadj.zzgo().zzjk().zzbx("Not removing higher priority ad personalization property");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzc(zzl zzlVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzlVar);
        Preconditions.checkNotEmpty(zzlVar.packageName);
        Preconditions.checkNotNull(zzlVar.zzahb);
        Preconditions.checkNotEmpty(zzlVar.zzahb.name);
        zzaf();
        zzlr();
        if (TextUtils.isEmpty(zzhVar.zzafx) && TextUtils.isEmpty(zzhVar.zzagk)) {
            return;
        }
        if (!zzhVar.zzagg) {
            zzg(zzhVar);
            return;
        }
        zzjq().beginTransaction();
        try {
            zzg(zzhVar);
            zzl zzj = zzjq().zzj(zzlVar.packageName, zzlVar.zzahb.name);
            if (zzj != null) {
                this.zzadj.zzgo().zzjk().zze("Removing conditional user property", zzlVar.packageName, this.zzadj.zzgl().zzbu(zzlVar.zzahb.name));
                zzjq().zzk(zzlVar.packageName, zzlVar.zzahb.name);
                if (zzj.active) {
                    zzjq().zzh(zzlVar.packageName, zzlVar.zzahb.name);
                }
                if (zzlVar.zzahe != null) {
                    Bundle bundle = null;
                    if (zzlVar.zzahe.zzaid != null) {
                        bundle = zzlVar.zzahe.zzaid.zziv();
                    }
                    zzd(this.zzadj.zzgm().zza(zzlVar.packageName, zzlVar.zzahe.name, bundle, zzj.origin, zzlVar.zzahe.zzaip, true, false), zzhVar);
                }
            } else {
                this.zzadj.zzgo().zzjg().zze("Conditional user property doesn't exist", zzap.zzbv(zzlVar.packageName), this.zzadj.zzgl().zzbu(zzlVar.zzahb.name));
            }
            zzjq().setTransactionSuccessful();
        } finally {
            zzjq().endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    @VisibleForTesting
    public final void zzd(zzh zzhVar) {
        if (this.zzatu != null) {
            this.zzatv = new ArrayList();
            this.zzatv.addAll(this.zzatu);
        }
        zzq zzjq = zzjq();
        String str = zzhVar.packageName;
        Preconditions.checkNotEmpty(str);
        zzjq.zzaf();
        zzjq.zzcl();
        try {
            SQLiteDatabase writableDatabase = zzjq.getWritableDatabase();
            String[] strArr = new String[1];
            strArr[0] = str;
            int delete = writableDatabase.delete("apps", "app_id=?", strArr) + 0 + writableDatabase.delete(Constants.PREF_KEY_RATING_EVENTS, "app_id=?", strArr) + writableDatabase.delete("user_attributes", "app_id=?", strArr) + writableDatabase.delete("conditional_properties", "app_id=?", strArr) + writableDatabase.delete("raw_events", "app_id=?", strArr) + writableDatabase.delete("raw_events_metadata", "app_id=?", strArr) + writableDatabase.delete("queue", "app_id=?", strArr) + writableDatabase.delete("audience_filter_values", "app_id=?", strArr) + writableDatabase.delete("main_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zzjq.zzgo().zzjl().zze("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzjq.zzgo().zzjd().zze("Error resetting analytics data. appId, error", zzap.zzbv(str), e);
        }
        zzh zza2 = zza(this.zzadj.getContext(), zzhVar.packageName, zzhVar.zzafx, zzhVar.zzagg, zzhVar.zzagi, zzhVar.zzagj, zzhVar.zzagx, zzhVar.zzagk);
        if (!this.zzadj.zzgq().zzbd(zzhVar.packageName) || zzhVar.zzagg) {
            zzf(zza2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zze(zzh zzhVar) {
        zzaf();
        zzlr();
        Preconditions.checkNotEmpty(zzhVar.packageName);
        zzg(zzhVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zze(zzl zzlVar) {
        zzh zzco = zzco(zzlVar.packageName);
        if (zzco != null) {
            zzb(zzlVar, zzco);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(com.google.android.gms.measurement.internal.zzh r8) {
        /*
            Method dump skipped, instructions count: 1560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfa.zzf(com.google.android.gms.measurement.internal.zzh):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzf(zzl zzlVar) {
        zzh zzco = zzco(zzlVar.packageName);
        if (zzco != null) {
            zzc(zzlVar, zzco);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzg(Runnable runnable) {
        zzaf();
        if (this.zzatm == null) {
            this.zzatm = new ArrayList();
        }
        this.zzatm.add(runnable);
    }

    public final zzan zzgl() {
        return this.zzadj.zzgl();
    }

    public final zzfk zzgm() {
        return this.zzadj.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzbo zzgn() {
        return this.zzadj.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzap zzgo() {
        return this.zzadj.zzgo();
    }

    public final zzn zzgq() {
        return this.zzadj.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzcq
    public final zzk zzgr() {
        return this.zzadj.zzgr();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzh(zzh zzhVar) {
        try {
            return (String) this.zzadj.zzgn().zzb(new zzfe(this, zzhVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zzadj.zzgo().zzjd().zze("Failed to get app instance id. appId", zzap.zzbv(zzhVar.packageName), e);
            return null;
        }
    }

    public final zzfg zzjo() {
        zza(this.zzatj);
        return this.zzatj;
    }

    public final zzj zzjp() {
        zza(this.zzati);
        return this.zzati;
    }

    public final zzq zzjq() {
        zza(this.zzatf);
        return this.zzatf;
    }

    public final zzat zzlo() {
        zza(this.zzate);
        return this.zzate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlr() {
        if (!this.zzvz) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzlt() {
        zzg zzbl;
        String str;
        zzaf();
        zzlr();
        this.zzatr = true;
        try {
            this.zzadj.zzgr();
            Boolean zzle = this.zzadj.zzgg().zzle();
            if (zzle == null) {
                this.zzadj.zzgo().zzjg().zzbx("Upload data called on the client side before use of service was decided");
            } else if (zzle.booleanValue()) {
                this.zzadj.zzgo().zzjd().zzbx("Upload called in the client side when service should be used");
            } else if (this.zzatl > 0) {
                zzlv();
            } else {
                zzaf();
                if (this.zzatu != null) {
                    this.zzadj.zzgo().zzjl().zzbx("Uploading requested multiple times");
                } else if (!zzlo().zzfb()) {
                    this.zzadj.zzgo().zzjl().zzbx("Network not connected, ignoring upload request");
                    zzlv();
                } else {
                    long currentTimeMillis = this.zzadj.zzbx().currentTimeMillis();
                    String str2 = null;
                    zzd((String) null, currentTimeMillis - zzn.zzhx());
                    long j = this.zzadj.zzgp().zzane.get();
                    if (j != 0) {
                        this.zzadj.zzgo().zzjk().zzg("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(currentTimeMillis - j)));
                    }
                    String zzid = zzjq().zzid();
                    if (!TextUtils.isEmpty(zzid)) {
                        if (this.zzatw == -1) {
                            this.zzatw = zzjq().zzik();
                        }
                        List<Pair<zzgi, Long>> zzb = zzjq().zzb(zzid, this.zzadj.zzgq().zzb(zzid, zzaf.zzajj), Math.max(0, this.zzadj.zzgq().zzb(zzid, zzaf.zzajk)));
                        if (!zzb.isEmpty()) {
                            Iterator<Pair<zzgi, Long>> it = zzb.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    str = null;
                                    break;
                                }
                                zzgi zzgiVar = (zzgi) it.next().first;
                                if (!TextUtils.isEmpty(zzgiVar.zzaxo)) {
                                    str = zzgiVar.zzaxo;
                                    break;
                                }
                            }
                            List<Pair<zzgi, Long>> list = zzb;
                            if (str != null) {
                                int i = 0;
                                while (true) {
                                    list = zzb;
                                    if (i >= zzb.size()) {
                                        break;
                                    }
                                    zzgi zzgiVar2 = (zzgi) zzb.get(i).first;
                                    if (!(TextUtils.isEmpty(zzgiVar2.zzaxo) || zzgiVar2.zzaxo.equals(str))) {
                                        list = zzb.subList(0, i);
                                        break;
                                    }
                                    i++;
                                }
                            }
                            zzgh zzghVar = new zzgh();
                            zzghVar.zzawy = new zzgi[list.size()];
                            ArrayList arrayList = new ArrayList(list.size());
                            boolean z = zzn.zzhz() && this.zzadj.zzgq().zzav(zzid);
                            for (int i2 = 0; i2 < zzghVar.zzawy.length; i2++) {
                                zzghVar.zzawy[i2] = (zzgi) list.get(i2).first;
                                arrayList.add((Long) list.get(i2).second);
                                zzghVar.zzawy[i2].zzaxn = Long.valueOf(this.zzadj.zzgq().zzhc());
                                zzghVar.zzawy[i2].zzaxd = Long.valueOf(currentTimeMillis);
                                zzgi zzgiVar3 = zzghVar.zzawy[i2];
                                this.zzadj.zzgr();
                                zzgiVar3.zzaxs = false;
                                if (!z) {
                                    zzghVar.zzawy[i2].zzaya = null;
                                }
                            }
                            if (this.zzadj.zzgo().isLoggable(2)) {
                                str2 = zzjo().zzb(zzghVar);
                            }
                            byte[] zza2 = zzjo().zza(zzghVar);
                            String str3 = zzaf.zzajt.get();
                            try {
                                URL url = new URL(str3);
                                Preconditions.checkArgument(!arrayList.isEmpty());
                                if (this.zzatu != null) {
                                    this.zzadj.zzgo().zzjd().zzbx("Set uploading progress before finishing the previous upload");
                                } else {
                                    this.zzatu = new ArrayList(arrayList);
                                }
                                this.zzadj.zzgp().zzanf.set(currentTimeMillis);
                                String str4 = "?";
                                if (zzghVar.zzawy.length > 0) {
                                    str4 = zzghVar.zzawy[0].zztt;
                                }
                                this.zzadj.zzgo().zzjl().zzd("Uploading data. app, uncompressed size, data", str4, Integer.valueOf(zza2.length), str2);
                                this.zzatq = true;
                                zzat zzlo = zzlo();
                                zzfc zzfcVar = new zzfc(this, zzid);
                                zzlo.zzaf();
                                zzlo.zzcl();
                                Preconditions.checkNotNull(url);
                                Preconditions.checkNotNull(zza2);
                                Preconditions.checkNotNull(zzfcVar);
                                zzlo.zzgn().zzd(new zzax(zzlo, zzid, url, zza2, null, zzfcVar));
                            } catch (MalformedURLException e) {
                                this.zzadj.zzgo().zzjd().zze("Failed to parse upload URL. Not uploading. appId", zzap.zzbv(zzid), str3);
                            }
                        }
                    } else {
                        this.zzatw = -1L;
                        String zzah = zzjq().zzah(currentTimeMillis - zzn.zzhx());
                        if (!TextUtils.isEmpty(zzah) && (zzbl = zzjq().zzbl(zzah)) != null) {
                            zzb(zzbl);
                        }
                    }
                }
            }
        } finally {
            this.zzatr = false;
            zzlw();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzly() {
        zzaf();
        zzlr();
        if (!this.zzatk) {
            this.zzadj.zzgo().zzjj().zzbx("This instance being marked as an uploader");
            zzaf();
            zzlr();
            if (zzlz() && zzlx()) {
                int zza2 = zza(this.zzatt);
                int zzja = this.zzadj.zzgf().zzja();
                zzaf();
                if (zza2 > zzja) {
                    this.zzadj.zzgo().zzjd().zze("Panic: can't downgrade version. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzja));
                } else if (zza2 < zzja) {
                    if (zza(zzja, this.zzatt)) {
                        this.zzadj.zzgo().zzjl().zze("Storage version upgraded. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzja));
                    } else {
                        this.zzadj.zzgo().zzjd().zze("Storage version upgrade failed. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzja));
                    }
                }
            }
            this.zzatk = true;
            zzlv();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzma() {
        this.zzato++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbt zzmb() {
        return this.zzadj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzo(boolean z) {
        zzlv();
    }
}
