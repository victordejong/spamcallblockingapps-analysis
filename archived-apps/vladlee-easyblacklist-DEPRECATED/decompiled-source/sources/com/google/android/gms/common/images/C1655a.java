package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.Objects;
/* renamed from: com.google.android.gms.common.images.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/a.class */
final class C1655a {

    /* renamed from: a */
    public final Uri f6667a;

    public C1655a(Uri uri) {
        this.f6667a = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1655a)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return Objects.equal(((C1655a) obj).f6667a, this.f6667a);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f6667a);
    }
}
