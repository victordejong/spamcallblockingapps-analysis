package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzyw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoOptions.class */
public final class VideoOptions {

    /* renamed from: a */
    private final boolean f5840a;

    /* renamed from: b */
    private final boolean f5841b;

    /* renamed from: c */
    private final boolean f5842c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/VideoOptions$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private boolean f5843a = true;

        /* renamed from: b */
        private boolean f5844b = false;

        /* renamed from: c */
        private boolean f5845c = false;

        public final VideoOptions build() {
            return new VideoOptions(this, (byte) 0);
        }

        public final Builder setClickToExpandRequested(boolean z) {
            this.f5845c = z;
            return this;
        }

        public final Builder setCustomControlsRequested(boolean z) {
            this.f5844b = z;
            return this;
        }

        public final Builder setStartMuted(boolean z) {
            this.f5843a = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.f5840a = builder.f5843a;
        this.f5841b = builder.f5844b;
        this.f5842c = builder.f5845c;
    }

    /* synthetic */ VideoOptions(Builder builder, byte b) {
        this(builder);
    }

    public VideoOptions(zzyw zzywVar) {
        this.f5840a = zzywVar.zzabv;
        this.f5841b = zzywVar.zzabw;
        this.f5842c = zzywVar.zzabx;
    }

    public final boolean getClickToExpandRequested() {
        return this.f5842c;
    }

    public final boolean getCustomControlsRequested() {
        return this.f5841b;
    }

    public final boolean getStartMuted() {
        return this.f5840a;
    }
}
