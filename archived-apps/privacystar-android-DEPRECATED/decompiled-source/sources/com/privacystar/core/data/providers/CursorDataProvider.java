package com.privacystar.core.data.providers;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/CursorDataProvider.class */
public abstract class CursorDataProvider<T> implements DataProvider<T> {
    private static final Object POSITION_LOCK = new Object();
    private static final Object PROVIDER_LOCK = new Object();
    private List<T> cache;
    private Cursor dataProvider;
    private int position;

    private void updateMostRecent() {
        Cursor dataProvider = getDataProvider();
        dataProvider.moveToFirst();
        ArrayList arrayList = new ArrayList();
        if (dataProvider.getCount() == 0 || this.cache.isEmpty()) {
            this.cache.clear();
            this.dataProvider = dataProvider;
            return;
        }
        T t = this.cache.get(0);
        T populateItem = populateItem(dataProvider);
        this.position = 0;
        while (!dataProvider.isAfterLast() && populateItem != null && !populateItem.equals(t)) {
            arrayList.add(populateItem);
            dataProvider.moveToNext();
            populateItem = populateItem(dataProvider);
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void close() {
        synchronized (PROVIDER_LOCK) {
            this.dataProvider.close();
            this.dataProvider = null;
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int currentPosition() {
        int i;
        synchronized (POSITION_LOCK) {
            i = this.position;
        }
        return i;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public T get(int i) {
        synchronized (this) {
            if (i >= size()) {
                return null;
            }
            if (i < this.cache.size()) {
                return this.cache.get(i);
            }
            while (i > this.position + 1) {
                getNext();
            }
            return getNext();
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public LogCursor<T> getCursor() {
        return new LogCursor<>(this);
    }

    public abstract Cursor getDataProvider();

    @Override // com.privacystar.core.data.providers.DataProvider
    public T getNext() {
        synchronized (this) {
            synchronized (POSITION_LOCK) {
                this.position++;
                if (this.position < this.cache.size()) {
                    return this.cache.get(this.position);
                }
                if (this.dataProvider != null && !this.dataProvider.isClosed()) {
                    T populateItem = populateItem(this.dataProvider);
                    if (populateItem != null) {
                        this.cache.add(populateItem);
                        if (this.dataProvider != null) {
                            this.dataProvider.moveToNext();
                        } else {
                            Timber.m31i("Data provider unexpectedly became null.", new Object[0]);
                        }
                    }
                    return populateItem;
                }
                return null;
            }
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasNext() {
        boolean z;
        synchronized (PROVIDER_LOCK) {
            z = this.dataProvider != null && !this.dataProvider.isClosed() && !this.dataProvider.isAfterLast() && this.dataProvider.getCount() > 0;
        }
        return z;
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public boolean hasPrev() {
        boolean z;
        synchronized (PROVIDER_LOCK) {
            z = this.dataProvider != null && !this.dataProvider.isClosed() && !this.dataProvider.isBeforeFirst() && this.dataProvider.getCount() > 0;
        }
        return z;
    }

    public abstract T populateItem(Cursor cursor);

    @Override // com.privacystar.core.data.providers.DataProvider
    public void reset() {
        synchronized (PROVIDER_LOCK) {
            if (this.dataProvider != null) {
                this.dataProvider.close();
                this.dataProvider = null;
            }
        }
        setup();
    }

    public void setup() {
        synchronized (POSITION_LOCK) {
            this.dataProvider = getDataProvider();
            if (this.dataProvider != null) {
                this.dataProvider.moveToFirst();
            }
            this.cache = new ArrayList();
            this.position = -1;
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public int size() {
        synchronized (PROVIDER_LOCK) {
            if (this.dataProvider == null || this.dataProvider.isClosed()) {
                return 0;
            }
            return this.dataProvider.getCount();
        }
    }

    @Override // com.privacystar.core.data.providers.DataProvider
    public void update() {
        reset();
    }
}
