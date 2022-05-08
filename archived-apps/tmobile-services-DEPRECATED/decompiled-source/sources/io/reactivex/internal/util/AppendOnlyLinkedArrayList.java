package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.functions.Predicate;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/AppendOnlyLinkedArrayList.class */
public class AppendOnlyLinkedArrayList<T> {

    /* renamed from: a */
    final int f19417a;

    /* renamed from: b */
    final Object[] f19418b;

    /* renamed from: c */
    Object[] f19419c;

    /* renamed from: d */
    int f19420d;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate.class */
    public interface NonThrowingPredicate<T> extends Predicate<T> {
        @Override // io.reactivex.functions.Predicate
        /* renamed from: a */
        boolean mo3191a(T t);
    }

    public AppendOnlyLinkedArrayList(int i) {
        this.f19417a = i;
        Object[] objArr = new Object[i + 1];
        this.f19418b = objArr;
        this.f19419c = objArr;
    }

    /* renamed from: a */
    public <U> boolean m3461a(Observer<? super U> observer) {
        Object[] objArr;
        Object[] objArr2 = this.f19418b;
        int i = this.f19417a;
        while (true) {
            if (objArr2 == null) {
                return false;
            }
            for (int i2 = 0; i2 < i && (objArr = objArr2[i2]) != null; i2++) {
                if (NotificationLite.acceptFull(objArr, observer)) {
                    return true;
                }
            }
            objArr2 = objArr2[i];
        }
    }

    /* renamed from: b */
    public <U> boolean m3460b(Subscriber<? super U> subscriber) {
        Object[] objArr;
        Object[] objArr2 = this.f19418b;
        int i = this.f19417a;
        while (true) {
            if (objArr2 == null) {
                return false;
            }
            for (int i2 = 0; i2 < i && (objArr = objArr2[i2]) != null; i2++) {
                if (NotificationLite.acceptFull(objArr, subscriber)) {
                    return true;
                }
            }
            objArr2 = objArr2[i];
        }
    }

    /* renamed from: c */
    public void m3459c(T t) {
        int i = this.f19417a;
        int i2 = this.f19420d;
        int i3 = i2;
        if (i2 == i) {
            Object[] objArr = new Object[i + 1];
            this.f19419c[i] = objArr;
            this.f19419c = objArr;
            i3 = 0;
        }
        this.f19419c[i3] = t;
        this.f19420d = i3 + 1;
    }

    /* renamed from: d */
    public void m3458d(NonThrowingPredicate<? super T> nonThrowingPredicate) {
        Object obj;
        int i = this.f19417a;
        for (Object[] objArr = this.f19418b; objArr != null; objArr = (Object[]) objArr[i]) {
            for (int i2 = 0; i2 < i && (obj = objArr[i2]) != null; i2++) {
                if (nonThrowingPredicate.mo3191a(obj)) {
                    return;
                }
            }
        }
    }

    /* renamed from: e */
    public void m3457e(T t) {
        this.f19418b[0] = t;
    }
}
