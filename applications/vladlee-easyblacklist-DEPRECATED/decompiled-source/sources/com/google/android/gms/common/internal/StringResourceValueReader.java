package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C1567R;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/StringResourceValueReader.class */
public class StringResourceValueReader {

    /* renamed from: a */
    private final Resources f6814a;

    /* renamed from: b */
    private final String f6815b;

    public StringResourceValueReader(Context context) {
        Preconditions.checkNotNull(context);
        this.f6814a = context.getResources();
        this.f6815b = this.f6814a.getResourcePackageName(C1567R.string.common_google_play_services_unknown_issue);
    }

    @Nullable
    public String getString(String str) {
        int identifier = this.f6814a.getIdentifier(str, "string", this.f6815b);
        if (identifier == 0) {
            return null;
        }
        return this.f6814a.getString(identifier);
    }
}
