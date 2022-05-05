package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbra.class */
public final class zzbra extends zzbrl<AppEventListener> implements zzaey {
    public zzbra(Set<zzbsu<AppEventListener>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final void onAppEvent(final String str, final String str2) {
        synchronized (this) {
            m3995a(new zzbrn(str, str2) { // from class: com.google.android.gms.internal.ads.ms

                /* renamed from: a */
                private final String f10219a;

                /* renamed from: b */
                private final String f10220b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10219a = str;
                    this.f10220b = str2;
                }

                @Override // com.google.android.gms.internal.ads.zzbrn
                public final void zzp(Object obj) {
                    ((AppEventListener) obj).onAppEvent(this.f10219a, this.f10220b);
                }
            });
        }
    }
}
