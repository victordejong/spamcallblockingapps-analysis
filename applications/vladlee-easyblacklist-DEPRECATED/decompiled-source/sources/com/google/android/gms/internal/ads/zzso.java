package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzso.class */
public final class zzso {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzso$zza.class */
    public static final class zza extends zzdrt<zza, zzb> implements zzdtg {
        private static final zza zzbse;
        private static volatile zzdtn<zza> zzdz;

        /* renamed from: com.google.android.gms.internal.ads.zzso$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzso$zza$zza.class */
        public enum EnumC3503zza implements zzdry {
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
            REQUEST_DID_UPDATE_GMS_SIGNALS(1001),
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(1002),
            REQUEST_FAILED_TO_BUILD_URL(1003),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(1004),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(1005),
            REQUEST_FAILED_TO_UPDATE_SIGNALS(1006),
            REQUEST_FAILED_TO_RENDER(1007),
            REQUEST_IS_PREFETCH(1100),
            REQUEST_SAVED_TO_CACHE(1101),
            REQUEST_LOADED_FROM_CACHE(1102),
            REQUEST_PREFETCH_INTERCEPTED(1103),
            BANNER_SIZE_INVALID(AbstractC0007a.DEFAULT_TIMEOUT),
            BANNER_SIZE_VALID(10001),
            ANDROID_WEBVIEW_CRASH(10002),
            OFFLINE_UPLOAD(10003),
            DELAY_PAGE_LOAD_CANCELLED_AD(10004);
            

            /* renamed from: d */
            private static final zzdrx<EnumC3503zza> f15460d = new aqp();

            /* renamed from: e */
            private final int f15462e;

            EnumC3503zza(int i) {
                this.f15462e = i;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f15462e + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzdry
            public final int zzae() {
                return this.f15462e;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzso$zza$zzb.class */
        public static final class zzb extends zzdrt.zzb<zza, zzb> implements zzdtg {
            private zzb() {
                super(zza.zzbse);
            }

            /* synthetic */ zzb(byte b) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzbse = zzaVar;
            zzdrt.m3364a(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzdrt
        /* renamed from: a */
        public final Object mo3009a(int i, Object obj) {
            switch (aqo.f8180a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb((byte) 0);
                case 3:
                    return m3366a(zzbse, "\u0001��", (Object[]) null);
                case 4:
                    return zzbse;
                case 5:
                    zzdtn<zza> zzdtnVar = zzdz;
                    zzdtn<zza> zzdtnVar2 = zzdtnVar;
                    if (zzdtnVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzdtn<zza> zzdtnVar3 = zzdz;
                                zzdtnVar2 = zzdtnVar3;
                                if (zzdtnVar3 == null) {
                                    zzdtnVar2 = new zzdrt.zza<>(zzbse);
                                    zzdz = zzdtnVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzdtnVar2;
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
