package com.mopub.mobileads;

import com.mopub.common.Constants;
import java.io.Serializable;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo.class */
public class VastTrackerTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 3;
    @AbstractC6134c("content")
    @AbstractC6132a
    public final String content;
    @AbstractC6134c(Constants.VAST_TRACKER_REPEATABLE)
    @AbstractC6132a
    public final boolean isRepeatable;
    public boolean isTracked;
    @AbstractC6134c(Constants.VAST_TRACKER_MESSAGE_TYPE)
    @AbstractC6132a
    public final MessageType messageType;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public MessageType f34263a = MessageType.TRACKING_URL;

        /* renamed from: b */
        public boolean f34264b;

        /* renamed from: c */
        public final String f34265c;

        public Builder(String str) {
            C10059q.m1637b(str, "content");
            this.f34265c = str;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f34265c;
            }
            return builder.copy(str);
        }

        public final VastTrackerTwo build() {
            return new VastTrackerTwo(this.f34265c, this.f34263a, this.f34264b);
        }

        public final Builder copy(String str) {
            C10059q.m1637b(str, "content");
            return new Builder(str);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Builder) && C10059q.m1643a((Object) this.f34265c, (Object) ((Builder) obj).f34265c);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f34265c;
            return str != null ? str.hashCode() : 0;
        }

        public final Builder isRepeatable(boolean z) {
            this.f34264b = z;
            return this;
        }

        public final Builder messageType(MessageType messageType) {
            C10059q.m1637b(messageType, "messageType");
            this.f34263a = messageType;
            return this;
        }

        public String toString() {
            return "Builder(content=" + this.f34265c + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTrackerTwo$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public VastTrackerTwo(String str, MessageType messageType, boolean z) {
        C10059q.m1637b(str, "content");
        C10059q.m1637b(messageType, "messageType");
        this.content = str;
        this.messageType = messageType;
        this.isRepeatable = z;
    }

    public final String getContent() {
        return this.content;
    }

    public final MessageType getMessageType() {
        return this.messageType;
    }

    public final boolean isRepeatable() {
        return this.isRepeatable;
    }

    public final boolean isTracked() {
        return this.isTracked;
    }

    public final void setTracked() {
        this.isTracked = true;
    }
}
