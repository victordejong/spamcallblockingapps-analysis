package com.privacystar.core.data.providers;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/Grouper.class */
public abstract class Grouper<T> implements Comparator<T> {
    public abstract void merge(T t, T t2);
}
