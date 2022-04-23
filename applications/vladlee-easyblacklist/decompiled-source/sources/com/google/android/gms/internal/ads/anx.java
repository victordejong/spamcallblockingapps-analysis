package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.android.gms.internal.ads.zzle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anx.class */
final class anx {

    /* renamed from: a */
    private static final int f7950a = zzoq.zzbn("nam");

    /* renamed from: b */
    private static final int f7951b = zzoq.zzbn("trk");

    /* renamed from: c */
    private static final int f7952c = zzoq.zzbn("cmt");

    /* renamed from: d */
    private static final int f7953d = zzoq.zzbn("day");

    /* renamed from: e */
    private static final int f7954e = zzoq.zzbn("ART");

    /* renamed from: f */
    private static final int f7955f = zzoq.zzbn("too");

    /* renamed from: g */
    private static final int f7956g = zzoq.zzbn("alb");

    /* renamed from: h */
    private static final int f7957h = zzoq.zzbn("com");

    /* renamed from: i */
    private static final int f7958i = zzoq.zzbn("wrt");

    /* renamed from: j */
    private static final int f7959j = zzoq.zzbn("lyr");

    /* renamed from: k */
    private static final int f7960k = zzoq.zzbn("gen");

    /* renamed from: l */
    private static final int f7961l = zzoq.zzbn("covr");

    /* renamed from: m */
    private static final int f7962m = zzoq.zzbn("gnre");

    /* renamed from: n */
    private static final int f7963n = zzoq.zzbn("grp");

    /* renamed from: o */
    private static final int f7964o = zzoq.zzbn("disk");

    /* renamed from: p */
    private static final int f7965p = zzoq.zzbn("trkn");

    /* renamed from: q */
    private static final int f7966q = zzoq.zzbn("tmpo");

    /* renamed from: r */
    private static final int f7967r = zzoq.zzbn("cpil");

    /* renamed from: s */
    private static final int f7968s = zzoq.zzbn("aART");

    /* renamed from: t */
    private static final int f7969t = zzoq.zzbn("sonm");

    /* renamed from: u */
    private static final int f7970u = zzoq.zzbn("soal");

    /* renamed from: v */
    private static final int f7971v = zzoq.zzbn("soar");

    /* renamed from: w */
    private static final int f7972w = zzoq.zzbn("soaa");

    /* renamed from: x */
    private static final int f7973x = zzoq.zzbn("soco");

    /* renamed from: y */
    private static final int f7974y = zzoq.zzbn("rtng");

    /* renamed from: z */
    private static final int f7975z = zzoq.zzbn("pgap");

    /* renamed from: A */
    private static final int f7946A = zzoq.zzbn("sosn");

    /* renamed from: B */
    private static final int f7947B = zzoq.zzbn("tvsh");

    /* renamed from: C */
    private static final int f7948C = zzoq.zzbn("----");

    /* renamed from: D */
    private static final String[] f7949D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* renamed from: a */
    public static zzle.zza m4826a(zzoj zzojVar) {
        String str;
        zzlo zzloVar;
        int position = zzojVar.getPosition() + zzojVar.readInt();
        int readInt = zzojVar.readInt();
        int i = readInt >>> 24;
        zzlk zzlkVar = null;
        zzli zzliVar = null;
        try {
            if (i == 169 || i == 65533) {
                int i2 = 16777215 & readInt;
                if (i2 == f7952c) {
                    int readInt2 = zzojVar.readInt();
                    if (zzojVar.readInt() == anm.f7870ap) {
                        zzojVar.zzbf(8);
                        String zzbg = zzojVar.zzbg(readInt2 - 16);
                        zzlkVar = new zzlk("und", zzbg, zzbg);
                    } else {
                        String valueOf = String.valueOf(anm.m4849c(readInt));
                        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(valueOf) : new String("Failed to parse comment attribute: "));
                    }
                    return zzlkVar;
                }
                if (!(i2 == f7950a || i2 == f7951b)) {
                    if (!(i2 == f7957h || i2 == f7958i)) {
                        if (i2 == f7953d) {
                            return m4828a(readInt, "TDRC", zzojVar);
                        }
                        if (i2 == f7954e) {
                            return m4828a(readInt, "TPE1", zzojVar);
                        }
                        if (i2 == f7955f) {
                            return m4828a(readInt, "TSSE", zzojVar);
                        }
                        if (i2 == f7956g) {
                            return m4828a(readInt, "TALB", zzojVar);
                        }
                        if (i2 == f7959j) {
                            return m4828a(readInt, "USLT", zzojVar);
                        }
                        if (i2 == f7960k) {
                            return m4828a(readInt, "TCON", zzojVar);
                        }
                        if (i2 == f7963n) {
                            return m4828a(readInt, "TIT1", zzojVar);
                        }
                    }
                    return m4828a(readInt, "TCOM", zzojVar);
                }
                return m4828a(readInt, "TIT2", zzojVar);
            } else if (readInt == f7962m) {
                int b = m4824b(zzojVar);
                String str2 = (b <= 0 || b > f7949D.length) ? null : f7949D[b - 1];
                if (str2 != null) {
                    zzloVar = new zzlo("TCON", null, str2);
                } else {
                    Log.w("MetadataUtil", "Failed to parse standard genre code");
                    zzloVar = null;
                }
                return zzloVar;
            } else if (readInt == f7964o) {
                return m4825b(readInt, "TPOS", zzojVar);
            } else {
                if (readInt == f7965p) {
                    return m4825b(readInt, "TRCK", zzojVar);
                }
                if (readInt == f7966q) {
                    return m4827a(readInt, "TBPM", zzojVar, true, false);
                }
                if (readInt == f7967r) {
                    return m4827a(readInt, "TCMP", zzojVar, true, true);
                }
                if (readInt == f7961l) {
                    int readInt3 = zzojVar.readInt();
                    if (zzojVar.readInt() == anm.f7870ap) {
                        int b2 = anm.m4850b(zzojVar.readInt());
                        String str3 = b2 == 13 ? "image/jpeg" : b2 == 14 ? "image/png" : null;
                        if (str3 == null) {
                            StringBuilder sb = new StringBuilder(41);
                            sb.append("Unrecognized cover art flags: ");
                            sb.append(b2);
                            str = sb.toString();
                        } else {
                            zzojVar.zzbf(4);
                            byte[] bArr = new byte[readInt3 - 16];
                            zzojVar.zze(bArr, 0, bArr.length);
                            zzliVar = new zzli(str3, null, 3, bArr);
                            return zzliVar;
                        }
                    } else {
                        str = "Failed to parse cover art attribute";
                    }
                    Log.w("MetadataUtil", str);
                    return zzliVar;
                } else if (readInt == f7968s) {
                    return m4828a(readInt, "TPE2", zzojVar);
                } else {
                    if (readInt == f7969t) {
                        return m4828a(readInt, "TSOT", zzojVar);
                    }
                    if (readInt == f7970u) {
                        return m4828a(readInt, "TSO2", zzojVar);
                    }
                    if (readInt == f7971v) {
                        return m4828a(readInt, "TSOA", zzojVar);
                    }
                    if (readInt == f7972w) {
                        return m4828a(readInt, "TSOP", zzojVar);
                    }
                    if (readInt == f7973x) {
                        return m4828a(readInt, "TSOC", zzojVar);
                    }
                    if (readInt == f7974y) {
                        return m4827a(readInt, "ITUNESADVISORY", zzojVar, false, false);
                    }
                    if (readInt == f7975z) {
                        return m4827a(readInt, "ITUNESGAPLESS", zzojVar, false, true);
                    }
                    if (readInt == f7946A) {
                        return m4828a(readInt, "TVSHOWSORT", zzojVar);
                    }
                    if (readInt == f7947B) {
                        return m4828a(readInt, "TVSHOW", zzojVar);
                    }
                    if (readInt == f7948C) {
                        int i3 = -1;
                        int i4 = -1;
                        String str4 = null;
                        String str5 = null;
                        while (zzojVar.getPosition() < position) {
                            i3 = zzojVar.getPosition();
                            int readInt4 = zzojVar.readInt();
                            int readInt5 = zzojVar.readInt();
                            zzojVar.zzbf(4);
                            if (readInt5 == anm.f7868an) {
                                str4 = zzojVar.zzbg(readInt4 - 12);
                            } else if (readInt5 == anm.f7869ao) {
                                str5 = zzojVar.zzbg(readInt4 - 12);
                            } else {
                                if (readInt5 == anm.f7870ap) {
                                    i4 = readInt4;
                                }
                                zzojVar.zzbf(readInt4 - 12);
                            }
                        }
                        zzlk zzlkVar2 = null;
                        if ("com.apple.iTunes".equals(str4)) {
                            zzlkVar2 = null;
                            if ("iTunSMPB".equals(str5)) {
                                if (i3 == -1) {
                                    zzlkVar2 = null;
                                } else {
                                    zzojVar.zzbe(i3);
                                    zzojVar.zzbf(16);
                                    zzlkVar2 = new zzlk("und", str5, zzojVar.zzbg(i4 - 16));
                                }
                            }
                        }
                        return zzlkVar2;
                    }
                }
            }
            String valueOf2 = String.valueOf(anm.m4849c(readInt));
            Log.d("MetadataUtil", valueOf2.length() != 0 ? "Skipped unknown metadata entry: ".concat(valueOf2) : new String("Skipped unknown metadata entry: "));
            zzojVar.zzbe(position);
            return null;
        } finally {
            zzojVar.zzbe(position);
        }
    }

    /* renamed from: a */
    private static zzll m4827a(int i, String str, zzoj zzojVar, boolean z, boolean z2) {
        int b = m4824b(zzojVar);
        int i2 = b;
        if (z2) {
            i2 = Math.min(1, b);
        }
        if (i2 >= 0) {
            return z ? new zzlo(str, null, Integer.toString(i2)) : new zzlk("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(anm.m4849c(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: a */
    private static zzlo m4828a(int i, String str, zzoj zzojVar) {
        int readInt = zzojVar.readInt();
        if (zzojVar.readInt() == anm.f7870ap) {
            zzojVar.zzbf(8);
            return new zzlo(str, null, zzojVar.zzbg(readInt - 16));
        }
        String valueOf = String.valueOf(anm.m4849c(i));
        Log.w("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* renamed from: b */
    private static int m4824b(zzoj zzojVar) {
        zzojVar.zzbf(4);
        if (zzojVar.readInt() == anm.f7870ap) {
            zzojVar.zzbf(8);
            return zzojVar.readUnsignedByte();
        }
        Log.w("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    /* renamed from: b */
    private static zzlo m4825b(int i, String str, zzoj zzojVar) {
        int readInt = zzojVar.readInt();
        if (zzojVar.readInt() == anm.f7870ap && readInt >= 22) {
            zzojVar.zzbf(10);
            int readUnsignedShort = zzojVar.readUnsignedShort();
            if (readUnsignedShort > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(readUnsignedShort);
                String sb2 = sb.toString();
                int readUnsignedShort2 = zzojVar.readUnsignedShort();
                String str2 = sb2;
                if (readUnsignedShort2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(readUnsignedShort2);
                    str2 = sb3.toString();
                }
                return new zzlo(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(anm.m4849c(i));
        Log.w("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }
}
