package com.google.android.gms.ads.search;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import p081h.p203i.p204a.p224e.p259j.p260a.C7444w5;
import p081h.p203i.p204a.p224e.p259j.p260a.C7456x5;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/search/SearchAdRequest.class */
public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public final String zzabu;
    public final C7444w5 zzuy;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/search/SearchAdRequest$Builder.class */
    public static final class Builder {
        public String zzabu;
        public final C7456x5 zzuz = new C7456x5();

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzuz.m20554b(cls, bundle);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzuz.m20562a(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzuz.m20560a(cls, bundle);
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.zzuz.m20553b(str);
            return this;
        }

        public final SearchAdRequest build() {
            return new SearchAdRequest(this);
        }

        @Deprecated
        public final Builder setAnchorTextColor(int i) {
            return this;
        }

        @Deprecated
        public final Builder setBackgroundColor(int i) {
            return this;
        }

        @Deprecated
        public final Builder setBackgroundGradient(int i, int i2) {
            return this;
        }

        @Deprecated
        public final Builder setBorderColor(int i) {
            return this;
        }

        @Deprecated
        public final Builder setBorderThickness(int i) {
            return this;
        }

        @Deprecated
        public final Builder setBorderType(int i) {
            return this;
        }

        @Deprecated
        public final Builder setCallButtonColor(int i) {
            return this;
        }

        @Deprecated
        public final Builder setCustomChannels(String str) {
            return this;
        }

        @Deprecated
        public final Builder setDescriptionTextColor(int i) {
            return this;
        }

        @Deprecated
        public final Builder setFontFace(String str) {
            return this;
        }

        @Deprecated
        public final Builder setHeaderTextColor(int i) {
            return this;
        }

        @Deprecated
        public final Builder setHeaderTextSize(int i) {
            return this;
        }

        public final Builder setLocation(Location location) {
            this.zzuz.m20563a(location);
            return this;
        }

        public final Builder setQuery(String str) {
            this.zzabu = str;
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.zzuz.m20543f(str);
            return this;
        }

        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.zzuz.m20552b(z);
            return this;
        }
    }

    public SearchAdRequest(Builder builder) {
        this.zzabu = builder.zzabu;
        this.zzuy = new C7444w5(builder.zzuz, this);
    }

    @Deprecated
    public final int getAnchorTextColor() {
        return 0;
    }

    @Deprecated
    public final int getBackgroundColor() {
        return 0;
    }

    @Deprecated
    public final int getBackgroundGradientBottom() {
        return 0;
    }

    @Deprecated
    public final int getBackgroundGradientTop() {
        return 0;
    }

    @Deprecated
    public final int getBorderColor() {
        return 0;
    }

    @Deprecated
    public final int getBorderThickness() {
        return 0;
    }

    @Deprecated
    public final int getBorderType() {
        return 0;
    }

    @Deprecated
    public final int getCallButtonColor() {
        return 0;
    }

    @Deprecated
    public final String getCustomChannels() {
        return null;
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzuy.m20612a(cls);
    }

    @Deprecated
    public final int getDescriptionTextColor() {
        return 0;
    }

    @Deprecated
    public final String getFontFace() {
        return null;
    }

    @Deprecated
    public final int getHeaderTextColor() {
        return 0;
    }

    @Deprecated
    public final int getHeaderTextSize() {
        return 0;
    }

    public final Location getLocation() {
        return this.zzuy.m20605f();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzuy.m20610b(cls);
    }

    public final <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzuy.m20608c(cls);
    }

    public final String getQuery() {
        return this.zzabu;
    }

    public final boolean isTestDevice(Context context) {
        return this.zzuy.m20613a(context);
    }

    public final C7444w5 zzay() {
        return this.zzuy;
    }
}
