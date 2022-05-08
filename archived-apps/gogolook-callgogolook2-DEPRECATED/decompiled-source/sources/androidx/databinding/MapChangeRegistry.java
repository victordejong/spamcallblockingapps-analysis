package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableMap;
/* loaded from: classes-dex2jar.jar:androidx/databinding/MapChangeRegistry.class */
public class MapChangeRegistry extends CallbackRegistry<ObservableMap.OnMapChangedCallback, ObservableMap, Object> {
    public static CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object> NOTIFIER_CALLBACK = new CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object>() { // from class: androidx.databinding.MapChangeRegistry.1
        public void onNotifyCallback(ObservableMap.OnMapChangedCallback onMapChangedCallback, ObservableMap observableMap, int i, Object obj) {
            onMapChangedCallback.onMapChanged(observableMap, obj);
        }
    };

    public MapChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }

    public void notifyChange(@NonNull ObservableMap observableMap, @Nullable Object obj) {
        notifyCallbacks(observableMap, 0, obj);
    }
}
