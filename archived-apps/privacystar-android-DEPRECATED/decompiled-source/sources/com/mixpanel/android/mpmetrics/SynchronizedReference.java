package com.mixpanel.android.mpmetrics;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/SynchronizedReference.class */
class SynchronizedReference<T> {
    private T mContents = null;

    public T get() {
        T t;
        synchronized (this) {
            t = this.mContents;
        }
        return t;
    }

    public T getAndClear() {
        T t;
        synchronized (this) {
            t = this.mContents;
            this.mContents = null;
        }
        return t;
    }

    public void set(T t) {
        synchronized (this) {
            this.mContents = t;
        }
    }
}
