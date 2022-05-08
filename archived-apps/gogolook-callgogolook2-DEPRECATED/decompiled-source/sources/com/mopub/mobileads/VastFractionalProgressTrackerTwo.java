package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.mobileads.VastTrackerTwo;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� \u00132\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0002\u0012\u0013B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020��H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, m815d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;", "Lcom/mopub/mobileads/VastTrackerTwo;", "", "trackingFraction", "", "content", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "isRepeatable", "", "(FLjava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V", "getTrackingFraction", "()F", "compareTo", "", "other", "toString", "Builder", "Companion", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTrackerTwo.class */
public final class VastFractionalProgressTrackerTwo extends VastTrackerTwo implements Comparable<VastFractionalProgressTrackerTwo> {
    public static final Companion Companion = new Companion(null);

    /* renamed from: f */
    public static final Pattern f8557f = Pattern.compile("((\\d{1,2})|(100))%");
    @AbstractC10120c(Constants.VAST_TRACKER_TRACKING_FRACTION)
    @AbstractC10118a

    /* renamed from: e */
    public final float f8558e;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\t\u0010\r\u001a\u00020\u0003HÂ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020��2\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m815d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder;", "", "content", "", "trackingFraction", "", "(Ljava/lang/String;F)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTrackerTwo$MessageType;", "build", "Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public VastTrackerTwo.MessageType f8559a = VastTrackerTwo.MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f8560b;

        /* renamed from: c */
        public final String f8561c;

        /* renamed from: d */
        public final float f8562d;

        public Builder(String str, float f) {
            C15149k.m377b(str, "content");
            this.f8561c = str;
            this.f8562d = f;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f8561c;
            }
            if ((i & 2) != 0) {
                f = builder.f8562d;
            }
            return builder.copy(str, f);
        }

        public final VastFractionalProgressTrackerTwo build() {
            return new VastFractionalProgressTrackerTwo(this.f8562d, this.f8561c, this.f8559a, this.f8560b);
        }

        public final Builder copy(String str, float f) {
            C15149k.m377b(str, "content");
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
            return C15149k.m384a((Object) this.f8561c, (Object) builder.f8561c) && Float.compare(this.f8562d, builder.f8562d) == 0;
        }

        public int hashCode() {
            String str = this.f8561c;
            return ((str != null ? str.hashCode() : 0) * 31) + Float.floatToIntBits(this.f8562d);
        }

        public final Builder isRepeatable(boolean z) {
            this.f8560b = z;
            return this;
        }

        public final Builder messageType(VastTrackerTwo.MessageType messageType) {
            C15149k.m377b(messageType, "messageType");
            this.f8559a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f8561c + ", trackingFraction=" + this.f8562d + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u001f\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0002\u0010\u000fR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion;", "", "()V", "percentagePattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "serialVersionUID", "", "isPercentageTracker", "", "progressValue", "", "parsePercentageOffset", "", "videoDuration", "(Ljava/lang/String;I)Ljava/lang/Integer;", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public final boolean isPercentageTracker(String str) {
            boolean z = false;
            if (!(str == null || str.length() == 0)) {
                z = false;
                if (VastFractionalProgressTrackerTwo.f8557f.matcher(str).matches()) {
                    z = true;
                }
            }
            return z;
        }

        public final Integer parsePercentageOffset(String str, int i) {
            String a;
            return (str == null || (a = C14966w.m718a(str, "%", "", false, 4, (Object) null)) == null) ? null : Integer.valueOf((int) Math.rint((i * Float.parseFloat(a)) / 100.0f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastFractionalProgressTrackerTwo(float f, String str, VastTrackerTwo.MessageType messageType, boolean z) {
        super(str, messageType, z);
        C15149k.m377b(str, "content");
        C15149k.m377b(messageType, "messageType");
        this.f8558e = f;
    }

    public int compareTo(VastFractionalProgressTrackerTwo vastFractionalProgressTrackerTwo) {
        C15149k.m377b(vastFractionalProgressTrackerTwo, "other");
        return Float.compare(this.f8558e, vastFractionalProgressTrackerTwo.f8558e);
    }

    public final float getTrackingFraction() {
        return this.f8558e;
    }

    public String toString() {
        return this.f8558e + ": " + getContent();
    }
}
