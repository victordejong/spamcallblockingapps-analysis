package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.mobileads.VastTrackerTwo;
import java.util.regex.Pattern;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p576c0.C9925q;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTrackerTwo.class */
public final class VastFractionalProgressTrackerTwo extends VastTrackerTwo implements Comparable<VastFractionalProgressTrackerTwo> {
    public static final Companion Companion = new Companion(null);
    public static final Pattern percentagePattern = Pattern.compile("((\\d{1,2})|(100))%");
    public static final long serialVersionUID = 1;
    @AbstractC6134c(Constants.VAST_TRACKER_TRACKING_FRACTION)
    @AbstractC6132a
    public final float trackingFraction;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTrackerTwo.MessageType f34241a = VastTrackerTwo.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f34242b;

        /* renamed from: c */
        public final String f34243c;

        /* renamed from: d */
        public final float f34244d;

        public Builder(String str, float f) {
            C10059q.m1637b(str, "content");
            this.f34243c = str;
            this.f34244d = f;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f34243c;
            }
            if ((i & 2) != 0) {
                f = builder.f34244d;
            }
            return builder.copy(str, f);
        }

        public final VastFractionalProgressTrackerTwo build() {
            return new VastFractionalProgressTrackerTwo(this.f34244d, this.f34243c, this.f34241a, this.f34242b);
        }

        public final Builder copy(String str, float f) {
            C10059q.m1637b(str, "content");
            return new Builder(str, f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return C10059q.m1643a((Object) this.f34243c, (Object) builder.f34243c) && Float.compare(this.f34244d, builder.f34244d) == 0;
        }

        public int hashCode() {
            String str = this.f34243c;
            return ((str != null ? str.hashCode() : 0) * 31) + Float.floatToIntBits(this.f34244d);
        }

        public final Builder isRepeatable(boolean z) {
            this.f34242b = z;
            return this;
        }

        public final Builder messageType(VastTrackerTwo.MessageType messageType) {
            C10059q.m1637b(messageType, "messageType");
            this.f34241a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f34243c + ", trackingFraction=" + this.f34244d + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }

        public final boolean isPercentageTracker(String str) {
            boolean z = false;
            if (!(str == null || str.length() == 0)) {
                z = false;
                if (VastFractionalProgressTrackerTwo.percentagePattern.matcher(str).matches()) {
                    z = true;
                }
            }
            return z;
        }

        public final Integer parsePercentageOffset(String str, int i) {
            String a;
            return (str == null || (a = C9925q.m1782a(str, "%", "", false, 4, (Object) null)) == null) ? null : Integer.valueOf((int) Math.rint((i * Float.parseFloat(a)) / 100.0f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastFractionalProgressTrackerTwo(float f, String str, VastTrackerTwo.MessageType messageType, boolean z) {
        super(str, messageType, z);
        C10059q.m1637b(str, "content");
        C10059q.m1637b(messageType, "messageType");
        this.trackingFraction = f;
    }

    public int compareTo(VastFractionalProgressTrackerTwo vastFractionalProgressTrackerTwo) {
        C10059q.m1637b(vastFractionalProgressTrackerTwo, "other");
        return Float.compare(this.trackingFraction, vastFractionalProgressTrackerTwo.trackingFraction);
    }

    public final float getTrackingFraction() {
        return this.trackingFraction;
    }

    public String toString() {
        return this.trackingFraction + ": " + getContent();
    }
}
