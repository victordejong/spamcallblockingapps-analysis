package androidx.appcompat.app;

import androidx.annotation.Nullable;
import androidx.appcompat.view.ActionMode;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatCallback.class */
public interface AppCompatCallback {
    void onSupportActionModeFinished(ActionMode actionMode);

    void onSupportActionModeStarted(ActionMode actionMode);

    @Nullable
    ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback);
}
