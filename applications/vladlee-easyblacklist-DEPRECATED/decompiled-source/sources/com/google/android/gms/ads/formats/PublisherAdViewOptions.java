package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.internal.ads.zzadz;
import com.google.android.gms.internal.ads.zzaea;
import com.google.android.gms.internal.ads.zzul;
import com.google.android.gms.internal.ads.zzwb;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzyu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions.class */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzc();

    /* renamed from: a */
    private final boolean f5876a;

    /* renamed from: b */
    private final zzwc f5877b;

    /* renamed from: c */
    private AppEventListener f5878c;

    /* renamed from: d */
    private final IBinder f5879d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private boolean f5880a = false;

        /* renamed from: b */
        private AppEventListener f5881b;

        /* renamed from: c */
        private ShouldDelayBannerRenderingListener f5882c;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this, (byte) 0);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.f5881b = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.f5880a = z;
            return this;
        }

        public final Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            this.f5882c = shouldDelayBannerRenderingListener;
            return this;
        }
    }

    private PublisherAdViewOptions(Builder builder) {
        this.f5876a = builder.f5880a;
        this.f5878c = builder.f5881b;
        AppEventListener appEventListener = this.f5878c;
        zzyu zzyuVar = null;
        this.f5877b = appEventListener != null ? new zzul(appEventListener) : null;
        this.f5879d = builder.f5882c != null ? new zzyu(builder.f5882c) : zzyuVar;
    }

    /* synthetic */ PublisherAdViewOptions(Builder builder, byte b) {
        this(builder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PublisherAdViewOptions(boolean z, IBinder iBinder, IBinder iBinder2) {
        this.f5876a = z;
        this.f5877b = iBinder != null ? zzwb.zze(iBinder) : null;
        this.f5879d = iBinder2;
    }

    public final AppEventListener getAppEventListener() {
        return this.f5878c;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.f5876a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        zzwc zzwcVar = this.f5877b;
        SafeParcelWriter.writeIBinder(parcel, 2, zzwcVar == null ? null : zzwcVar.asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.f5879d, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzwc zzjm() {
        return this.f5877b;
    }

    public final zzaea zzjn() {
        return zzadz.zzw(this.f5879d);
    }
}
