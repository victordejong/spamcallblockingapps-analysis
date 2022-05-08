package androidx.media2.session;

import androidx.core.util.ObjectsCompat;
import androidx.media2.common.Rating;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRating.class */
public final class ThumbRating implements Rating {
    public boolean mIsRated = false;
    public boolean mThumbUp;

    public ThumbRating() {
    }

    public ThumbRating(boolean z) {
        this.mThumbUp = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ThumbRating)) {
            return false;
        }
        ThumbRating thumbRating = (ThumbRating) obj;
        boolean z = false;
        if (this.mThumbUp == thumbRating.mThumbUp) {
            z = false;
            if (this.mIsRated == thumbRating.mIsRated) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return ObjectsCompat.hash(Boolean.valueOf(this.mIsRated), Boolean.valueOf(this.mThumbUp));
    }

    @Override // androidx.media2.common.Rating
    public boolean isRated() {
        return this.mIsRated;
    }

    public boolean isThumbUp() {
        return this.mThumbUp;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("ThumbRating: ");
        if (this.mIsRated) {
            str = "isThumbUp=" + this.mThumbUp;
        } else {
            str = "unrated";
        }
        sb.append(str);
        return sb.toString();
    }
}
