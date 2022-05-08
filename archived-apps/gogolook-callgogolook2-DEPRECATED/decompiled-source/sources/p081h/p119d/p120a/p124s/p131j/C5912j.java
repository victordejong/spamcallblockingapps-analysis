package p081h.p119d.p120a.p124s.p131j;

import android.text.TextUtils;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: h.d.a.s.j.j */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/j.class */
public final class C5912j implements AbstractC5905e {

    /* renamed from: b */
    public final Map<String, List<AbstractC5911i>> f14846b;

    /* renamed from: c */
    public volatile Map<String, String> f14847c;

    /* renamed from: h.d.a.s.j.j$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/j$a.class */
    public static final class C5913a {

        /* renamed from: b */
        public static final String f14848b = System.getProperty("http.agent");

        /* renamed from: c */
        public static final Map<String, List<AbstractC5911i>> f14849c;

        /* renamed from: a */
        public Map<String, List<AbstractC5911i>> f14850a = f14849c;

        static {
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(f14848b)) {
                hashMap.put("User-Agent", Collections.singletonList(new C5914b(f14848b)));
            }
            hashMap.put("Accept-Encoding", Collections.singletonList(new C5914b(HlsPlaylistParser.KEYFORMAT_IDENTITY)));
            f14849c = Collections.unmodifiableMap(hashMap);
        }

        /* renamed from: a */
        public C5912j m24146a() {
            return new C5912j(this.f14850a);
        }
    }

    /* renamed from: h.d.a.s.j.j$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/j$b.class */
    public static final class C5914b implements AbstractC5911i {

        /* renamed from: a */
        public final String f14851a;

        public C5914b(String str) {
            this.f14851a = str;
        }

        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5911i
        /* renamed from: a */
        public String mo24145a() {
            return this.f14851a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C5914b) {
                return this.f14851a.equals(((C5914b) obj).f14851a);
            }
            return false;
        }

        public int hashCode() {
            return this.f14851a.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f14851a + "'}";
        }
    }

    public C5912j(Map<String, List<AbstractC5911i>> map) {
        this.f14846b = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    public final Map<String, String> m24147a() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<AbstractC5911i>> entry : this.f14846b.entrySet()) {
            StringBuilder sb = new StringBuilder();
            List<AbstractC5911i> value = entry.getValue();
            for (int i = 0; i < value.size(); i++) {
                sb.append(value.get(i).mo24145a());
                if (i != value.size() - 1) {
                    sb.append(',');
                }
            }
            hashMap.put(entry.getKey(), sb.toString());
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C5912j) {
            return this.f14846b.equals(((C5912j) obj).f14846b);
        }
        return false;
    }

    @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5905e
    public Map<String, String> getHeaders() {
        if (this.f14847c == null) {
            synchronized (this) {
                if (this.f14847c == null) {
                    this.f14847c = Collections.unmodifiableMap(m24147a());
                }
            }
        }
        return this.f14847c;
    }

    public int hashCode() {
        return this.f14846b.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f14846b + '}';
    }
}
