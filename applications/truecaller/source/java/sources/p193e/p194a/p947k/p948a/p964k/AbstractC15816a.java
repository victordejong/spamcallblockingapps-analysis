package p193e.p194a.p947k.p948a.p964k;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Number;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.k.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/a.class */
public abstract class AbstractC15816a implements AbstractC15863y {

    /* renamed from: e.a.k.a.k.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/a$a.class */
    public static final class C15817a extends AbstractC15816a {

        /* renamed from: a */
        public final AvatarXConfig f44612a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15817a(AvatarXConfig avatarXConfig) {
            super(null);
            l.e(avatarXConfig, "avatarXConfig");
            this.f44612a = avatarXConfig;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15816a
        /* renamed from: a */
        public VideoPlayerAnalyticsInfo mo18282a() {
            return null;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15816a
        /* renamed from: b */
        public AvatarXConfig mo18281b() {
            return this.f44612a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C15817a) && l.a(this.f44612a, ((C15817a) obj).f44612a);
            }
            return true;
        }

        public int hashCode() {
            AvatarXConfig avatarXConfig = this.f44612a;
            return avatarXConfig != null ? avatarXConfig.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("NoVideo(avatarXConfig=");
            m8728C.append(this.f44612a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.a.k.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/a$b.class */
    public static final class C15818b extends AbstractC15816a {

        /* renamed from: a */
        public final AvatarXConfig f44613a;

        /* renamed from: b */
        public final List<Number> f44614b;

        /* renamed from: c */
        public final PlayingBehaviour f44615c;

        /* renamed from: d */
        public final VideoPlayerAnalyticsInfo f44616d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C15818b(AvatarXConfig avatarXConfig, List<? extends Number> list, PlayingBehaviour playingBehaviour, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo) {
            super(null);
            l.e(avatarXConfig, "avatarXConfig");
            l.e(list, "numbers");
            l.e(playingBehaviour, "playingBehaviour");
            this.f44613a = avatarXConfig;
            this.f44614b = list;
            this.f44615c = playingBehaviour;
            this.f44616d = videoPlayerAnalyticsInfo;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15816a
        /* renamed from: a */
        public VideoPlayerAnalyticsInfo mo18282a() {
            return this.f44616d;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15816a
        /* renamed from: b */
        public AvatarXConfig mo18281b() {
            return this.f44613a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15818b)) {
                    return false;
                }
                C15818b c15818b = (C15818b) obj;
                return l.a(this.f44613a, c15818b.f44613a) && l.a(this.f44614b, c15818b.f44614b) && l.a(this.f44615c, c15818b.f44615c) && l.a(this.f44616d, c15818b.f44616d);
            }
            return true;
        }

        public int hashCode() {
            AvatarXConfig avatarXConfig = this.f44613a;
            int i = 0;
            int hashCode = avatarXConfig != null ? avatarXConfig.hashCode() : 0;
            List<Number> list = this.f44614b;
            int hashCode2 = list != null ? list.hashCode() : 0;
            PlayingBehaviour playingBehaviour = this.f44615c;
            int hashCode3 = playingBehaviour != null ? playingBehaviour.hashCode() : 0;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = this.f44616d;
            if (videoPlayerAnalyticsInfo != null) {
                i = videoPlayerAnalyticsInfo.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Numbers(avatarXConfig=");
            m8728C.append(this.f44613a);
            m8728C.append(", numbers=");
            m8728C.append(this.f44614b);
            m8728C.append(", playingBehaviour=");
            m8728C.append(this.f44615c);
            m8728C.append(", analyticsInfo=");
            m8728C.append(this.f44616d);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.k.a.k.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/a$c.class */
    public static final class C15819c extends AbstractC15816a {

        /* renamed from: a */
        public final AvatarXConfig f44617a;

        /* renamed from: b */
        public final String f44618b;

        /* renamed from: c */
        public final PlayingBehaviour f44619c;

        /* renamed from: d */
        public final boolean f44620d;

        /* renamed from: e */
        public final String f44621e;

        /* renamed from: f */
        public final String f44622f;

        /* renamed from: g */
        public final VideoPlayerAnalyticsInfo f44623g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15819c(AvatarXConfig avatarXConfig, String str, PlayingBehaviour playingBehaviour, boolean z, String str2, String str3, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo) {
            super(null);
            l.e(avatarXConfig, "avatarXConfig");
            l.e(str, "url");
            l.e(playingBehaviour, "playingBehaviour");
            this.f44617a = avatarXConfig;
            this.f44618b = str;
            this.f44619c = playingBehaviour;
            this.f44620d = z;
            this.f44621e = str2;
            this.f44622f = str3;
            this.f44623g = videoPlayerAnalyticsInfo;
        }

        public /* synthetic */ C15819c(AvatarXConfig avatarXConfig, String str, PlayingBehaviour playingBehaviour, boolean z, String str2, String str3, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo, int i) {
            this(avatarXConfig, str, playingBehaviour, (i & 8) != 0 ? false : z, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : videoPlayerAnalyticsInfo);
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15816a
        /* renamed from: a */
        public VideoPlayerAnalyticsInfo mo18282a() {
            return this.f44623g;
        }

        @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15816a
        /* renamed from: b */
        public AvatarXConfig mo18281b() {
            return this.f44617a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C15819c)) {
                    return false;
                }
                C15819c c15819c = (C15819c) obj;
                return l.a(this.f44617a, c15819c.f44617a) && l.a(this.f44618b, c15819c.f44618b) && l.a(this.f44619c, c15819c.f44619c) && this.f44620d == c15819c.f44620d && l.a(this.f44621e, c15819c.f44621e) && l.a(this.f44622f, c15819c.f44622f) && l.a(this.f44623g, c15819c.f44623g);
            }
            return true;
        }

        public int hashCode() {
            AvatarXConfig avatarXConfig = this.f44617a;
            int i = 0;
            int hashCode = avatarXConfig != null ? avatarXConfig.hashCode() : 0;
            String str = this.f44618b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            PlayingBehaviour playingBehaviour = this.f44619c;
            int hashCode3 = playingBehaviour != null ? playingBehaviour.hashCode() : 0;
            boolean z = this.f44620d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            String str2 = this.f44621e;
            int hashCode4 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f44622f;
            int hashCode5 = str3 != null ? str3.hashCode() : 0;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = this.f44623g;
            if (videoPlayerAnalyticsInfo != null) {
                i = videoPlayerAnalyticsInfo.hashCode();
            }
            return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Url(avatarXConfig=");
            m8728C.append(this.f44617a);
            m8728C.append(", url=");
            m8728C.append(this.f44618b);
            m8728C.append(", playingBehaviour=");
            m8728C.append(this.f44619c);
            m8728C.append(", isBusiness=");
            m8728C.append(this.f44620d);
            m8728C.append(", identifier=");
            m8728C.append(this.f44621e);
            m8728C.append(", businessNumber=");
            m8728C.append(this.f44622f);
            m8728C.append(", analyticsInfo=");
            m8728C.append(this.f44623g);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC15816a() {
    }

    public AbstractC15816a(f fVar) {
    }

    /* renamed from: a */
    public abstract VideoPlayerAnalyticsInfo mo18282a();

    /* renamed from: b */
    public abstract AvatarXConfig mo18281b();
}
