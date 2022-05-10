package com.mopub.mraid;

import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/PlacementType.class */
public enum PlacementType {
    INLINE,
    INTERSTITIAL;

    public String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
