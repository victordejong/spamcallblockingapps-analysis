package com.privacystar.core.data.providers;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/DataProvider.class */
public interface DataProvider<T> {
    void close();

    int currentPosition();

    T get(int i);

    LogCursor<T> getCursor();

    T getNext();

    boolean hasNext();

    boolean hasPrev();

    void reset();

    int size();

    void update();
}
