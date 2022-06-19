package p193e.p194a.p947k.p948a.p964k;

import android.net.Uri;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24701h;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.k.l */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/l.class */
public abstract class AbstractC15836l implements AbstractC15863y {

    /* renamed from: e.a.k.a.k.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/l$a.class */
    public static final class C15837a extends AbstractC15836l {

        /* renamed from: a */
        public final PlayingBehaviour f44666a;

        /* renamed from: b */
        public final Uri f44667b;

        /* renamed from: c */
        public final C24701h f44668c;

        /* renamed from: d */
        public final VideoPlayerAnalyticsInfo f44669d = null;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15837a(PlayingBehaviour playingBehaviour, Uri uri, C24701h c24701h, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo, int i) {
            super(null);
            l.e(playingBehaviour, "playingBehaviour");
            l.e(uri, "uri");
            l.e(c24701h, "contentDataSource");
            this.f44666a = playingBehaviour;
            this.f44667b = uri;
            this.f44668c = c24701h;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15836l
        /* renamed from: a */
        public VideoPlayerAnalyticsInfo mo18263a() {
            return this.f44669d;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15836l
        /* renamed from: b */
        public PlayingBehaviour mo18262b() {
            return this.f44666a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15837a)) {
                    return false;
                }
                C15837a c15837a = (C15837a) obj;
                return l.a(this.f44666a, c15837a.f44666a) && l.a(this.f44667b, c15837a.f44667b) && l.a(this.f44668c, c15837a.f44668c) && l.a(this.f44669d, c15837a.f44669d);
            }
            return true;
        }

        public int hashCode() {
            PlayingBehaviour playingBehaviour = this.f44666a;
            int i = 0;
            int hashCode = playingBehaviour != null ? playingBehaviour.hashCode() : 0;
            Uri uri = this.f44667b;
            int hashCode2 = uri != null ? uri.hashCode() : 0;
            C24701h c24701h = this.f44668c;
            int hashCode3 = c24701h != null ? c24701h.hashCode() : 0;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = this.f44669d;
            if (videoPlayerAnalyticsInfo != null) {
                i = videoPlayerAnalyticsInfo.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("LocalDataUri(playingBehaviour=");
            m8728C.append(this.f44666a);
            m8728C.append(", uri=");
            m8728C.append(this.f44667b);
            m8728C.append(", contentDataSource=");
            m8728C.append(this.f44668c);
            m8728C.append(", analyticsInfo=");
            m8728C.append(this.f44669d);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.a.k.l$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/l$b.class */
    public static final class C15838b extends AbstractC15836l {
        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15836l
        /* renamed from: a */
        public VideoPlayerAnalyticsInfo mo18263a() {
            return null;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15836l
        /* renamed from: b */
        public PlayingBehaviour mo18262b() {
            return null;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15838b)) {
                    return false;
                }
                Objects.requireNonNull((C15838b) obj);
                return l.a((Object) null, (Object) null) && l.a((Object) null, (Object) null) && l.a((Object) null, (Object) null) && l.a((Object) null, (Object) null);
            }
            return true;
        }

        public int hashCode() {
            return 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("RawResourceDataUri(playingBehaviour=");
            sb.append((Object) null);
            sb.append(", uri=");
            sb.append((Object) null);
            sb.append(", rawResourceDataSource=");
            sb.append((Object) null);
            sb.append(", isBusiness=");
            sb.append(false);
            sb.append(", analyticsInfo=");
            return C22128a.m8634d(sb, null, ")");
        }
    }

    /* renamed from: e.a.k.a.k.l$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/l$c.class */
    public static final class C15839c extends AbstractC15836l {

        /* renamed from: a */
        public final PlayingBehaviour f44670a;

        /* renamed from: b */
        public final String f44671b;

        /* renamed from: c */
        public final String f44672c;

        /* renamed from: d */
        public final boolean f44673d;

        /* renamed from: e */
        public final String f44674e;

        /* renamed from: f */
        public final VideoPlayerAnalyticsInfo f44675f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15839c(PlayingBehaviour playingBehaviour, String str, String str2, boolean z, String str3, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo, int i) {
            super(null);
            str2 = (i & 4) != 0 ? null : str2;
            z = (i & 8) != 0 ? false : z;
            str3 = (i & 16) != 0 ? null : str3;
            videoPlayerAnalyticsInfo = (i & 32) != 0 ? null : videoPlayerAnalyticsInfo;
            l.e(playingBehaviour, "playingBehaviour");
            l.e(str, "url");
            this.f44670a = playingBehaviour;
            this.f44671b = str;
            this.f44672c = str2;
            this.f44673d = z;
            this.f44674e = str3;
            this.f44675f = videoPlayerAnalyticsInfo;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15836l
        /* renamed from: a */
        public VideoPlayerAnalyticsInfo mo18263a() {
            return this.f44675f;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15836l
        /* renamed from: b */
        public PlayingBehaviour mo18262b() {
            return this.f44670a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15839c)) {
                    return false;
                }
                C15839c c15839c = (C15839c) obj;
                return l.a(this.f44670a, c15839c.f44670a) && l.a(this.f44671b, c15839c.f44671b) && l.a(this.f44672c, c15839c.f44672c) && this.f44673d == c15839c.f44673d && l.a(this.f44674e, c15839c.f44674e) && l.a(this.f44675f, c15839c.f44675f);
            }
            return true;
        }

        public int hashCode() {
            PlayingBehaviour playingBehaviour = this.f44670a;
            int i = 0;
            int hashCode = playingBehaviour != null ? playingBehaviour.hashCode() : 0;
            String str = this.f44671b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f44672c;
            int hashCode3 = str2 != null ? str2.hashCode() : 0;
            boolean z = this.f44673d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            String str3 = this.f44674e;
            int hashCode4 = str3 != null ? str3.hashCode() : 0;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = this.f44675f;
            if (videoPlayerAnalyticsInfo != null) {
                i = videoPlayerAnalyticsInfo.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Url(playingBehaviour=");
            m8728C.append(this.f44670a);
            m8728C.append(", url=");
            m8728C.append(this.f44671b);
            m8728C.append(", identifier=");
            m8728C.append(this.f44672c);
            m8728C.append(", isBusiness=");
            m8728C.append(this.f44673d);
            m8728C.append(", businessNumber=");
            m8728C.append(this.f44674e);
            m8728C.append(", analyticsInfo=");
            m8728C.append(this.f44675f);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC15836l() {
    }

    public AbstractC15836l(f fVar) {
    }

    /* renamed from: a */
    public abstract VideoPlayerAnalyticsInfo mo18263a();

    /* renamed from: b */
    public abstract PlayingBehaviour mo18262b();
}
