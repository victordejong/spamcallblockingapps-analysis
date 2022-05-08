package p660rx.internal.operators;

import java.io.Serializable;
import p660rx.Observer;
/* renamed from: rx.internal.operators.NotificationLite */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/NotificationLite.class */
public final class NotificationLite {
    public static final Object ON_COMPLETED_SENTINEL = new Serializable() { // from class: rx.internal.operators.NotificationLite.1
        public String toString() {
            return "Notification=>Completed";
        }
    };
    public static final Object ON_NEXT_NULL_SENTINEL = new Serializable() { // from class: rx.internal.operators.NotificationLite.2
        public String toString() {
            return "Notification=>NULL";
        }
    };

    /* renamed from: rx.internal.operators.NotificationLite$OnErrorSentinel */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/NotificationLite$OnErrorSentinel.class */
    public static final class OnErrorSentinel implements Serializable {

        /* renamed from: e */
        public final Throwable f33463e;

        public OnErrorSentinel(Throwable th) {
            this.f33463e = th;
        }

        public String toString() {
            return "Notification=>Error:" + this.f33463e;
        }
    }

    public static <T> boolean accept(Observer<? super T> observer, Object obj) {
        if (obj == ON_COMPLETED_SENTINEL) {
            observer.onCompleted();
            return true;
        } else if (obj == ON_NEXT_NULL_SENTINEL) {
            observer.onNext(null);
            return false;
        } else if (obj == null) {
            throw new IllegalArgumentException("The lite notification can not be null");
        } else if (obj.getClass() == OnErrorSentinel.class) {
            observer.onError(((OnErrorSentinel) obj).f33463e);
            return true;
        } else {
            observer.onNext(obj);
            return false;
        }
    }

    public static Object completed() {
        return ON_COMPLETED_SENTINEL;
    }

    public static Object error(Throwable th) {
        return new OnErrorSentinel(th);
    }

    public static <T> T getValue(Object obj) {
        T t = (T) obj;
        if (obj == ON_NEXT_NULL_SENTINEL) {
            t = null;
        }
        return t;
    }

    public static boolean isCompleted(Object obj) {
        return obj == ON_COMPLETED_SENTINEL;
    }

    public static <T> Object next(T t) {
        Object obj = t;
        if (t == null) {
            obj = ON_NEXT_NULL_SENTINEL;
        }
        return obj;
    }
}
