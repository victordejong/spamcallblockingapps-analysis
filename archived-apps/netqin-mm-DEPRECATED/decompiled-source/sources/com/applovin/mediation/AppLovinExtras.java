package com.applovin.mediation;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinExtras.class */
public class AppLovinExtras {

    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinExtras$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public boolean f21792a;

        public Bundle build() {
            Bundle bundle = new Bundle(1);
            bundle.putBoolean("mute_audio", this.f21792a);
            return bundle;
        }

        public Builder setMuteAudio(boolean z) {
            this.f21792a = z;
            return this;
        }
    }
}
