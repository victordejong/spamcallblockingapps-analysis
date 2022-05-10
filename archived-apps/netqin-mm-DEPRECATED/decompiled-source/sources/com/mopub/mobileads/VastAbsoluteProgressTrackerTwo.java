package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.mobileads.VastTrackerTwo;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.text.StringsKt__StringsKt;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTrackerTwo.class */
public class VastAbsoluteProgressTrackerTwo extends VastTrackerTwo implements Comparable<VastAbsoluteProgressTrackerTwo> {
    public static final Companion Companion = new Companion(null);
    public static final Pattern absolutePattern = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");
    public static final long serialVersionUID = 1;
    @AbstractC6134c(Constants.VAST_TRACKER_TRACKING_MS)
    @AbstractC6132a
    public final int trackingMilliseconds;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTrackerTwo.MessageType f34228a = VastTrackerTwo.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f34229b;

        /* renamed from: c */
        public final String f34230c;

        /* renamed from: d */
        public final int f34231d;

        public Builder(String str, int i) {
            C10059q.m1637b(str, "content");
            this.f34230c = str;
            this.f34231d = i;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = builder.f34230c;
            }
            if ((i2 & 2) != 0) {
                i = builder.f34231d;
            }
            return builder.copy(str, i);
        }

        public final VastAbsoluteProgressTrackerTwo build() {
            return new VastAbsoluteProgressTrackerTwo(this.f34231d, this.f34230c, this.f34228a, this.f34229b);
        }

        public final Builder copy(String str, int i) {
            C10059q.m1637b(str, "content");
            return new Builder(str, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return C10059q.m1643a((Object) this.f34230c, (Object) builder.f34230c) && this.f34231d == builder.f34231d;
        }

        public int hashCode() {
            String str = this.f34230c;
            return ((str != null ? str.hashCode() : 0) * 31) + this.f34231d;
        }

        public final Builder isRepeatable(boolean z) {
            this.f34229b = z;
            return this;
        }

        public final Builder messageType(VastTrackerTwo.MessageType messageType) {
            C10059q.m1637b(messageType, "messageType");
            this.f34228a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f34230c + ", trackingMilliseconds=" + this.f34231d + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }

        public final boolean isAbsoluteTracker(String str) {
            boolean z = false;
            if (!(str == null || str.length() == 0)) {
                z = false;
                if (VastAbsoluteProgressTrackerTwo.absolutePattern.matcher(str).matches()) {
                    z = true;
                }
            }
            return z;
        }

        public final Integer parseAbsoluteOffset(String str) {
            Integer num = null;
            if (str != null) {
                List a = StringsKt__StringsKt.m20a((CharSequence) str, new String[]{":"}, false, 0, 6, (Object) null);
                num = null;
                if (a != null) {
                    if (!(a.size() == 3)) {
                        a = null;
                    }
                    num = null;
                    if (a != null) {
                        Integer.parseInt((String) a.get(0));
                        Integer.parseInt((String) a.get(1));
                        num = Integer.valueOf((int) (Float.parseFloat((String) a.get(2)) * 1000));
                    }
                }
            }
            return num;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastAbsoluteProgressTrackerTwo(int i, String str, VastTrackerTwo.MessageType messageType, boolean z) {
        super(str, messageType, z);
        C10059q.m1637b(str, "content");
        C10059q.m1637b(messageType, "messageType");
        this.trackingMilliseconds = i;
    }

    public int compareTo(VastAbsoluteProgressTrackerTwo vastAbsoluteProgressTrackerTwo) {
        C10059q.m1637b(vastAbsoluteProgressTrackerTwo, "other");
        return C10059q.m1645a(this.trackingMilliseconds, vastAbsoluteProgressTrackerTwo.trackingMilliseconds);
    }

    public final int getTrackingMilliseconds() {
        return this.trackingMilliseconds;
    }

    public String toString() {
        return this.trackingMilliseconds + "ms: " + getContent();
    }
}
