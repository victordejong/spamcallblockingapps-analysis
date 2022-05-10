package p012b.p076s.p078b.p079a.p086s0.p091v;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.mp4.MdtaMetadataEntry;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.ApicFrame;
import androidx.media2.exoplayer.external.metadata.id3.CommentFrame;
import androidx.media2.exoplayer.external.metadata.id3.Id3Frame;
import androidx.media2.exoplayer.external.metadata.id3.InternalFrame;
import androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame;
import java.nio.ByteBuffer;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.C1354k;
/* renamed from: b.s.b.a.s0.v.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/g.class */
public final class C1410g {

    /* renamed from: a */
    public static final String[] f5662a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* renamed from: a */
    public static Format m33408a(int i, Format format, Metadata metadata, Metadata metadata2, C1354k kVar) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (kVar.m33612a()) {
                format3 = format.m38192a(kVar.f5338a, kVar.f5339b);
            }
            format2 = format3;
            if (metadata != null) {
                format2 = format3.m38188a(metadata);
            }
        } else {
            format2 = format;
            if (i == 2) {
                format2 = format;
                if (metadata2 != null) {
                    int i2 = 0;
                    while (true) {
                        format2 = format;
                        if (i2 >= metadata2.m38018a()) {
                            break;
                        }
                        Metadata.Entry a = metadata2.m38017a(i2);
                        format = format;
                        if (a instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) a;
                            format = format;
                            if ("com.android.capture.fps".equals(mdtaMetadataEntry.f1672a)) {
                                format = format;
                                if (mdtaMetadataEntry.f1675d == 23) {
                                    format = format;
                                    try {
                                        format = format.m38194a(ByteBuffer.wrap(mdtaMetadataEntry.f1673b).asFloatBuffer().get()).m38188a(new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                        C1175j.m34414d("MetadataUtil", "Ignoring invalid framerate");
                                    }
                                }
                            }
                        }
                        i2++;
                    }
                }
            }
        }
        return format2;
    }

    /* renamed from: a */
    public static MdtaMetadataEntry m33402a(C1184p pVar, int i, String str) {
        while (true) {
            int c = pVar.m34363c();
            if (c >= i) {
                return null;
            }
            int f = pVar.m34357f();
            if (pVar.m34357f() == 1684108385) {
                int f2 = pVar.m34357f();
                int f3 = pVar.m34357f();
                int i2 = f - 16;
                byte[] bArr = new byte[i2];
                pVar.m34366a(bArr, 0, i2);
                return new MdtaMetadataEntry(str, bArr, f3, f2);
            }
            pVar.m34358e(c + f);
        }
    }

    /* renamed from: a */
    public static ApicFrame m33404a(C1184p pVar) {
        int f = pVar.m34357f();
        if (pVar.m34357f() == 1684108385) {
            int b = AbstractC1392a.m33493b(pVar.m34357f());
            String str = b == 13 ? "image/jpeg" : b == 14 ? "image/png" : null;
            if (str == null) {
                StringBuilder sb = new StringBuilder(41);
                sb.append("Unrecognized cover art flags: ");
                sb.append(b);
                C1175j.m34414d("MetadataUtil", sb.toString());
                return null;
            }
            pVar.m34356f(4);
            int i = f - 16;
            byte[] bArr = new byte[i];
            pVar.m34366a(bArr, 0, i);
            return new ApicFrame(str, null, 3, bArr);
        }
        C1175j.m34414d("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    /* renamed from: a */
    public static CommentFrame m33407a(int i, C1184p pVar) {
        int f = pVar.m34357f();
        if (pVar.m34357f() == 1684108385) {
            pVar.m34356f(8);
            String a = pVar.m34371a(f - 16);
            return new CommentFrame("und", a, a);
        }
        String valueOf = String.valueOf(AbstractC1392a.m33494a(i));
        C1175j.m34414d("MetadataUtil", valueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(valueOf) : new String("Failed to parse comment attribute: "));
        return null;
    }

    /* renamed from: a */
    public static Id3Frame m33405a(int i, String str, C1184p pVar, boolean z, boolean z2) {
        int d = m33398d(pVar);
        int i2 = d;
        if (z2) {
            i2 = Math.min(1, d);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        String valueOf = String.valueOf(AbstractC1392a.m33494a(i));
        C1175j.m34414d("MetadataUtil", valueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(valueOf) : new String("Failed to parse uint8 attribute: "));
        return null;
    }

    /* renamed from: a */
    public static Id3Frame m33403a(C1184p pVar, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (pVar.m34363c() < i) {
            i2 = pVar.m34363c();
            int f = pVar.m34357f();
            int f2 = pVar.m34357f();
            pVar.m34356f(4);
            if (f2 == 1835360622) {
                str = pVar.m34371a(f - 12);
            } else if (f2 == 1851878757) {
                str2 = pVar.m34371a(f - 12);
            } else {
                if (f2 == 1684108385) {
                    i3 = f;
                }
                pVar.m34356f(f - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        pVar.m34358e(i2);
        pVar.m34356f(16);
        return new InternalFrame(str, str2, pVar.m34371a(i3 - 16));
    }

    /* renamed from: a */
    public static TextInformationFrame m33406a(int i, String str, C1184p pVar) {
        int f = pVar.m34357f();
        if (pVar.m34357f() == 1684108385 && f >= 22) {
            pVar.m34356f(10);
            int x = pVar.m34338x();
            if (x > 0) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(x);
                String sb2 = sb.toString();
                int x2 = pVar.m34338x();
                String str2 = sb2;
                if (x2 > 0) {
                    String valueOf = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 12);
                    sb3.append(valueOf);
                    sb3.append("/");
                    sb3.append(x2);
                    str2 = sb3.toString();
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        String valueOf2 = String.valueOf(AbstractC1392a.m33494a(i));
        C1175j.m34414d("MetadataUtil", valueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(valueOf2) : new String("Failed to parse index/count attribute: "));
        return null;
    }

    /* renamed from: b */
    public static Metadata.Entry m33400b(C1184p pVar) {
        int c = pVar.m34363c() + pVar.m34357f();
        int f = pVar.m34357f();
        int i = (f >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & f;
                if (i2 == 6516084) {
                    return m33407a(f, pVar);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return m33401b(f, "TIT2", pVar);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return m33401b(f, "TCOM", pVar);
                }
                if (i2 == 6578553) {
                    return m33401b(f, "TDRC", pVar);
                }
                if (i2 == 4280916) {
                    return m33401b(f, "TPE1", pVar);
                }
                if (i2 == 7630703) {
                    return m33401b(f, "TSSE", pVar);
                }
                if (i2 == 6384738) {
                    return m33401b(f, "TALB", pVar);
                }
                if (i2 == 7108978) {
                    return m33401b(f, "USLT", pVar);
                }
                if (i2 == 6776174) {
                    return m33401b(f, "TCON", pVar);
                }
                if (i2 == 6779504) {
                    return m33401b(f, "TIT1", pVar);
                }
            } else if (f == 1735291493) {
                return m33399c(pVar);
            } else {
                if (f == 1684632427) {
                    return m33406a(f, "TPOS", pVar);
                }
                if (f == 1953655662) {
                    return m33406a(f, "TRCK", pVar);
                }
                if (f == 1953329263) {
                    return m33405a(f, "TBPM", pVar, true, false);
                }
                if (f == 1668311404) {
                    return m33405a(f, "TCMP", pVar, true, true);
                }
                if (f == 1668249202) {
                    return m33404a(pVar);
                }
                if (f == 1631670868) {
                    return m33401b(f, "TPE2", pVar);
                }
                if (f == 1936682605) {
                    return m33401b(f, "TSOT", pVar);
                }
                if (f == 1936679276) {
                    return m33401b(f, "TSO2", pVar);
                }
                if (f == 1936679282) {
                    return m33401b(f, "TSOA", pVar);
                }
                if (f == 1936679265) {
                    return m33401b(f, "TSOP", pVar);
                }
                if (f == 1936679791) {
                    return m33401b(f, "TSOC", pVar);
                }
                if (f == 1920233063) {
                    return m33405a(f, "ITUNESADVISORY", pVar, false, false);
                }
                if (f == 1885823344) {
                    return m33405a(f, "ITUNESGAPLESS", pVar, false, true);
                }
                if (f == 1936683886) {
                    return m33401b(f, "TVSHOWSORT", pVar);
                }
                if (f == 1953919848) {
                    return m33401b(f, "TVSHOW", pVar);
                }
                if (f == 757935405) {
                    return m33403a(pVar, c);
                }
            }
            String valueOf = String.valueOf(AbstractC1392a.m33494a(f));
            C1175j.m34420a("MetadataUtil", valueOf.length() != 0 ? "Skipped unknown metadata entry: ".concat(valueOf) : new String("Skipped unknown metadata entry: "));
            pVar.m34358e(c);
            return null;
        } finally {
            pVar.m34358e(c);
        }
    }

    /* renamed from: b */
    public static TextInformationFrame m33401b(int i, String str, C1184p pVar) {
        int f = pVar.m34357f();
        if (pVar.m34357f() == 1684108385) {
            pVar.m34356f(8);
            return new TextInformationFrame(str, null, pVar.m34371a(f - 16));
        }
        String valueOf = String.valueOf(AbstractC1392a.m33494a(i));
        C1175j.m34414d("MetadataUtil", valueOf.length() != 0 ? "Failed to parse text attribute: ".concat(valueOf) : new String("Failed to parse text attribute: "));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame m33399c(p012b.p076s.p078b.p079a.p080a1.C1184p r6) {
        /*
            r0 = r6
            int r0 = m33398d(r0)
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x001c
            java.lang.String[] r0 = p012b.p076s.p078b.p079a.p086s0.p091v.C1410g.f5662a
            r6 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.length
            if (r0 > r1) goto L_0x001c
            r0 = r6
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r6 = r0
            goto L_0x001e
        L_0x001c:
            r0 = 0
            r6 = r0
        L_0x001e:
            r0 = r6
            if (r0 == 0) goto L_0x002f
            androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame r0 = new androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame
            r1 = r0
            java.lang.String r2 = "TCON"
            r3 = 0
            r4 = r6
            r1.<init>(r2, r3, r4)
            return r0
        L_0x002f:
            java.lang.String r0 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            p012b.p076s.p078b.p079a.p080a1.C1175j.m34414d(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1410g.m33399c(b.s.b.a.a1.p):androidx.media2.exoplayer.external.metadata.id3.TextInformationFrame");
    }

    /* renamed from: d */
    public static int m33398d(C1184p pVar) {
        pVar.m34356f(4);
        if (pVar.m34357f() == 1684108385) {
            pVar.m34356f(8);
            return pVar.m34344r();
        }
        C1175j.m34414d("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
