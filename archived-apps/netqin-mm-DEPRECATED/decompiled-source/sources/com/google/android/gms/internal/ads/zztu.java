package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.og0;
import p131c.p161d.p170b.p224d.p252g.p253a.pg0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztu.class */
public final class zztu {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztu$zza.class */
    public static final class zza extends zzejz<zza, C10504zza> implements zzell {
        public static final zza zzbvz;
        public static volatile zzelw<zza> zzel;

        /* renamed from: com.google.android.gms.internal.ads.zztu$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztu$zza$zza.class */
        public static final class C10504zza extends zzejz.zzb<zza, C10504zza> implements zzell {
            public C10504zza() {
                super(zza.zzbvz);
            }

            public /* synthetic */ C10504zza(og0 og0Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztu$zza$zzb.class */
        public enum zzb implements zzeke {
            UNKNOWN_EVENT_TYPE(0),
            AD_REQUEST(1),
            AD_LOADED(2),
            AD_IMPRESSION(5),
            AD_FIRST_CLICK(6),
            AD_SUBSEQUENT_CLICK(7),
            REQUEST_WILL_START(8),
            REQUEST_DID_END(9),
            REQUEST_WILL_UPDATE_SIGNALS(10),
            REQUEST_DID_UPDATE_SIGNALS(11),
            REQUEST_WILL_BUILD_URL(12),
            REQUEST_DID_BUILD_URL(13),
            REQUEST_WILL_MAKE_NETWORK_REQUEST(14),
            REQUEST_DID_RECEIVE_NETWORK_RESPONSE(15),
            REQUEST_WILL_PROCESS_RESPONSE(16),
            REQUEST_DID_PROCESS_RESPONSE(17),
            REQUEST_WILL_RENDER(18),
            REQUEST_DID_RENDER(19),
            AD_FAILED_TO_LOAD(3),
            AD_FAILED_TO_LOAD_NO_FILL(4),
            AD_FAILED_TO_LOAD_INVALID_REQUEST(100),
            AD_FAILED_TO_LOAD_NETWORK_ERROR(101),
            AD_FAILED_TO_LOAD_TIMEOUT(102),
            AD_FAILED_TO_LOAD_CANCELLED(103),
            AD_FAILED_TO_LOAD_NO_ERROR(104),
            AD_FAILED_TO_LOAD_NOT_FOUND(105),
            REQUEST_WILL_UPDATE_GMS_SIGNALS(1000),
            REQUEST_DID_UPDATE_GMS_SIGNALS(AdError.NO_FILL_ERROR_CODE),
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE),
            REQUEST_FAILED_TO_BUILD_URL(1003),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(1004),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(1005),
            REQUEST_FAILED_TO_UPDATE_SIGNALS(1006),
            REQUEST_FAILED_TO_RENDER(1007),
            REQUEST_IS_PREFETCH(1100),
            REQUEST_SAVED_TO_CACHE(1101),
            REQUEST_LOADED_FROM_CACHE(1102),
            REQUEST_PREFETCH_INTERCEPTED(1103),
            REQUESTED_CACHE_KEY_FROM_SERVICE_SUCCEEDED(1104),
            REQUESTED_CACHE_KEY_FROM_SERVICE_FAILED(1105),
            NOTIFIED_CACHE_HIT_TO_SERVICE_SUCCEEDED(1106),
            NOTIFIED_CACHE_HIT_TO_SERVICE_FAILED(1107),
            REQUEST_FAILED_TO_LOAD_FROM_CACHE(1108),
            BANNER_SIZE_INVALID(10000),
            BANNER_SIZE_VALID(10001),
            ANDROID_WEBVIEW_CRASH(10002),
            OFFLINE_UPLOAD(10003),
            DELAY_PAGE_LOAD_CANCELLED_AD(10004);
            
            public static final zzekd<zzb> zzes = new pg0();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzeke
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbvz = zzaVar;
            zzejz.m12401a(zza.class, zzaVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (og0.f14339a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10504zza(null);
                case 3:
                    return zzejz.m12403a(zzbvz, "\u0001��", (Object[]) null);
                case 4:
                    return zzbvz;
                case 5:
                    zzelw<zza> zzelwVar = zzel;
                    zzelw<zza> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzelw<zza> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzbvz);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
