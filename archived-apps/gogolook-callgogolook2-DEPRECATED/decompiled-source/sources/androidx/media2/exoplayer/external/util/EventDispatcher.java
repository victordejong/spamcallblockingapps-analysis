package androidx.media2.exoplayer.external.util;

import android.os.Handler;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.EventDispatcher;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EventDispatcher.class */
public final class EventDispatcher<T> {
    public final CopyOnWriteArrayList<HandlerAndListener<T>> listeners = new CopyOnWriteArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EventDispatcher$Event.class */
    public interface Event<T> {
        void sendTo(T t);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/EventDispatcher$HandlerAndListener.class */
    public static final class HandlerAndListener<T> {
        public final Handler handler;
        public final T listener;
        public boolean released;

        public HandlerAndListener(Handler handler, T t) {
            this.handler = handler;
            this.listener = t;
        }

        public void dispatch(final Event<T> event) {
            this.handler.post(new Runnable(this, event) { // from class: androidx.media2.exoplayer.external.util.EventDispatcher$HandlerAndListener$$Lambda$0
                public final EventDispatcher.HandlerAndListener arg$1;
                public final EventDispatcher.Event arg$2;

                {
                    this.arg$1 = this;
                    this.arg$2 = event;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.arg$1.lambda$dispatch$0$EventDispatcher$HandlerAndListener(this.arg$2);
                }
            });
        }

        public final /* synthetic */ void lambda$dispatch$0$EventDispatcher$HandlerAndListener(Event event) {
            if (!this.released) {
                event.sendTo(this.listener);
            }
        }

        public void release() {
            this.released = true;
        }
    }

    public void addListener(Handler handler, T t) {
        Assertions.checkArgument((handler == null || t == null) ? false : true);
        removeListener(t);
        this.listeners.add(new HandlerAndListener<>(handler, t));
    }

    public void dispatch(Event<T> event) {
        Iterator<HandlerAndListener<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().dispatch(event);
        }
    }

    public void removeListener(T t) {
        Iterator<HandlerAndListener<T>> it = this.listeners.iterator();
        while (it.hasNext()) {
            HandlerAndListener<T> next = it.next();
            if (next.listener == t) {
                next.release();
                this.listeners.remove(next);
            }
        }
    }
}
