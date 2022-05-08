package android.support.p001v4.graphics;

import android.graphics.PointF;
import android.support.annotation.NonNull;
import android.support.p001v4.util.Preconditions;
/* renamed from: android.support.v4.graphics.PathSegment */
/* loaded from: classes-dex2jar.jar:android/support/v4/graphics/PathSegment.class */
public final class PathSegment {
    private final PointF mEnd;
    private final float mEndFraction;
    private final PointF mStart;
    private final float mStartFraction;

    public PathSegment(@NonNull PointF pointF, float f, @NonNull PointF pointF2, float f2) {
        this.mStart = (PointF) Preconditions.checkNotNull(pointF, "start == null");
        this.mStartFraction = f;
        this.mEnd = (PointF) Preconditions.checkNotNull(pointF2, "end == null");
        this.mEndFraction = f2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PathSegment)) {
            return false;
        }
        PathSegment pathSegment = (PathSegment) obj;
        if (Float.compare(this.mStartFraction, pathSegment.mStartFraction) != 0 || Float.compare(this.mEndFraction, pathSegment.mEndFraction) != 0 || !this.mStart.equals(pathSegment.mStart) || !this.mEnd.equals(pathSegment.mEnd)) {
            z = false;
        }
        return z;
    }

    @NonNull
    public PointF getEnd() {
        return this.mEnd;
    }

    public float getEndFraction() {
        return this.mEndFraction;
    }

    @NonNull
    public PointF getStart() {
        return this.mStart;
    }

    public float getStartFraction() {
        return this.mStartFraction;
    }

    public int hashCode() {
        int hashCode = this.mStart.hashCode();
        int i = 0;
        int floatToIntBits = this.mStartFraction != 0.0f ? Float.floatToIntBits(this.mStartFraction) : 0;
        int hashCode2 = this.mEnd.hashCode();
        if (this.mEndFraction != 0.0f) {
            i = Float.floatToIntBits(this.mEndFraction);
        }
        return (((((hashCode * 31) + floatToIntBits) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "PathSegment{start=" + this.mStart + ", startFraction=" + this.mStartFraction + ", end=" + this.mEnd + ", endFraction=" + this.mEndFraction + '}';
    }
}
