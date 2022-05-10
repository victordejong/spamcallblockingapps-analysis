package p012b.p076s.p112c.p114g;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.UriMediaItem;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.upstream.RawResourceDataSource;
import java.io.IOException;
import java.net.SocketTimeoutException;
import p012b.p042i.p053o.C0948h;
import p012b.p076s.p078b.p079a.C1221c0;
import p012b.p076s.p078b.p079a.C1244l0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p083p0.C1271c;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.C1348e;
import p012b.p076s.p078b.p079a.p095t0.C1508g;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p102w0.C1584m;
import p012b.p076s.p078b.p079a.p102w0.p105n0.C1603i;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p112c.C1711c;
/* renamed from: b.s.c.g.d */
/* loaded from: classes-dex2jar.jar:b/s/c/g/d.class */
public class C1758d {

    /* renamed from: a */
    public static final AbstractC1353j f7084a;

    static {
        C1348e eVar = new C1348e();
        eVar.m33623a(1);
        f7084a = eVar;
    }

    /* renamed from: a */
    public static int m32245a(ExoPlaybackException exoPlaybackException) {
        if (exoPlaybackException.type != 0) {
            return 1;
        }
        IOException sourceException = exoPlaybackException.getSourceException();
        if (sourceException instanceof ParserException) {
            return -1007;
        }
        return (!(sourceException instanceof HttpDataSource.HttpDataSourceException) || !(sourceException.getCause() instanceof SocketTimeoutException)) ? -1004 : -110;
    }

    /* renamed from: a */
    public static MediaFormat m32244a(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        String str = format.f1562i;
        mediaFormat.setString("mime", str);
        int f = C1178m.m34404f(str);
        int i = 1;
        if (f == 1) {
            mediaFormat.setInteger("channel-count", format.f1575v);
            mediaFormat.setInteger("sample-rate", format.f1576w);
            String str2 = format.f1551A;
            if (str2 != null) {
                mediaFormat.setString("language", str2);
            }
        } else if (f == 2) {
            C1508g.m33080a(mediaFormat, "width", format.f1567n);
            C1508g.m33080a(mediaFormat, "height", format.f1568o);
            C1508g.m33081a(mediaFormat, "frame-rate", format.f1569p);
            C1508g.m33080a(mediaFormat, "rotation-degrees", format.f1570q);
            C1508g.m33082a(mediaFormat, format.f1574u);
        } else if (f == 3) {
            int i2 = format.f1556c == 4 ? 1 : 0;
            int i3 = format.f1556c == 1 ? 1 : 0;
            if (format.f1556c != 2) {
                i = 0;
            }
            mediaFormat.setInteger("is-autoselect", i2);
            mediaFormat.setInteger("is-default", i3);
            mediaFormat.setInteger("is-forced-subtitle", i);
            String str3 = format.f1551A;
            if (str3 == null) {
                mediaFormat.setString("language", "und");
            } else {
                mediaFormat.setString("language", str3);
            }
            if ("application/cea-608".equals(str)) {
                mediaFormat.setString("mime", "text/cea-608");
            } else if ("application/cea-708".equals(str)) {
                mediaFormat.setString("mime", "text/cea-708");
            }
        }
        return mediaFormat;
    }

    /* renamed from: a */
    public static AudioAttributesCompat m32243a(C1271c cVar) {
        AudioAttributesCompat.C0234a aVar = new AudioAttributesCompat.C0234a();
        aVar.m38307a(cVar.f5063a);
        aVar.m38306b(cVar.f5064b);
        aVar.m38304d(cVar.f5065c);
        return aVar.m38308a();
    }

    /* renamed from: a */
    public static C1221c0 m32242a(C1711c cVar) {
        Float d = cVar.m32303d();
        Float b = cVar.m32305b();
        float f = 1.0f;
        float floatValue = d != null ? d.floatValue() : 1.0f;
        if (b != null) {
            f = b.floatValue();
        }
        return new C1221c0(floatValue, f);
    }

    /* renamed from: a */
    public static C1244l0 m32248a(int i) {
        if (i == 0) {
            return C1244l0.f4941e;
        }
        if (i == 1) {
            return C1244l0.f4942f;
        }
        if (i == 2) {
            return C1244l0.f4940d;
        }
        if (i == 3) {
            return C1244l0.f4939c;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public static C1271c m32246a(AudioAttributesCompat audioAttributesCompat) {
        C1271c.C1273b bVar = new C1271c.C1273b();
        bVar.m33933a(audioAttributesCompat.m38311b());
        bVar.m33932b(audioAttributesCompat.m38309d());
        bVar.m33931c(audioAttributesCompat.m38315a());
        return bVar.m33934a();
    }

    /* renamed from: a */
    public static AbstractC1634r m32247a(Context context, AbstractC1684g.AbstractC1685a aVar, MediaItem mediaItem) {
        int i;
        if (mediaItem instanceof UriMediaItem) {
            Uri k = ((UriMediaItem) mediaItem).m38202k();
            if (C1167d0.m34485a(k) == 2) {
                C1603i.C1605b bVar = new C1603i.C1605b(aVar);
                bVar.m32676a(mediaItem);
                return bVar.m32677a(k);
            }
            Uri uri = k;
            if ("android.resource".equals(k.getScheme())) {
                String path = k.getPath();
                C0948h.m35442a(path);
                String str = path;
                boolean z = true;
                if (k.getPathSegments().size() != 1 || !k.getPathSegments().get(0).matches("\\d+")) {
                    String str2 = "";
                    String replaceAll = str.replaceAll("^/", "");
                    String host = k.getHost();
                    StringBuilder sb = new StringBuilder();
                    if (host != null) {
                        str2 = host + ":";
                    }
                    sb.append(str2);
                    sb.append(replaceAll);
                    i = context.getResources().getIdentifier(sb.toString(), "raw", context.getPackageName());
                } else {
                    i = Integer.parseInt(k.getPathSegments().get(0));
                }
                if (i == 0) {
                    z = false;
                }
                C0948h.m35437b(z);
                uri = RawResourceDataSource.m37900b(i);
            }
            C1584m.C1586b bVar2 = new C1584m.C1586b(aVar);
            bVar2.m32730a(f7084a);
            bVar2.m32729a(mediaItem);
            return bVar2.m32731a(uri);
        } else if (mediaItem instanceof FileMediaItem) {
            C1584m.C1586b bVar3 = new C1584m.C1586b(aVar);
            bVar3.m32730a(f7084a);
            bVar3.m32729a(mediaItem);
            return bVar3.m32731a(Uri.EMPTY);
        } else if (mediaItem instanceof CallbackMediaItem) {
            C1584m.C1586b bVar4 = new C1584m.C1586b(C1716a.m32296a(((CallbackMediaItem) mediaItem).m38241k()));
            bVar4.m32730a(f7084a);
            bVar4.m32729a(mediaItem);
            return bVar4.m32731a(Uri.EMPTY);
        } else {
            throw new IllegalStateException();
        }
    }
}
