package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/AggregateRatingBuilder.class */
public final class AggregateRatingBuilder extends IndexableBuilder<AggregateRatingBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AggregateRatingBuilder() {
        super("AggregateRating");
    }

    public final AggregateRatingBuilder setRatingCount(@NonNull long j) {
        return put("ratingCount", j);
    }

    public final AggregateRatingBuilder setRatingValue(@NonNull String str) {
        return put("ratingValue", str);
    }
}
