package zendesk.support.request;

import android.content.Context;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.util.Pair;
import android.support.p001v4.view.GravityCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import zendesk.support.UiUtils;
import zendesk.support.ZendeskAvatarView;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewToolbarAvatar.class */
class ViewToolbarAvatar extends FrameLayout {
    private static final int[] IMAGE_VIEW_IDS = {C1790R.C1793id.zs_request_toolbar_avatar_1, C1790R.C1793id.zs_request_toolbar_avatar_2, C1790R.C1793id.zs_request_toolbar_avatar_3, C1790R.C1793id.zs_request_toolbar_avatar_4, C1790R.C1793id.zs_request_toolbar_avatar_5};
    static final int MAX_IMAGES = 5;
    private final List<ZendeskAvatarView> avatarViews;
    private int imageRadius;
    private int strokeColor;
    private int strokeWidth;
    private List<Pair<String, String>> userInfo;

    public ViewToolbarAvatar(Context context) {
        this(context, null);
    }

    public ViewToolbarAvatar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewToolbarAvatar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.avatarViews = new ArrayList(5);
        this.userInfo = new ArrayList(5);
        this.imageRadius = context.getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_toolbar_avatar_radius);
        this.strokeWidth = context.getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_toolbar_avatar_stroke_width);
        this.strokeColor = UiUtils.themeAttributeToColor(C1790R.C1791attr.colorPrimary, getContext(), C1790R.color.zs_request_fallback_color_primary);
        for (int i2 = 0; i2 < 5; i2++) {
            ZendeskAvatarView createAndAddView = createAndAddView(i2);
            createAndAddView.setVisibility(8);
            this.avatarViews.add(createAndAddView);
        }
    }

    private void bindData(Picasso picasso) {
        for (int i = 0; i < this.avatarViews.size(); i++) {
            ZendeskAvatarView zendeskAvatarView = this.avatarViews.get(i);
            if (i < this.userInfo.size()) {
                Pair<String, String> pair = this.userInfo.get(i);
                if (StringUtils.hasLength(pair.first)) {
                    zendeskAvatarView.showUserWithAvatarImage(picasso, pair.first, pair.second, this.imageRadius);
                } else {
                    zendeskAvatarView.showUserWithName(pair.second);
                }
                zendeskAvatarView.setVisibility(0);
            } else {
                zendeskAvatarView.setVisibility(8);
            }
        }
    }

    private ZendeskAvatarView createAndAddView(int i) {
        ZendeskAvatarView zendeskAvatarView = new ZendeskAvatarView(getContext());
        zendeskAvatarView.setId(IMAGE_VIEW_IDS[i]);
        zendeskAvatarView.setStroke(this.strokeColor, this.strokeWidth);
        int i2 = this.imageRadius * 2;
        int i3 = i * 2 * (i2 / 3);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i2);
        layoutParams.gravity = GravityCompat.END;
        if (Build.VERSION.SDK_INT >= 17) {
            layoutParams.setMarginEnd(i3);
        } else {
            layoutParams.setMargins(0, 0, i3, 0);
        }
        addView(zendeskAvatarView, layoutParams);
        return zendeskAvatarView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImageUrls(Picasso picasso, List<Pair<String, String>> list) {
        if (list.size() > 5) {
            this.userInfo = list.subList(0, 5);
        } else {
            this.userInfo = CollectionUtils.copyOf(list);
        }
        Collections.reverse(this.userInfo);
        bindData(picasso);
    }
}
