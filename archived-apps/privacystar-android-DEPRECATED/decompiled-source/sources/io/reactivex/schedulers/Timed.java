package io.reactivex.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Timed.class */
public final class Timed<T> {
    final long time;
    final TimeUnit unit;
    final T value;

    public Timed(@NonNull T t, long j, @NonNull TimeUnit timeUnit) {
        this.value = t;
        this.time = j;
        this.unit = (TimeUnit) ObjectHelper.requireNonNull(timeUnit, "unit is null");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Timed)) {
            return false;
        }
        Timed timed = (Timed) obj;
        boolean z = false;
        if (ObjectHelper.equals(this.value, timed.value)) {
            z = false;
            if (this.time == timed.time) {
                z = false;
                if (ObjectHelper.equals(this.unit, timed.unit)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((this.value != null ? this.value.hashCode() : 0) * 31) + ((int) ((this.time >>> 31) ^ this.time))) * 31) + this.unit.hashCode();
    }

    public long time() {
        return this.time;
    }

    public long time(@NonNull TimeUnit timeUnit) {
        return timeUnit.convert(this.time, this.unit);
    }

    public String toString() {
        return "Timed[time=" + this.time + ", unit=" + this.unit + ", value=" + this.value + "]";
    }

    @NonNull
    public TimeUnit unit() {
        return this.unit;
    }

    @NonNull
    public T value() {
        return this.value;
    }
}
