package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/StickerBuilder.class */
public final class StickerBuilder extends IndexableBuilder<StickerBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public StickerBuilder() {
        super("Sticker");
    }

    public final StickerBuilder setIsPartOf(@NonNull StickerPackBuilder stickerPackBuilder) {
        return put("isPartOf", stickerPackBuilder);
    }
}
