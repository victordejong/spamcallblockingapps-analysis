package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/ThumbRatingParcelizer.class */
public final class ThumbRatingParcelizer {
    public static ThumbRating read(VersionedParcel versionedParcel) {
        ThumbRating thumbRating = new ThumbRating();
        thumbRating.f2235a = versionedParcel.m36981a(thumbRating.f2235a, 1);
        thumbRating.f2236b = versionedParcel.m36981a(thumbRating.f2236b, 2);
        return thumbRating;
    }

    public static void write(ThumbRating thumbRating, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36964b(thumbRating.f2235a, 1);
        versionedParcel.m36964b(thumbRating.f2236b, 2);
    }
}
