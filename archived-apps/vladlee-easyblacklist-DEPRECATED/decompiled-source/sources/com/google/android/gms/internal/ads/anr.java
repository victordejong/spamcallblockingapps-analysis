package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzle;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anr.class */
final class anr {

    /* renamed from: a */
    private static final int f7923a = zzoq.zzbn("vide");

    /* renamed from: b */
    private static final int f7924b = zzoq.zzbn("soun");

    /* renamed from: c */
    private static final int f7925c = zzoq.zzbn("text");

    /* renamed from: d */
    private static final int f7926d = zzoq.zzbn("sbtl");

    /* renamed from: e */
    private static final int f7927e = zzoq.zzbn("subt");

    /* renamed from: f */
    private static final int f7928f = zzoq.zzbn("clcp");

    /* renamed from: g */
    private static final int f7929g = zzoq.zzbn("cenc");

    /* renamed from: h */
    private static final int f7930h = zzoq.zzbn("meta");

    /* renamed from: a */
    private static int m4837a(zzoj zzojVar) {
        int readUnsignedByte = zzojVar.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = zzojVar.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    /* renamed from: a */
    private static int m4835a(zzoj zzojVar, int i, int i2, ans ansVar, int i3) {
        int position = zzojVar.getPosition();
        while (true) {
            boolean z = false;
            if (position - i >= i2) {
                return 0;
            }
            zzojVar.zzbe(position);
            int readInt = zzojVar.readInt();
            zzoc.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (zzojVar.readInt() == anm.f7824M) {
                int i4 = position + 8;
                Pair pair = null;
                boolean z2 = false;
                Integer num = null;
                zzkr zzkrVar = null;
                while (i4 - position < readInt) {
                    zzojVar.zzbe(i4);
                    int readInt2 = zzojVar.readInt();
                    int readInt3 = zzojVar.readInt();
                    if (readInt3 == anm.f7830S) {
                        num = Integer.valueOf(zzojVar.readInt());
                        z2 = z2;
                    } else if (readInt3 == anm.f7825N) {
                        zzojVar.zzbf(4);
                        if (zzojVar.readInt() == f7929g) {
                            z2 = true;
                            num = num;
                        } else {
                            z2 = false;
                            num = num;
                        }
                    } else {
                        z2 = z2;
                        num = num;
                        if (readInt3 == anm.f7826O) {
                            int i5 = i4;
                            int i6 = 8;
                            while (true) {
                                int i7 = i5 + i6;
                                if (i7 - i4 >= readInt2) {
                                    zzkrVar = null;
                                    break;
                                }
                                zzojVar.zzbe(i7);
                                i6 = zzojVar.readInt();
                                if (zzojVar.readInt() == anm.f7827P) {
                                    zzojVar.zzbf(6);
                                    boolean z3 = zzojVar.readUnsignedByte() == 1;
                                    int readUnsignedByte = zzojVar.readUnsignedByte();
                                    byte[] bArr = new byte[16];
                                    zzojVar.zze(bArr, 0, 16);
                                    zzkrVar = new zzkr(z3, readUnsignedByte, bArr);
                                } else {
                                    i5 = i7;
                                }
                            }
                            num = num;
                            z2 = z2;
                        }
                    }
                    i4 += readInt2;
                }
                if (z2) {
                    zzoc.checkArgument(num != null, "frma atom is mandatory");
                    if (zzkrVar != null) {
                        z = true;
                    }
                    zzoc.checkArgument(z, "schi->tenc atom is mandatory");
                    pair = Pair.create(num, zzkrVar);
                }
                if (pair != null) {
                    ansVar.f7931a[i3] = (zzkr) pair.second;
                    return ((Integer) pair.first).intValue();
                }
            }
            position += readInt;
        }
    }

    /* renamed from: a */
    private static Pair<String, byte[]> m4836a(zzoj zzojVar, int i) {
        zzojVar.zzbe(i + 8 + 4);
        zzojVar.zzbf(1);
        m4837a(zzojVar);
        zzojVar.zzbf(2);
        int readUnsignedByte = zzojVar.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            zzojVar.zzbf(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            zzojVar.zzbf(zzojVar.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            zzojVar.zzbf(2);
        }
        zzojVar.zzbf(1);
        m4837a(zzojVar);
        int readUnsignedByte2 = zzojVar.readUnsignedByte();
        String str = null;
        if (readUnsignedByte2 == 32) {
            str = "video/mp4v-es";
        } else if (readUnsignedByte2 == 33) {
            str = "video/avc";
        } else if (readUnsignedByte2 != 35) {
            if (readUnsignedByte2 != 64) {
                if (readUnsignedByte2 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (readUnsignedByte2 == 165) {
                    str = "audio/ac3";
                } else if (readUnsignedByte2 != 166) {
                    switch (readUnsignedByte2) {
                        case 102:
                        case 103:
                        case 104:
                            break;
                        default:
                            switch (readUnsignedByte2) {
                                case 169:
                                case 172:
                                    return Pair.create("audio/vnd.dts", null);
                                case 170:
                                case 171:
                                    return Pair.create("audio/vnd.dts.hd", null);
                            }
                    }
                } else {
                    str = "audio/eac3";
                }
            }
            str = "audio/mp4a-latm";
        } else {
            str = "video/hevc";
        }
        zzojVar.zzbf(12);
        zzojVar.zzbf(1);
        int a = m4837a(zzojVar);
        byte[] bArr = new byte[a];
        zzojVar.zze(bArr, 0, a);
        return Pair.create(str, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11, types: [long] */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.aob m4838a(com.google.android.gms.internal.ads.zzks r11, com.google.android.gms.internal.ads.anp r12, com.google.android.gms.internal.ads.zzjh r13) {
        /*
            Method dump skipped, instructions count: 2315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.anr.m4838a(com.google.android.gms.internal.ads.zzks, com.google.android.gms.internal.ads.anp, com.google.android.gms.internal.ads.zzjh):com.google.android.gms.internal.ads.aob");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0134, code lost:
        if (r19 == 0) goto L_0x0112;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:279:0x07fd  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0856 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r19v12, types: [long] */
    /* JADX WARN: Type inference failed for: r19v15 */
    /* JADX WARN: Type inference failed for: r19v16 */
    /* JADX WARN: Type inference failed for: r32v0, types: [long] */
    /* JADX WARN: Type inference failed for: r32v5 */
    /* JADX WARN: Type inference failed for: r32v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzks m4839a(com.google.android.gms.internal.ads.anp r17, com.google.android.gms.internal.ads.ano r18, long r19, boolean r21) {
        /*
            Method dump skipped, instructions count: 3345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.anr.m4839a(com.google.android.gms.internal.ads.anp, com.google.android.gms.internal.ads.ano, long, boolean):com.google.android.gms.internal.ads.zzks");
    }

    /* renamed from: a */
    public static zzle m4840a(ano anoVar, boolean z) {
        if (z) {
            return null;
        }
        zzoj zzojVar = anoVar.f7910az;
        zzojVar.zzbe(8);
        while (zzojVar.zzin() >= 8) {
            int position = zzojVar.getPosition();
            int readInt = zzojVar.readInt();
            if (zzojVar.readInt() == anm.f7866al) {
                zzojVar.zzbe(position);
                zzojVar.zzbf(12);
                while (zzojVar.getPosition() < position + readInt) {
                    int position2 = zzojVar.getPosition();
                    int readInt2 = zzojVar.readInt();
                    if (zzojVar.readInt() == anm.f7867am) {
                        zzojVar.zzbe(position2);
                        zzojVar.zzbf(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzojVar.getPosition() < position2 + readInt2) {
                            zzle.zza a = anx.m4826a(zzojVar);
                            if (a != null) {
                                arrayList.add(a);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzle(arrayList);
                        }
                        return null;
                    }
                    zzojVar.zzbf(readInt2 - 8);
                }
                return null;
            }
            zzojVar.zzbf(readInt - 8);
        }
        return null;
    }
}
