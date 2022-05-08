package com.appsflyer.internal.model.event;

import android.content.Context;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/model/event/Purchase.class */
public abstract class Purchase extends BackgroundEvent {
    public Purchase() {
        this(null, null, null);
    }

    public Purchase(@Nullable String str, @Nullable Boolean bool, @Nullable Context context) {
        super(str, Boolean.FALSE, null, bool, context);
    }
}
