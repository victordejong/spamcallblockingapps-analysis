package com.mopub.mobileads;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import java.io.Serializable;
import java.util.Locale;
import java.util.regex.Pattern;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker.class */
public class VastFractionalProgressTracker extends VastTracker implements Comparable<VastFractionalProgressTracker>, Serializable {

    /* renamed from: f */
    public static Pattern f8555f = Pattern.compile("((\\d{1,2})|(100))%");
    @AbstractC10120c(Constants.VAST_TRACKER_TRACKING_FRACTION)
    @AbstractC10118a

    /* renamed from: e */
    public final float f8556e;

    public VastFractionalProgressTracker(@NonNull VastTracker.EnumC3847a aVar, @NonNull String str, float f) {
        super(aVar, str);
        Preconditions.checkArgument(f >= 0.0f);
        this.f8556e = f;
    }

    public VastFractionalProgressTracker(@NonNull String str, float f) {
        this(VastTracker.EnumC3847a.TRACKING_URL, str, f);
    }

    public static boolean isPercentageTracker(@NonNull String str) {
        Preconditions.checkNotNull(str);
        return !TextUtils.isEmpty(str) && f8555f.matcher(str).matches();
    }

    public static int parsePercentageOffset(@NonNull String str, int i) {
        Preconditions.checkNotNull(str);
        return Math.round((i * Float.parseFloat(str.replace("%", ""))) / 100.0f);
    }

    public int compareTo(@NonNull VastFractionalProgressTracker vastFractionalProgressTracker) {
        return Double.compare(trackingFraction(), vastFractionalProgressTracker.trackingFraction());
    }

    public String toString() {
        return String.format(Locale.US, "%2f: %s", Float.valueOf(this.f8556e), getContent());
    }

    public float trackingFraction() {
        return this.f8556e;
    }
}
