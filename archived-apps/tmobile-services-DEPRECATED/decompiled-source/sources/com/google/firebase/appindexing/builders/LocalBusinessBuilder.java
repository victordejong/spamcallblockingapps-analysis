package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/LocalBusinessBuilder.class */
public final class LocalBusinessBuilder extends IndexableBuilder<LocalBusinessBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalBusinessBuilder() {
        super("LocalBusiness");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalBusinessBuilder(String str) {
        super(str);
    }

    public final LocalBusinessBuilder setAddress(@NonNull PostalAddressBuilder postalAddressBuilder) {
        return put("address", postalAddressBuilder);
    }

    public final LocalBusinessBuilder setAggregateRating(@NonNull AggregateRatingBuilder aggregateRatingBuilder) {
        return put("aggregateRating", aggregateRatingBuilder);
    }

    public final LocalBusinessBuilder setGeo(@NonNull GeoShapeBuilder geoShapeBuilder) {
        return put("geo", geoShapeBuilder);
    }

    public final LocalBusinessBuilder setPriceRange(@NonNull String str) {
        return put("priceRange", str);
    }

    public final LocalBusinessBuilder setTelephone(@NonNull String str) {
        return put("telephone", str);
    }
}
