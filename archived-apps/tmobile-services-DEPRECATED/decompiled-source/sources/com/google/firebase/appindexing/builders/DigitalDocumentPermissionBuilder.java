package com.google.firebase.appindexing.builders;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/builders/DigitalDocumentPermissionBuilder.class */
public final class DigitalDocumentPermissionBuilder extends IndexableBuilder<DigitalDocumentPermissionBuilder> {
    public static final String COMMENT_PERMISSION = "CommentPermission";
    public static final String READ_PERMISSION = "ReadPermission";
    public static final String WRITE_PERMISSION = "WritePermission";

    /* JADX INFO: Access modifiers changed from: package-private */
    public DigitalDocumentPermissionBuilder() {
        super("DigitalDocumentPermission");
    }

    public final DigitalDocumentPermissionBuilder setGrantee(@NonNull PersonBuilder... personBuilderArr) {
        return put("grantee", personBuilderArr);
    }

    public final DigitalDocumentPermissionBuilder setPermissionType(@NonNull String str) {
        return put("permissionType", str);
    }
}
