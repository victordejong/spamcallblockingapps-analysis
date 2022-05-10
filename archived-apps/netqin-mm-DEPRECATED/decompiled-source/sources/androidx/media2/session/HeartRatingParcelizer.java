package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/HeartRatingParcelizer.class */
public final class HeartRatingParcelizer {
    public static HeartRating read(VersionedParcel versionedParcel) {
        HeartRating heartRating = new HeartRating();
        heartRating.f2181a = versionedParcel.m36981a(heartRating.f2181a, 1);
        heartRating.f2182b = versionedParcel.m36981a(heartRating.f2182b, 2);
        return heartRating;
    }

    public static void write(HeartRating heartRating, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36964b(heartRating.f2181a, 1);
        versionedParcel.m36964b(heartRating.f2182b, 2);
    }
}
