package p660rx;
/* renamed from: rx.Notification */
/* loaded from: classes3-dex2jar.jar:rx/Notification.class */
public final class Notification<T> {
    public final Kind kind;
    public final Throwable throwable;
    public final T value;

    /* renamed from: rx.Notification$Kind */
    /* loaded from: classes3-dex2jar.jar:rx/Notification$Kind.class */
    public enum Kind {
        OnNext,
        OnError,
        OnCompleted
    }

    static {
        new Notification(Kind.OnCompleted, null, null);
    }

    public Notification(Kind kind, T t, Throwable th) {
        this.value = t;
        this.throwable = th;
        this.kind = kind;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
        if (r0.equals(r0) != false) goto L_0x0052;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
        if (r0.equals(r0) != false) goto L_0x0075;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x000f
            r0 = 1
            return r0
        L_0x000f:
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            java.lang.Class<rx.Notification> r1 = p660rx.Notification.class
            if (r0 == r1) goto L_0x001a
            r0 = 0
            return r0
        L_0x001a:
            r0 = r4
            rx.Notification r0 = (p660rx.Notification) r0
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            rx.Notification$Kind r0 = r0.getKind()
            r1 = r3
            rx.Notification$Kind r1 = r1.getKind()
            if (r0 != r1) goto L_0x0077
            r0 = r3
            T r0 = r0.value
            r7 = r0
            r0 = r4
            T r0 = r0.value
            r8 = r0
            r0 = r7
            r1 = r8
            if (r0 == r1) goto L_0x0052
            r0 = r5
            r6 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0077
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0077
        L_0x0052:
            r0 = r3
            java.lang.Throwable r0 = r0.throwable
            r8 = r0
            r0 = r4
            java.lang.Throwable r0 = r0.throwable
            r4 = r0
            r0 = r8
            r1 = r4
            if (r0 == r1) goto L_0x0075
            r0 = r5
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0077
            r0 = r5
            r6 = r0
            r0 = r8
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0077
        L_0x0075:
            r0 = 1
            r6 = r0
        L_0x0077:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.Notification.equals(java.lang.Object):boolean");
    }

    public Kind getKind() {
        return this.kind;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public T getValue() {
        return this.value;
    }

    public boolean hasThrowable() {
        return isOnError() && this.throwable != null;
    }

    public boolean hasValue() {
        return isOnNext() && this.value != null;
    }

    public int hashCode() {
        int hashCode = getKind().hashCode();
        int i = hashCode;
        if (hasValue()) {
            i = (hashCode * 31) + getValue().hashCode();
        }
        int i2 = i;
        if (hasThrowable()) {
            i2 = (i * 31) + getThrowable().hashCode();
        }
        return i2;
    }

    public boolean isOnError() {
        return getKind() == Kind.OnError;
    }

    public boolean isOnNext() {
        return getKind() == Kind.OnNext;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append('[');
        sb.append(super.toString());
        sb.append(' ');
        sb.append(getKind());
        if (hasValue()) {
            sb.append(' ');
            sb.append(getValue());
        }
        if (hasThrowable()) {
            sb.append(' ');
            sb.append(getThrowable().getMessage());
        }
        sb.append(']');
        return sb.toString();
    }
}
