package com.mopub.mobileads;

import androidx.annotation.NonNull;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTracker.class */
public class VastTracker implements Serializable {
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKER_MESSAGE_TYPE)
    @AbstractC10118a

    /* renamed from: a */
    public final EnumC3847a f8595a;
    @NonNull
    @AbstractC10120c("content")
    @AbstractC10118a

    /* renamed from: b */
    public final String f8596b;
    @AbstractC10120c(Constants.VAST_TRACKER_REPEATABLE)
    @AbstractC10118a

    /* renamed from: c */
    public boolean f8597c;

    /* renamed from: d */
    public boolean f8598d;

    /* renamed from: com.mopub.mobileads.VastTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTracker$a.class */
    public enum EnumC3847a {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public VastTracker(@NonNull EnumC3847a aVar, @NonNull String str) {
        Preconditions.checkNotNull(aVar);
        Preconditions.checkNotNull(str);
        this.f8595a = aVar;
        this.f8596b = str;
    }

    public VastTracker(@NonNull String str) {
        this(EnumC3847a.TRACKING_URL, str);
    }

    public VastTracker(@NonNull String str, boolean z) {
        this(str);
        this.f8597c = z;
    }

    @NonNull
    public String getContent() {
        return this.f8596b;
    }

    @NonNull
    public EnumC3847a getMessageType() {
        return this.f8595a;
    }

    public boolean isRepeatable() {
        return this.f8597c;
    }

    public boolean isTracked() {
        return this.f8598d;
    }

    public void setTracked() {
        this.f8598d = true;
    }
}
