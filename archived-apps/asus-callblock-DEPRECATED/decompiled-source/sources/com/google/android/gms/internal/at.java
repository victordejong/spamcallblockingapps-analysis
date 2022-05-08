package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.AbstractC0110a;
import com.google.android.gms.common.internal.ae;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/at.class */
public final class at<O extends a.AbstractC0110a> {

    /* renamed from: a  reason: collision with root package name */
    final a<O> f4127a;

    /* renamed from: b  reason: collision with root package name */
    private final O f4128b;

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof at)) {
                z = false;
            } else {
                at atVar = (at) obj;
                if (!ae.a(this.f4127a, atVar.f4127a) || !ae.a(this.f4128b, atVar.f4128b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4127a, this.f4128b});
    }
}
