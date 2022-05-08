package zendesk.suas;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Action.class */
public class Action<E> {
    private final String actionType;
    private final E data;

    public Action(@NonNull String str) {
        this.actionType = str;
        this.data = null;
    }

    public Action(@NonNull String str, @Nullable E e) {
        this.actionType = str;
        this.data = e;
    }

    @NonNull
    public String getActionType() {
        return this.actionType;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [E, F] */
    @Nullable
    public <F> F getData() {
        return this.data;
    }

    @Nullable
    public <F> F getData(@NonNull Class<F> cls) {
        if (cls.isInstance(this.data)) {
            return cls.cast(this.data);
        }
        return null;
    }

    @Nullable
    public E getRawData() {
        return this.data;
    }

    public String toString() {
        return "Action{actionType='" + this.actionType + "', data=" + this.data + '}';
    }
}
