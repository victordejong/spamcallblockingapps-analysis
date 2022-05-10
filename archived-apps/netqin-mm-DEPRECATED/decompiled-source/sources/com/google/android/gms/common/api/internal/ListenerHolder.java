package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zap;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder.class */
public final class ListenerHolder<L> {

    /* renamed from: a */
    public final HandlerC7232a f23158a;

    /* renamed from: b */
    public volatile ListenerKey<L> f23159b;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey.class */
    public static final class ListenerKey<L> {

        /* renamed from: a */
        public final L f23160a;

        /* renamed from: b */
        public final String f23161b;

        @KeepForSdk
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f23160a == listenerKey.f23160a && this.f23161b.equals(listenerKey.f23161b);
        }

        @KeepForSdk
        public final int hashCode() {
            return (System.identityHashCode(this.f23160a) * 31) + this.f23161b.hashCode();
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$Notifier.class */
    public interface Notifier<L> {
    }

    /* renamed from: com.google.android.gms.common.api.internal.ListenerHolder$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$a.class */
    public final class HandlerC7232a extends zap {
    }

    @KeepForSdk
    /* renamed from: a */
    public final void m17626a() {
        this.f23159b = null;
    }

    @KeepForSdk
    /* renamed from: a */
    public final void m17625a(Notifier<? super L> notifier) {
        Preconditions.m17287a(notifier, "Notifier must not be null");
        this.f23158a.sendMessage(this.f23158a.obtainMessage(1, notifier));
    }

    @KeepForSdk
    /* renamed from: b */
    public final ListenerKey<L> m17624b() {
        return this.f23159b;
    }
}
