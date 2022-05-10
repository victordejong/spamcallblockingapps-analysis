package androidx.media2.common;

import android.net.Uri;
import androidx.media2.common.MediaItem;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p042i.p053o.C0948h;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItem.class */
public class UriMediaItem extends MediaItem {

    /* renamed from: e */
    public Uri f1545e;

    /* renamed from: androidx.media2.common.UriMediaItem$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/UriMediaItem$a.class */
    public static final class C0279a extends MediaItem.C0273a {

        /* renamed from: d */
        public Uri f1546d;

        /* renamed from: e */
        public Map<String, String> f1547e;

        /* renamed from: f */
        public List<HttpCookie> f1548f;

        public C0279a(Uri uri) {
            this(uri, null, null);
        }

        public C0279a(Uri uri, Map<String, String> map, List<HttpCookie> list) {
            CookieHandler cookieHandler;
            C0948h.m35441a(uri, "uri cannot be null");
            this.f1546d = uri;
            if (list == null || (cookieHandler = CookieHandler.getDefault()) == null || (cookieHandler instanceof CookieManager)) {
                this.f1546d = uri;
                if (map != null) {
                    this.f1547e = new HashMap(map);
                }
                if (list != null) {
                    this.f1548f = new ArrayList(list);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("The cookie handler has to be of CookieManager type when cookies are provided");
        }

        @Override // androidx.media2.common.MediaItem.C0273a
        /* renamed from: a */
        public C0279a mo38200a(long j) {
            super.mo38200a(j);
            return this;
        }

        @Override // androidx.media2.common.MediaItem.C0273a
        /* renamed from: a */
        public C0279a mo38199a(MediaMetadata mediaMetadata) {
            super.mo38199a(mediaMetadata);
            return this;
        }

        @Override // androidx.media2.common.MediaItem.C0273a
        /* renamed from: a */
        public UriMediaItem mo38201a() {
            return new UriMediaItem(this);
        }

        @Override // androidx.media2.common.MediaItem.C0273a
        /* renamed from: b */
        public C0279a mo38198b(long j) {
            super.mo38198b(j);
            return this;
        }
    }

    public UriMediaItem() {
    }

    public UriMediaItem(C0279a aVar) {
        super(aVar);
        this.f1545e = aVar.f1546d;
        Map<String, String> map = aVar.f1547e;
        List<HttpCookie> list = aVar.f1548f;
    }

    /* renamed from: k */
    public Uri m38202k() {
        return this.f1545e;
    }
}
