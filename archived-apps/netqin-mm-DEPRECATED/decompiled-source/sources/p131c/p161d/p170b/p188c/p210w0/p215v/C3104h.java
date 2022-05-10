package p131c.p161d.p170b.p188c.p210w0.p215v;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.C3046k;
/* renamed from: c.d.b.c.w0.v.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/h.class */
public final class C3104h {

    /* renamed from: a */
    public static final String[] f11303a = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* renamed from: a */
    public static Format m27834a(int i, Format format, Metadata metadata, Metadata metadata2, C3046k kVar) {
        Format format2;
        if (i == 1) {
            Format format3 = format;
            if (kVar.m28045a()) {
                format3 = format.m18711a(kVar.f10972a, kVar.f10973b);
            }
            format2 = format3;
            if (metadata != null) {
                format2 = format3.m18706a(metadata);
            }
        } else {
            format2 = format;
            if (i == 2) {
                format2 = format;
                if (metadata2 != null) {
                    int i2 = 0;
                    while (true) {
                        format2 = format;
                        if (i2 >= metadata2.m18520a()) {
                            break;
                        }
                        Metadata.Entry a = metadata2.m18519a(i2);
                        format = format;
                        if (a instanceof MdtaMetadataEntry) {
                            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) a;
                            format = format;
                            if ("com.android.capture.fps".equals(mdtaMetadataEntry.f22052a)) {
                                format = format;
                                if (mdtaMetadataEntry.f22055d == 23) {
                                    format = format;
                                    try {
                                        format = format.m18713a(ByteBuffer.wrap(mdtaMetadataEntry.f22053b).asFloatBuffer().get()).m18706a(new Metadata(mdtaMetadataEntry));
                                    } catch (NumberFormatException e) {
                                        C2894o.m28594d("MetadataUtil", "Ignoring invalid framerate");
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
    public static MdtaMetadataEntry m27829a(C2904v vVar, int i, String str) {
        while (true) {
            int c = vVar.m28543c();
            if (c >= i) {
                return null;
            }
            int g = vVar.m28535g();
            if (vVar.m28535g() == 1684108385) {
                int g2 = vVar.m28535g();
                int g3 = vVar.m28535g();
                int i2 = g - 16;
                byte[] bArr = new byte[i2];
                vVar.m28546a(bArr, 0, i2);
                return new MdtaMetadataEntry(str, bArr, g3, g2);
            }
            vVar.m28538e(c + g);
        }
    }

    /* renamed from: a */
    public static ApicFrame m27831a(C2904v vVar) {
        int g = vVar.m28535g();
        if (vVar.m28535g() == 1684108385) {
            int b = AbstractC3087c.m27920b(vVar.m28535g());
            String str = b == 13 ? "image/jpeg" : b == 14 ? "image/png" : null;
            if (str == null) {
                C2894o.m28594d("MetadataUtil", "Unrecognized cover art flags: " + b);
                return null;
            }
            vVar.m28536f(4);
            int i = g - 16;
            byte[] bArr = new byte[i];
            vVar.m28546a(bArr, 0, i);
            return new ApicFrame(str, null, 3, bArr);
        }
        C2894o.m28594d("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    /* renamed from: a */
    public static CommentFrame m27835a(int i, C2904v vVar) {
        int g = vVar.m28535g();
        if (vVar.m28535g() == 1684108385) {
            vVar.m28536f(8);
            String a = vVar.m28551a(g - 16);
            return new CommentFrame("und", a, a);
        }
        C2894o.m28594d("MetadataUtil", "Failed to parse comment attribute: " + AbstractC3087c.m27921a(i));
        return null;
    }

    /* renamed from: a */
    public static Id3Frame m27832a(int i, String str, C2904v vVar, boolean z, boolean z2) {
        int d = m27825d(vVar);
        int i2 = d;
        if (z2) {
            i2 = Math.min(1, d);
        }
        if (i2 >= 0) {
            return z ? new TextInformationFrame(str, null, Integer.toString(i2)) : new CommentFrame("und", str, Integer.toString(i2));
        }
        C2894o.m28594d("MetadataUtil", "Failed to parse uint8 attribute: " + AbstractC3087c.m27921a(i));
        return null;
    }

    /* renamed from: a */
    public static Id3Frame m27830a(C2904v vVar, int i) {
        String str = null;
        String str2 = null;
        int i2 = -1;
        int i3 = -1;
        while (vVar.m28543c() < i) {
            i2 = vVar.m28543c();
            int g = vVar.m28535g();
            int g2 = vVar.m28535g();
            vVar.m28536f(4);
            if (g2 == 1835360622) {
                str = vVar.m28551a(g - 12);
            } else if (g2 == 1851878757) {
                str2 = vVar.m28551a(g - 12);
            } else {
                if (g2 == 1684108385) {
                    i3 = g;
                }
                vVar.m28536f(g - 12);
            }
        }
        if (str == null || str2 == null || i2 == -1) {
            return null;
        }
        vVar.m28538e(i2);
        vVar.m28536f(16);
        return new InternalFrame(str, str2, vVar.m28551a(i3 - 16));
    }

    /* renamed from: a */
    public static TextInformationFrame m27833a(int i, String str, C2904v vVar) {
        int g = vVar.m28535g();
        if (vVar.m28535g() == 1684108385 && g >= 22) {
            vVar.m28536f(10);
            int x = vVar.m28518x();
            if (x > 0) {
                String str2 = "" + x;
                int x2 = vVar.m28518x();
                String str3 = str2;
                if (x2 > 0) {
                    str3 = str2 + "/" + x2;
                }
                return new TextInformationFrame(str, null, str3);
            }
        }
        C2894o.m28594d("MetadataUtil", "Failed to parse index/count attribute: " + AbstractC3087c.m27921a(i));
        return null;
    }

    /* renamed from: b */
    public static Metadata.Entry m27827b(C2904v vVar) {
        int c = vVar.m28543c() + vVar.m28535g();
        int g = vVar.m28535g();
        int i = (g >> 24) & 255;
        try {
            if (i == 169 || i == 253) {
                int i2 = 16777215 & g;
                if (i2 == 6516084) {
                    return m27835a(g, vVar);
                }
                if (i2 == 7233901 || i2 == 7631467) {
                    return m27828b(g, "TIT2", vVar);
                }
                if (i2 == 6516589 || i2 == 7828084) {
                    return m27828b(g, "TCOM", vVar);
                }
                if (i2 == 6578553) {
                    return m27828b(g, "TDRC", vVar);
                }
                if (i2 == 4280916) {
                    return m27828b(g, "TPE1", vVar);
                }
                if (i2 == 7630703) {
                    return m27828b(g, "TSSE", vVar);
                }
                if (i2 == 6384738) {
                    return m27828b(g, "TALB", vVar);
                }
                if (i2 == 7108978) {
                    return m27828b(g, "USLT", vVar);
                }
                if (i2 == 6776174) {
                    return m27828b(g, "TCON", vVar);
                }
                if (i2 == 6779504) {
                    return m27828b(g, "TIT1", vVar);
                }
            } else if (g == 1735291493) {
                return m27826c(vVar);
            } else {
                if (g == 1684632427) {
                    return m27833a(g, "TPOS", vVar);
                }
                if (g == 1953655662) {
                    return m27833a(g, "TRCK", vVar);
                }
                if (g == 1953329263) {
                    return m27832a(g, "TBPM", vVar, true, false);
                }
                if (g == 1668311404) {
                    return m27832a(g, "TCMP", vVar, true, true);
                }
                if (g == 1668249202) {
                    return m27831a(vVar);
                }
                if (g == 1631670868) {
                    return m27828b(g, "TPE2", vVar);
                }
                if (g == 1936682605) {
                    return m27828b(g, "TSOT", vVar);
                }
                if (g == 1936679276) {
                    return m27828b(g, "TSO2", vVar);
                }
                if (g == 1936679282) {
                    return m27828b(g, "TSOA", vVar);
                }
                if (g == 1936679265) {
                    return m27828b(g, "TSOP", vVar);
                }
                if (g == 1936679791) {
                    return m27828b(g, "TSOC", vVar);
                }
                if (g == 1920233063) {
                    return m27832a(g, "ITUNESADVISORY", vVar, false, false);
                }
                if (g == 1885823344) {
                    return m27832a(g, "ITUNESGAPLESS", vVar, false, true);
                }
                if (g == 1936683886) {
                    return m27828b(g, "TVSHOWSORT", vVar);
                }
                if (g == 1953919848) {
                    return m27828b(g, "TVSHOW", vVar);
                }
                if (g == 757935405) {
                    return m27830a(vVar, c);
                }
            }
            C2894o.m28600a("MetadataUtil", "Skipped unknown metadata entry: " + AbstractC3087c.m27921a(g));
            vVar.m28538e(c);
            return null;
        } finally {
            vVar.m28538e(c);
        }
    }

    /* renamed from: b */
    public static TextInformationFrame m27828b(int i, String str, C2904v vVar) {
        int g = vVar.m28535g();
        if (vVar.m28535g() == 1684108385) {
            vVar.m28536f(8);
            return new TextInformationFrame(str, null, vVar.m28551a(g - 16));
        }
        C2894o.m28594d("MetadataUtil", "Failed to parse text attribute: " + AbstractC3087c.m27921a(i));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame m27826c(p131c.p161d.p170b.p188c.p203g1.C2904v r6) {
        /*
            r0 = r6
            int r0 = m27825d(r0)
            r7 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x001c
            java.lang.String[] r0 = p131c.p161d.p170b.p188c.p210w0.p215v.C3104h.f11303a
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
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r0 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            r1 = r0
            java.lang.String r2 = "TCON"
            r3 = 0
            r4 = r6
            r1.<init>(r2, r3, r4)
            return r0
        L_0x002f:
            java.lang.String r0 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            p131c.p161d.p170b.p188c.p203g1.C2894o.m28594d(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3104h.m27826c(c.d.b.c.g1.v):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    /* renamed from: d */
    public static int m27825d(C2904v vVar) {
        vVar.m28536f(4);
        if (vVar.m28535g() == 1684108385) {
            vVar.m28536f(8);
            return vVar.m28524r();
        }
        C2894o.m28594d("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }
}
