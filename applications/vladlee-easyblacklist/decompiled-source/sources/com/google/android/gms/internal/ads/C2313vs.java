package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.vs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vs.class */
final /* synthetic */ class C2313vs implements zzded {

    /* renamed from: a */
    static final zzded f10632a = new C2313vs();

    private C2313vs() {
    }

    @Override // com.google.android.gms.internal.ads.zzded
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzcty(arrayList) { // from class: com.google.android.gms.internal.ads.vt

            /* renamed from: a */
            private final ArrayList f10633a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10633a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzcty
            public final void zzr(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f10633a);
            }
        };
    }
}
