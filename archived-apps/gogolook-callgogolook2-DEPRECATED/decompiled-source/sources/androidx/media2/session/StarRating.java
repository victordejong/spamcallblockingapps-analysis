package androidx.media2.session;

import androidx.annotation.IntRange;
import androidx.core.util.ObjectsCompat;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/StarRating.class */
public final class StarRating implements Rating {
    public static final float RATING_NOT_RATED = -1.0f;
    public int mMaxStars;
    public float mStarRating;

    public StarRating() {
    }

    public StarRating(@IntRange(from = 1) int i) {
        if (i > 0) {
            this.mMaxStars = i;
            this.mStarRating = -1.0f;
            return;
        }
        throw new IllegalArgumentException("maxStars should be a positive integer");
    }

    public StarRating(@IntRange(from = 1) int i, float f) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxStars should be a positive integer");
        } else if (f < 0.0f || f > i) {
            throw new IllegalArgumentException("starRating is out of range [0, maxStars]");
        } else {
            this.mMaxStars = i;
            this.mStarRating = f;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof StarRating)) {
            return false;
        }
        StarRating starRating = (StarRating) obj;
        boolean z = false;
        if (this.mMaxStars == starRating.mMaxStars) {
            z = false;
            if (this.mStarRating == starRating.mStarRating) {
                z = true;
            }
        }
        return z;
    }

    public int getMaxStars() {
        return this.mMaxStars;
    }

    public float getStarRating() {
        return this.mStarRating;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Integer.valueOf(this.mMaxStars), Float.valueOf(this.mStarRating));
    }

    @Override // androidx.media2.common.Rating
    public boolean isRated() {
        return this.mStarRating >= 0.0f;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("StarRating: maxStars=");
        sb.append(this.mMaxStars);
        if (isRated()) {
            str = ", starRating=" + this.mStarRating;
        } else {
            str = ", unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
