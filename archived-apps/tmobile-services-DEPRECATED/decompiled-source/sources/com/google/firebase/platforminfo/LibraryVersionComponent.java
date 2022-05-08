package com.google.firebase.platforminfo;

import com.google.firebase.components.Component;
/* loaded from: classes-dex2jar.jar:com/google/firebase/platforminfo/LibraryVersionComponent.class */
public class LibraryVersionComponent {
    private LibraryVersionComponent() {
    }

    public static Component<?> create(String str, String str2) {
        return Component.intoSet(LibraryVersion.create(str, str2), LibraryVersion.class);
    }
}
