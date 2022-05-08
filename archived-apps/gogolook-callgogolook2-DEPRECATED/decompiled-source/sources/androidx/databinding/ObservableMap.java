package androidx.databinding;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableMap.class */
public interface ObservableMap<K, V> extends Map<K, V> {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableMap$OnMapChangedCallback.class */
    public static abstract class OnMapChangedCallback<T extends ObservableMap<K, V>, K, V> {
        public abstract void onMapChanged(T t, K k);
    }

    void addOnMapChangedCallback(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback);

    void removeOnMapChangedCallback(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback);
}
