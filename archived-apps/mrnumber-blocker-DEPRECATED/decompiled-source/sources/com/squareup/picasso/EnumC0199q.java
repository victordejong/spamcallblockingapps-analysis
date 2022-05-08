package com.squareup.picasso;
/* renamed from: com.squareup.picasso.q */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/q.class */
public enum EnumC0199q {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);
    
    final int index;

    EnumC0199q(int i) {
        this.index = i;
    }

    public static boolean isOfflineOnly(int i) {
        return (i & OFFLINE.index) != 0;
    }

    public static boolean shouldReadFromDiskCache(int i) {
        return (i & NO_CACHE.index) == 0;
    }

    public static boolean shouldWriteToDiskCache(int i) {
        return (i & NO_STORE.index) == 0;
    }
}
