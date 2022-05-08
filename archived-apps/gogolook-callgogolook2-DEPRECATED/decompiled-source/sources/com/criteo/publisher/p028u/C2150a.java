package com.criteo.publisher.p028u;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.model.p021z.AbstractC2075n;
import com.criteo.publisher.model.p021z.AbstractC2080r;
import com.criteo.publisher.p020a0.C1910c;
import com.criteo.publisher.p020a0.C1914g;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p020a0.C1932t;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
/* renamed from: com.criteo.publisher.u.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/u/a.class */
public class C2150a implements AbstractC2154c {
    @NonNull

    /* renamed from: a */
    public final C1910c f2455a;
    @NonNull

    /* renamed from: b */
    public final C1925m f2456b;

    /* renamed from: com.criteo.publisher.u.a$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/u/a$b.class */
    public static class C2152b {
        @NonNull

        /* renamed from: a */
        public final PublisherAdRequest.Builder f2457a;

        public C2152b(@NonNull PublisherAdRequest.Builder builder) {
            this.f2457a = builder;
        }

        /* renamed from: a */
        public static boolean m35593a(@NonNull Object obj) {
            try {
                return obj instanceof PublisherAdRequest.Builder;
            } catch (LinkageError e) {
                return false;
            }
        }

        /* renamed from: a */
        public void m35592a(String str, String str2) {
            try {
                this.f2457a.addCustomTargeting(str, str2);
            } catch (LinkageError e) {
            }
        }
    }

    public C2150a(@NonNull C1910c cVar, @NonNull C1925m mVar) {
        this.f2455a = cVar;
        this.f2456b = mVar;
    }

    @NonNull
    /* renamed from: a */
    private String m35598a(@NonNull C2052w wVar) {
        boolean z = true;
        if (this.f2455a.m36043a() != 1) {
            z = false;
        }
        if (this.f2456b.m36010f()) {
            if (z && wVar.m35790i() >= 768 && wVar.m35795d() >= 1024) {
                return "768x1024";
            }
            if (!z && wVar.m35790i() >= 1024 && wVar.m35795d() >= 768) {
                return "1024x768";
            }
        }
        return z ? "320x480" : "480x320";
    }

    /* renamed from: a */
    private void m35597a(@NonNull C2152b bVar, @NonNull C2052w wVar) {
        AbstractC2075n f = wVar.m35793f();
        if (f != null) {
            AbstractC2080r m = f.m35744m();
            m35596a(bVar, m.mo35719g(), "crtn_title");
            m35596a(bVar, m.mo35723c(), "crtn_desc");
            m35596a(bVar, m.mo35720f(), "crtn_price");
            m35596a(bVar, m.mo35724b().toString(), "crtn_clickurl");
            m35596a(bVar, m.mo35726a(), "crtn_cta");
            m35596a(bVar, m.m35721e().toString(), "crtn_imageurl");
            m35596a(bVar, f.m35755b(), "crtn_advname");
            m35596a(bVar, f.m35754c(), "crtn_advdomain");
            m35596a(bVar, f.m35752e().toString(), "crtn_advlogourl");
            m35596a(bVar, f.m35753d().toString(), "crtn_advurl");
            m35596a(bVar, f.m35746k().toString(), "crtn_prurl");
            m35596a(bVar, f.m35745l().toString(), "crtn_primageurl");
            m35596a(bVar, f.m35747j(), "crtn_prtext");
            List<URL> f2 = f.m35751f();
            for (int i = 0; i < f2.size(); i++) {
                String url = f2.get(i).toString();
                m35596a(bVar, url, "crtn_pixurl_" + i);
            }
            bVar.m35592a("crtn_pixcount", f2.size() + "");
        }
    }

    /* renamed from: a */
    private void m35596a(@NonNull C2152b bVar, @Nullable String str, @NonNull String str2) {
        if (!C1932t.m35993a((CharSequence) str)) {
            bVar.m35592a(str2, m35595a(str));
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public String m35595a(@Nullable String str) {
        if (C1932t.m35993a((CharSequence) str)) {
            return null;
        }
        try {
            String a = m35594a(str.getBytes(Charset.forName("UTF-8")));
            String name = Charset.forName("UTF-8").name();
            return URLEncoder.encode(URLEncoder.encode(a, name), name);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public String m35594a(byte[] bArr) {
        return C1914g.m36038b(bArr, 2);
    }

    @Override // com.criteo.publisher.p028u.AbstractC2154c
    /* renamed from: a */
    public void mo35589a(@NonNull Object obj, @Nullable AdUnit adUnit, @NonNull C2052w wVar) {
        if (mo35590a(obj)) {
            C2152b bVar = new C2152b((PublisherAdRequest.Builder) obj);
            bVar.m35592a("crt_cpm", wVar.m35801a());
            if (wVar.m35789j()) {
                m35597a(bVar, wVar);
            } else if (adUnit instanceof BannerAdUnit) {
                m35596a(bVar, wVar.m35796c(), "crt_displayurl");
                bVar.m35592a("crt_size", wVar.m35790i() + "x" + wVar.m35795d());
            } else if (adUnit instanceof InterstitialAdUnit) {
                m35596a(bVar, wVar.m35796c(), "crt_displayurl");
                bVar.m35592a("crt_size", m35598a(wVar));
            }
        }
    }

    @Override // com.criteo.publisher.p028u.AbstractC2154c
    /* renamed from: a */
    public boolean mo35590a(@NonNull Object obj) {
        return C2152b.m35593a(obj);
    }
}
