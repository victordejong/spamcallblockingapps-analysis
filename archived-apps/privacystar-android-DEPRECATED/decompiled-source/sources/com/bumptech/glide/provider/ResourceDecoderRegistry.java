package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/ResourceDecoderRegistry.class */
public class ResourceDecoderRegistry {
    private final List<String> bucketPriorityList = new ArrayList();
    private final Map<String, List<Entry<?, ?>>> decoders = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/ResourceDecoderRegistry$Entry.class */
    public static class Entry<T, R> {
        private final Class<T> dataClass;
        final ResourceDecoder<T, R> decoder;
        final Class<R> resourceClass;

        public Entry(@NonNull Class<T> cls, @NonNull Class<R> cls2, ResourceDecoder<T, R> resourceDecoder) {
            this.dataClass = cls;
            this.resourceClass = cls2;
            this.decoder = resourceDecoder;
        }

        public boolean handles(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.dataClass.isAssignableFrom(cls) && cls2.isAssignableFrom(this.resourceClass);
        }
    }

    @NonNull
    private List<Entry<?, ?>> getOrAddEntryList(@NonNull String str) {
        List<Entry<?, ?>> list;
        synchronized (this) {
            if (!this.bucketPriorityList.contains(str)) {
                this.bucketPriorityList.add(str);
            }
            List<Entry<?, ?>> list2 = this.decoders.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.decoders.put(str, list);
            }
        }
        return list;
    }

    public <T, R> void append(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        synchronized (this) {
            getOrAddEntryList(str).add(new Entry<>(cls, cls2, resourceDecoder));
        }
    }

    @NonNull
    public <T, R> List<ResourceDecoder<T, R>> getDecoders(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.bucketPriorityList) {
                List<Entry<?, ?>> list = this.decoders.get(str);
                if (list != null) {
                    for (Entry<?, ?> entry : list) {
                        if (entry.handles(cls, cls2)) {
                            arrayList.add(entry.decoder);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public <T, R> List<Class<R>> getResourceClasses(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.bucketPriorityList) {
                List<Entry<?, ?>> list = this.decoders.get(str);
                if (list != null) {
                    for (Entry<?, ?> entry : list) {
                        if (entry.handles(cls, cls2) && !arrayList.contains(entry.resourceClass)) {
                            arrayList.add(entry.resourceClass);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public <T, R> void prepend(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        synchronized (this) {
            getOrAddEntryList(str).add(0, new Entry<>(cls, cls2, resourceDecoder));
        }
    }

    public void setBucketPriorityList(@NonNull List<String> list) {
        synchronized (this) {
            ArrayList<String> arrayList = new ArrayList(this.bucketPriorityList);
            this.bucketPriorityList.clear();
            this.bucketPriorityList.addAll(list);
            for (String str : arrayList) {
                if (!list.contains(str)) {
                    this.bucketPriorityList.add(str);
                }
            }
        }
    }
}
