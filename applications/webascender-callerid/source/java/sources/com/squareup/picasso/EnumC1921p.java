package com.squareup.picasso;
/* renamed from: com.squareup.picasso.p */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/p.class */
public enum EnumC1921p {
    NO_CACHE(1),
    NO_STORE(2);
    
    final int index;

    EnumC1921p(int i) {
        this.index = i;
    }

    public static boolean shouldReadFromMemoryCache(int i) {
        return (i & NO_CACHE.index) == 0;
    }

    public static boolean shouldWriteToMemoryCache(int i) {
        return (i & NO_STORE.index) == 0;
    }
}
