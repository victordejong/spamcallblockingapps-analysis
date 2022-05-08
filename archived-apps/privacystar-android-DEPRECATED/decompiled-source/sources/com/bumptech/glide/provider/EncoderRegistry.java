package com.bumptech.glide.provider;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/EncoderRegistry.class */
public class EncoderRegistry {
    private final List<Entry<?>> encoders = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/provider/EncoderRegistry$Entry.class */
    private static final class Entry<T> {
        private final Class<T> dataClass;
        final Encoder<T> encoder;

        Entry(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
            this.dataClass = cls;
            this.encoder = encoder;
        }

        boolean handles(@NonNull Class<?> cls) {
            return this.dataClass.isAssignableFrom(cls);
        }
    }

    public <T> void append(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        synchronized (this) {
            this.encoders.add(new Entry<>(cls, encoder));
        }
    }

    @Nullable
    public <T> Encoder<T> getEncoder(@NonNull Class<T> cls) {
        Entry<?> next;
        synchronized (this) {
            Iterator<Entry<?>> it = this.encoders.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.handles(cls));
            return (Encoder<T>) next.encoder;
        }
    }

    public <T> void prepend(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        synchronized (this) {
            this.encoders.add(0, new Entry<>(cls, encoder));
        }
    }
}
