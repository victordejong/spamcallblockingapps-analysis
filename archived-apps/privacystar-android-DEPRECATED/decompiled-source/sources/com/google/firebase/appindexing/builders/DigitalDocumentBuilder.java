package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/DigitalDocumentBuilder.class */
public final class DigitalDocumentBuilder extends IndexableBuilder<DigitalDocumentBuilder> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DigitalDocumentBuilder() {
        super("DigitalDocument");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DigitalDocumentBuilder(String str) {
        super(str);
    }

    public final DigitalDocumentBuilder setAuthor(@NonNull PersonBuilder... personBuilderArr) {
        return put("author", personBuilderArr);
    }

    public final DigitalDocumentBuilder setDateCreated(@NonNull Date date) {
        return put("dateCreated", date.getTime());
    }

    public final DigitalDocumentBuilder setDateModified(@NonNull Date date) {
        return put("dateModified", date.getTime());
    }

    public final DigitalDocumentBuilder setHasDigitalDocumentPermission(@NonNull DigitalDocumentPermissionBuilder... digitalDocumentPermissionBuilderArr) {
        return put("hasDigitalDocumentPermission", digitalDocumentPermissionBuilderArr);
    }

    public final DigitalDocumentBuilder setText(@NonNull String str) {
        return put("text", str);
    }
}
