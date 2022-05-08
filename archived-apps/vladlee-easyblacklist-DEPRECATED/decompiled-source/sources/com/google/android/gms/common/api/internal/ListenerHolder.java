package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zar;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder.class */
public final class ListenerHolder<L> {

    /* renamed from: a */
    private final HandlerC1576a f6309a;

    /* renamed from: b */
    private volatile L f6310b;

    /* renamed from: c */
    private final ListenerKey<L> f6311c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$ListenerKey.class */
    public static final class ListenerKey<L> {

        /* renamed from: a */
        private final L f6312a;

        /* renamed from: b */
        private final String f6313b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ListenerKey(L l, String str) {
            this.f6312a = l;
            this.f6313b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f6312a == listenerKey.f6312a && this.f6313b.equals(listenerKey.f6313b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f6312a) * 31) + this.f6313b.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$Notifier.class */
    public interface Notifier<L> {
        void notifyListener(L l);

        void onNotifyListenerFailed();
    }

    /* renamed from: com.google.android.gms.common.api.internal.ListenerHolder$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ListenerHolder$a.class */
    private final class HandlerC1576a extends zar {
        public HandlerC1576a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z = true;
            if (message.what != 1) {
                z = false;
            }
            Preconditions.checkArgument(z);
            ListenerHolder.this.m5919a((Notifier) message.obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ListenerHolder(Looper looper, L l, String str) {
        this.f6309a = new HandlerC1576a(looper);
        this.f6310b = (L) Preconditions.checkNotNull(l, "Listener must not be null");
        this.f6311c = new ListenerKey<>(l, Preconditions.checkNotEmpty(str));
    }

    /* renamed from: a */
    final void m5919a(Notifier<? super L> notifier) {
        Object obj = (L) this.f6310b;
        if (obj == null) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(obj);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }

    public final void clear() {
        this.f6310b = null;
    }

    public final ListenerKey<L> getListenerKey() {
        return this.f6311c;
    }

    public final boolean hasListener() {
        return this.f6310b != null;
    }

    public final void notifyListener(Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, "Notifier must not be null");
        this.f6309a.sendMessage(this.f6309a.obtainMessage(1, notifier));
    }
}
