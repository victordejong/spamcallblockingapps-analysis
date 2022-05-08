package androidx.core.content.p004pm;

import androidx.annotation.AnyThread;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: androidx.core.content.pm.ShortcutInfoCompatSaver */
/* loaded from: classes-dex2jar.jar:androidx/core/content/pm/ShortcutInfoCompatSaver.class */
public abstract class ShortcutInfoCompatSaver<T> {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: androidx.core.content.pm.ShortcutInfoCompatSaver$NoopImpl */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl.class */
    public static class NoopImpl extends ShortcutInfoCompatSaver<Void> {
        @Override // androidx.core.content.p004pm.ShortcutInfoCompatSaver
        /* renamed from: addShortcuts  reason: avoid collision after fix types in other method */
        public Void addShortcuts2(List<ShortcutInfoCompat> list) {
            return null;
        }

        @Override // androidx.core.content.p004pm.ShortcutInfoCompatSaver
        public Void removeAllShortcuts() {
            return null;
        }

        @Override // androidx.core.content.p004pm.ShortcutInfoCompatSaver
        /* renamed from: removeShortcuts  reason: avoid collision after fix types in other method */
        public Void removeShortcuts2(List<String> list) {
            return null;
        }
    }

    @AnyThread
    public abstract T addShortcuts(List<ShortcutInfoCompat> list);

    @WorkerThread
    public List<ShortcutInfoCompat> getShortcuts() throws Exception {
        return new ArrayList();
    }

    @AnyThread
    public abstract T removeAllShortcuts();

    @AnyThread
    public abstract T removeShortcuts(List<String> list);
}
