package org.threeten.p040bp.temporal;

import java.io.Serializable;
import org.threeten.p040bp.DateTimeException;
/* renamed from: org.threeten.bp.temporal.ValueRange */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/temporal/ValueRange.class */
public final class ValueRange implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;
    private final long maxLargest;
    private final long maxSmallest;
    private final long minLargest;
    private final long minSmallest;

    private ValueRange(long j, long j2, long j3, long j4) {
        this.minSmallest = j;
        this.minLargest = j2;
        this.maxSmallest = j3;
        this.maxLargest = j4;
    }

    /* renamed from: of */
    public static ValueRange m46of(long j, long j2) {
        if (j <= j2) {
            return new ValueRange(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    /* renamed from: of */
    public static ValueRange m45of(long j, long j2, long j3) {
        return m44of(j, j, j2, j3);
    }

    /* renamed from: of */
    public static ValueRange m44of(long j, long j2, long j3, long j4) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
        } else if (j3 > j4) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        } else if (j2 <= j4) {
            return new ValueRange(j, j2, j3, j4);
        } else {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
    }

    public int checkValidIntValue(long j, TemporalField temporalField) {
        if (isValidIntValue(j)) {
            return (int) j;
        }
        throw new DateTimeException("Invalid int value for " + temporalField + ": " + j);
    }

    public long checkValidValue(long j, TemporalField temporalField) {
        if (isValidValue(j)) {
            return j;
        }
        if (temporalField != null) {
            throw new DateTimeException("Invalid value for " + temporalField + " (valid values " + this + "): " + j);
        }
        throw new DateTimeException("Invalid value (valid values " + this + "): " + j);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ValueRange)) {
            return false;
        }
        ValueRange valueRange = (ValueRange) obj;
        if (!(this.minSmallest == valueRange.minSmallest && this.minLargest == valueRange.minLargest && this.maxSmallest == valueRange.maxSmallest && this.maxLargest == valueRange.maxLargest)) {
            z = false;
        }
        return z;
    }

    public long getLargestMinimum() {
        return this.minLargest;
    }

    public long getMaximum() {
        return this.maxLargest;
    }

    public long getMinimum() {
        return this.minSmallest;
    }

    public long getSmallestMaximum() {
        return this.maxSmallest;
    }

    public int hashCode() {
        long j = ((((((this.minSmallest + this.minLargest) << ((int) (this.minLargest + 16))) >> ((int) (this.maxSmallest + 48))) << ((int) (this.maxSmallest + 32))) >> ((int) (this.maxLargest + 32))) << ((int) (this.maxLargest + 48))) >> 16;
        return (int) (j ^ (j >>> 32));
    }

    public boolean isFixed() {
        return this.minSmallest == this.minLargest && this.maxSmallest == this.maxLargest;
    }

    public boolean isIntValue() {
        return getMinimum() >= -2147483648L && getMaximum() <= 2147483647L;
    }

    public boolean isValidIntValue(long j) {
        return isIntValue() && isValidValue(j);
    }

    public boolean isValidValue(long j) {
        return j >= getMinimum() && j <= getMaximum();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.minSmallest);
        if (this.minSmallest != this.minLargest) {
            sb.append('/');
            sb.append(this.minLargest);
        }
        sb.append(" - ");
        sb.append(this.maxSmallest);
        if (this.maxSmallest != this.maxLargest) {
            sb.append('/');
            sb.append(this.maxLargest);
        }
        return sb.toString();
    }
}
