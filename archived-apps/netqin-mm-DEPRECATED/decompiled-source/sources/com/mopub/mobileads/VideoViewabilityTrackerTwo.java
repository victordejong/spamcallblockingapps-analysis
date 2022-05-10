package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.mobileads.VastTrackerTwo;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerTwo.class */
public class VideoViewabilityTrackerTwo extends VastTrackerTwo {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 1;
    @AbstractC6134c(Constants.VAST_TRACKER_PERCENT_VIEWABLE)
    @AbstractC6132a
    public final int percentViewable;
    @AbstractC6134c(Constants.VAST_TRACKER_PLAYTIME_MS)
    @AbstractC6132a
    public final int viewablePlaytimeMS;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTrackerTwo.MessageType f34424a = VastTrackerTwo.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f34425b;

        /* renamed from: c */
        public final String f34426c;

        /* renamed from: d */
        public final int f34427d;

        /* renamed from: e */
        public final int f34428e;

        public Builder(String str, int i, int i2) {
            C10059q.m1637b(str, "content");
            this.f34426c = str;
            this.f34427d = i;
            this.f34428e = i2;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = builder.f34426c;
            }
            if ((i3 & 2) != 0) {
                i = builder.f34427d;
            }
            if ((i3 & 4) != 0) {
                i2 = builder.f34428e;
            }
            return builder.copy(str, i, i2);
        }

        public final VideoViewabilityTrackerTwo build() {
            return new VideoViewabilityTrackerTwo(this.f34427d, this.f34428e, this.f34426c, this.f34424a, this.f34425b);
        }

        public final int component2() {
            return this.f34427d;
        }

        public final int component3() {
            return this.f34428e;
        }

        public final Builder copy(String str, int i, int i2) {
            C10059q.m1637b(str, "content");
            return new Builder(str, i, i2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return C10059q.m1643a((Object) this.f34426c, (Object) builder.f34426c) && this.f34427d == builder.f34427d && this.f34428e == builder.f34428e;
        }

        public final int getPercentViewable() {
            return this.f34428e;
        }

        public final int getViewablePlaytimeMS() {
            return this.f34427d;
        }

        public int hashCode() {
            String str = this.f34426c;
            return ((((str != null ? str.hashCode() : 0) * 31) + this.f34427d) * 31) + this.f34428e;
        }

        public final Builder isRepeatable(boolean z) {
            this.f34425b = z;
            return this;
        }

        public final Builder messageType(VastTrackerTwo.MessageType messageType) {
            C10059q.m1637b(messageType, "messageType");
            this.f34424a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f34426c + ", viewablePlaytimeMS=" + this.f34427d + ", percentViewable=" + this.f34428e + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoViewabilityTrackerTwo(int i, int i2, String str, VastTrackerTwo.MessageType messageType, boolean z) {
        super(str, messageType, z);
        C10059q.m1637b(str, "content");
        C10059q.m1637b(messageType, "messageType");
        this.viewablePlaytimeMS = i;
        this.percentViewable = i2;
    }

    public final int getPercentViewable() {
        return this.percentViewable;
    }

    public final int getViewablePlaytimeMS() {
        return this.viewablePlaytimeMS;
    }
}
