package zendesk.support;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.StringUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/ZendeskAvatarView.class */
public class ZendeskAvatarView extends FrameLayout {
    private static final int[] AVATAR_COLORS = {C1790R.color.zs_avatar_view_color_01, C1790R.color.zs_avatar_view_color_02, C1790R.color.zs_avatar_view_color_03, C1790R.color.zs_avatar_view_color_04, C1790R.color.zs_avatar_view_color_05, C1790R.color.zs_avatar_view_color_06, C1790R.color.zs_avatar_view_color_07, C1790R.color.zs_avatar_view_color_08, C1790R.color.zs_avatar_view_color_09, C1790R.color.zs_avatar_view_color_10, C1790R.color.zs_avatar_view_color_11, C1790R.color.zs_avatar_view_color_12, C1790R.color.zs_avatar_view_color_13, C1790R.color.zs_avatar_view_color_14, C1790R.color.zs_avatar_view_color_15, C1790R.color.zs_avatar_view_color_16, C1790R.color.zs_avatar_view_color_17, C1790R.color.zs_avatar_view_color_18, C1790R.color.zs_avatar_view_color_19};
    private boolean enableOutline;
    private ImageView imageView;
    private int strokeColor;
    private int strokeWidth;
    private TextView textView;

    public ZendeskAvatarView(@NonNull Context context) {
        this(context, null, 0);
    }

    public ZendeskAvatarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZendeskAvatarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.enableOutline = false;
        this.strokeColor = 0;
        this.strokeWidth = 0;
        initViews();
    }

    private Drawable getBackgroundShape(@ColorRes int i) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(ContextCompat.getColor(getContext(), i));
        if (!this.enableOutline) {
            return shapeDrawable;
        }
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
        Paint paint = shapeDrawable2.getPaint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        paint.setColor(this.strokeColor);
        paint.setStrokeWidth(this.strokeWidth);
        return new LayerDrawable(new Drawable[]{shapeDrawable, new InsetDrawable((Drawable) shapeDrawable2, this.strokeWidth / 2)});
    }

    private int getColorId(Object obj) {
        return AVATAR_COLORS[Math.abs(obj.hashCode() % AVATAR_COLORS.length)];
    }

    private void initViews() {
        this.textView = new TextView(getContext());
        this.textView.setId(C1790R.C1793id.zs_avatar_view_text_view);
        this.textView.setTextColor(ContextCompat.getColor(getContext(), C1790R.color.zs_avatar_text_color));
        this.textView.setGravity(17);
        this.textView.setTextSize(2, 16.0f);
        this.imageView = new ImageView(getContext());
        this.imageView.setId(C1790R.C1793id.zs_avatar_view_image_view);
        addView(this.textView);
        addView(this.imageView);
    }

    private void setTextView(@NonNull String str) {
        setBackground(getBackgroundShape(getColorId(str)));
        this.textView.setText(String.valueOf(Character.toUpperCase(str.charAt(0))));
    }

    public void setStroke(int i, int i2) {
        this.strokeColor = i;
        this.strokeWidth = i2;
        this.enableOutline = true;
    }

    public void showUserWithAvatarImage(@NonNull Picasso picasso, @NonNull String str, @Nullable String str2, int i) {
        this.imageView.setVisibility(0);
        this.imageView.setImageResource(C1790R.color.zs_color_transparent);
        if (StringUtils.hasLength(str2)) {
            this.textView.setVisibility(0);
            setTextView(str2);
        }
        this.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        int i2 = i * 2;
        picasso.load(str).resize(i2, i2).centerCrop().noPlaceholder().transform(PicassoTransformations.getRoundWithBorderTransformation(i, this.strokeColor, this.strokeWidth)).into(this.imageView);
    }

    public void showUserWithIdentifier(@Nullable Object obj) {
        if (obj != null) {
            setBackground(getBackgroundShape(getColorId(obj)));
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setImageResource(C1790R.C1792drawable.zs_request_list_account_icon);
            this.textView.setVisibility(4);
            this.imageView.setVisibility(0);
        }
    }

    public void showUserWithName(@NonNull String str) {
        if (StringUtils.hasLength(str)) {
            setTextView(str);
            this.textView.setVisibility(0);
            this.imageView.setVisibility(4);
        }
    }
}
