package androidx.databinding;

import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableMap;
/* loaded from: classes-dex2jar.jar:androidx/databinding/MapChangeRegistry.class */
public class MapChangeRegistry extends CallbackRegistry<ObservableMap.OnMapChangedCallback, ObservableMap, Object> {

    /* renamed from: k */
    private static CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object> f3524k = new CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object>() { // from class: androidx.databinding.MapChangeRegistry.1
        /* renamed from: b */
        public void mo18605a(ObservableMap.OnMapChangedCallback onMapChangedCallback, ObservableMap observableMap, int i, Object obj) {
            onMapChangedCallback.mo18597a(observableMap, obj);
        }
    };

    public MapChangeRegistry() {
        super(f3524k);
    }
}
