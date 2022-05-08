package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.util.Util;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool.class */
abstract class BaseKeyPool<T extends Poolable> {
    private static final int MAX_SIZE = 20;
    private final Queue<T> keyPool = Util.createQueue(20);

    abstract T create();

    /* JADX INFO: Access modifiers changed from: package-private */
    public T get() {
        T poll = this.keyPool.poll();
        T t = poll;
        if (poll == null) {
            t = create();
        }
        return t;
    }

    public void offer(T t) {
        if (this.keyPool.size() < 20) {
            this.keyPool.offer(t);
        }
    }
}
