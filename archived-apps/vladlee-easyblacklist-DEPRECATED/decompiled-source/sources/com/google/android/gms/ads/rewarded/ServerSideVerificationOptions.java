package com.google.android.gms.ads.rewarded;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions.class */
public class ServerSideVerificationOptions {

    /* renamed from: a */
    private final String f6082a;

    /* renamed from: b */
    private final String f6083b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private String f6084a = "";

        /* renamed from: b */
        private String f6085b = "";

        public final ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this, (byte) 0);
        }

        public final Builder setCustomData(String str) {
            this.f6085b = str;
            return this;
        }

        public final Builder setUserId(String str) {
            this.f6084a = str;
            return this;
        }
    }

    private ServerSideVerificationOptions(Builder builder) {
        this.f6082a = builder.f6084a;
        this.f6083b = builder.f6085b;
    }

    /* synthetic */ ServerSideVerificationOptions(Builder builder, byte b) {
        this(builder);
    }

    public String getCustomData() {
        return this.f6083b;
    }

    public String getUserId() {
        return this.f6082a;
    }
}
