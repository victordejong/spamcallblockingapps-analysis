package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcu.class */
public final class zzbcu extends zzbcn {

    /* renamed from: d */
    private static final Set<String> f11715d = Collections.synchronizedSet(new HashSet());

    /* renamed from: e */
    private static final DecimalFormat f11716e = new DecimalFormat("#,###");

    /* renamed from: f */
    private File f11717f;

    /* renamed from: g */
    private boolean f11718g;

    public zzbcu(zzbaz zzbazVar) {
        super(zzbazVar);
        File cacheDir = this.f11712a.getCacheDir();
        if (cacheDir == null) {
            zzavs.zzez("Context.getCacheDir() returned null");
            return;
        }
        this.f11717f = new File(cacheDir, "admobVideoStreams");
        if (!this.f11717f.isDirectory() && !this.f11717f.mkdirs()) {
            String valueOf = String.valueOf(this.f11717f.getAbsolutePath());
            zzavs.zzez(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.f11717f = null;
        } else if (!this.f11717f.setReadable(true, false) || !this.f11717f.setExecutable(true, false)) {
            String valueOf2 = String.valueOf(this.f11717f.getAbsolutePath());
            zzavs.zzez(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.f11717f = null;
        }
    }

    /* renamed from: a */
    private final File m4126a(File file) {
        return new File(this.f11717f, String.valueOf(file.getName()).concat(".done"));
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void abort() {
        this.f11718g = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x03e8, code lost:
        if ((r0 instanceof java.net.HttpURLConnection) == false) goto L_0x0491;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x03ef, code lost:
        r0 = r0.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03fe, code lost:
        if (r0 < 400) goto L_0x0491;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0401, code lost:
        r17 = "badUrl";
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x040a, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x041d, code lost:
        if (r0.length() == 0) goto L_0x0431;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0424, code lost:
        r20 = "HTTP request failed. Code: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0435, code lost:
        r20 = new java.lang.String("HTTP request failed. Code: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0444, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r8).length() + 32);
        r0.append("HTTP status code ");
        r0.append(r0);
        r0.append(" at ");
        r0.append(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x048b, code lost:
        throw new java.io.IOException(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x048c, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0491, code lost:
        r0 = r0.getContentLength();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x049a, code lost:
        if (r0 >= 0) goto L_0x04ff;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x04a1, code lost:
        r0 = java.lang.String.valueOf(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04b0, code lost:
        if (r0.length() == 0) goto L_0x04c4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x04b7, code lost:
        r17 = "Stream cache aborted, missing content-length header at ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04c8, code lost:
        r17 = new java.lang.String("Stream cache aborted, missing content-length header at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x04d8, code lost:
        com.google.android.gms.internal.ads.zzavs.zzez(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x04e1, code lost:
        zza(r8, r0.getAbsolutePath(), "contentLengthMissing", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x04f3, code lost:
        com.google.android.gms.internal.ads.zzbcu.f11715d.remove(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x04fe, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x04ff, code lost:
        r0 = com.google.android.gms.internal.ads.zzbcu.f11716e.format(r0);
        r0 = ((java.lang.Integer) com.google.android.gms.internal.ads.zzve.zzoy().zzd(com.google.android.gms.internal.ads.zzzn.zzcgv)).intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0523, code lost:
        if (r0 <= r0) goto L_0x05f3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x054e, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 33) + java.lang.String.valueOf(r8).length());
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x055f, code lost:
        r0.append("Content length ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x056c, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0578, code lost:
        r0.append(" exceeds limit at ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0585, code lost:
        r0.append(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0590, code lost:
        com.google.android.gms.internal.ads.zzavs.zzez(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x059c, code lost:
        r0 = java.lang.String.valueOf(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x05ac, code lost:
        if (r0.length() == 0) goto L_0x05c0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x05b3, code lost:
        r17 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x05c4, code lost:
        r17 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x05d4, code lost:
        zza(r8, r0.getAbsolutePath(), "sizeExceeded", r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x05e7, code lost:
        com.google.android.gms.internal.ads.zzbcu.f11715d.remove(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x05f2, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x05f3, code lost:
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 20) + java.lang.String.valueOf(r8).length());
        r0.append("Caching ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r8);
        com.google.android.gms.internal.ads.zzavs.zzea(r0.toString());
        r0 = java.nio.channels.Channels.newChannel(r0.getInputStream());
        r0 = new java.io.FileOutputStream(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0659, code lost:
        r0 = r0.getChannel();
        r0 = java.nio.ByteBuffer.allocate(1048576);
        r0 = com.google.android.gms.ads.internal.zzq.zzkx();
        r0 = r0.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0688, code lost:
        r10 = r0;
        r31 = r9;
        r17 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x06b0, code lost:
        r0 = new com.google.android.gms.internal.ads.zzaya(((java.lang.Long) com.google.android.gms.internal.ads.zzve.zzoy().zzd(com.google.android.gms.internal.ads.zzzn.zzcgy)).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x06d0, code lost:
        r0 = ((java.lang.Long) com.google.android.gms.internal.ads.zzve.zzoy().zzd(com.google.android.gms.internal.ads.zzzn.zzcgx)).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x06e4, code lost:
        r10 = r0;
        r31 = r9;
        r17 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x06ee, code lost:
        r0 = r0.read(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x06fb, code lost:
        if (r0 < 0) goto L_0x08ab;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x06fe, code lost:
        r15 = r15 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0709, code lost:
        if (r15 <= r0) goto L_0x0781;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x070c, code lost:
        r17 = "sizeExceeded";
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0715, code lost:
        r0 = java.lang.String.valueOf(java.lang.Integer.toString(r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0728, code lost:
        if (r0.length() == 0) goto L_0x0740;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x072f, code lost:
        r20 = "File too big for full file cache. Size: ".concat(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0744, code lost:
        r20 = new java.lang.String("File too big for full file cache. Size: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0763, code lost:
        throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0764, code lost:
        r31 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0769, code lost:
        r31 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x076b, code lost:
        r20 = null;
        r17 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x0774, code lost:
        r31 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x0781, code lost:
        r0.flip();
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x078e, code lost:
        if (r0.write(r0) > 0) goto L_0x0787;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0791, code lost:
        r0.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x07a8, code lost:
        if ((r0.currentTimeMillis() - r0) > (1000 * r0)) goto L_0x080a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x07af, code lost:
        if (r7.f11718g != false) goto L_0x07e9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x07b7, code lost:
        if (r0.tryAcquire() == false) goto L_0x06e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x07cc, code lost:
        com.google.android.gms.internal.ads.zzayk.zzyu.post(new com.google.android.gms.internal.ads.RunnableC1945ib(r7, r8, r0.getAbsolutePath(), r15, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x07e1, code lost:
        r17 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0809, code lost:
        throw new java.io.IOException("abort requested");
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x080a, code lost:
        r17 = "downloadTimeout";
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0813, code lost:
        r0 = java.lang.Long.toString(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0833, code lost:
        r0 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0841, code lost:
        r0.append("Timeout exceeded. Limit: ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x084e, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0859, code lost:
        r0.append(" sec");
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x0866, code lost:
        r20 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x087b, code lost:
        throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x087c, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x087e, code lost:
        r31 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x088e, code lost:
        r17 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x0896, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x0898, code lost:
        r17 = r20;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x08ae, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x08bb, code lost:
        if (com.google.android.gms.internal.ads.zzavs.isLoggable(3) == false) goto L_0x0928;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x08be, code lost:
        r0 = com.google.android.gms.internal.ads.zzbcu.f11716e.format(r15);
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r8).length());
        r0.append("Preloaded ");
        r0.append(r0);
        r0.append(" bytes from ");
        r0.append(r8);
        com.google.android.gms.internal.ads.zzavs.zzea(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x0913, code lost:
        r17 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x0915, code lost:
        r17 = r20;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0928, code lost:
        r0.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0939, code lost:
        if (r0.isFile() == false) goto L_0x0948;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x093c, code lost:
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0948, code lost:
        r0.createNewFile();
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0970, code lost:
        r17 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0985, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0990, code lost:
        r21 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0991, code lost:
        r31 = r0;
        r17 = r20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:346:0x09e9  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0a00  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0a37  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0a75  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0a8f  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0a9c  */
    /* JADX WARN: Type inference failed for: r0v566, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzbcn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzfi(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 2775
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcu.zzfi(java.lang.String):boolean");
    }
}
