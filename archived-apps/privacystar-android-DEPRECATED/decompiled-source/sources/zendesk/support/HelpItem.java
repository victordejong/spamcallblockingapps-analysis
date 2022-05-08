package zendesk.support;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpItem.class */
public interface HelpItem {
    public static final int TYPE_ARTICLE = 3;
    public static final int TYPE_CATEGORY = 1;
    public static final int TYPE_LOADING = 5;
    public static final int TYPE_NO_RESULTS = 7;
    public static final int TYPE_PADDING = 8;
    public static final int TYPE_SECTION = 2;
    public static final int TYPE_SEE_ALL = 4;

    @Nullable
    Long getId();

    @NonNull
    String getName();

    @Nullable
    Long getParentId();

    int getViewType();
}
