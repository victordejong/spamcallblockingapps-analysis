package com.mustafatunc.simplesnackbarbuilder;

import android.content.Context;
import android.support.annotation.ColorRes;
import android.support.annotation.StringRes;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.internal.view.SupportMenu;
import android.support.p001v4.view.ViewCompat;
import android.view.View;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mustafatunc.simplesnackbarbuilder.SSnackbar;
import com.mustafatunc.simplesnackbarbuilder.tsnackbar.BottomSnackbar;
import com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom;
import com.mustafatunc.simplesnackbarbuilder.tsnackbar.TopSnackbar;
import com.privacystar.core.util.CampaignUtil;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018��2\u00020\u0001:\u0004\b\t\n\u000bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0004H&¨\u0006\f"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar;", "", "()V", TextModalInteraction.EVENT_NAME_DISMISS, "", "isShowing", "", "show", "Alignment", "Builder", CampaignUtil.FIELD_DURATION, "SnackType", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/SSnackbar.class */
public abstract class SSnackbar {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Alignment;", "", "(Ljava/lang/String;I)V", "LEFT", "CENTER", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/SSnackbar$Alignment.class */
    public enum Alignment {
        LEFT,
        CENTER
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\u000f\u001a\u00020��2\u0006\u0010\u001a\u001a\u00020\nJ\u0010\u0010\u001b\u001a\u00020��2\b\b\u0001\u0010\u001c\u001a\u00020\nJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u0012\u0010\u001f\u001a\u00020\n2\b\b\u0001\u0010\u001c\u001a\u00020\nH\u0002J\u0012\u0010 \u001a\u00020\f2\b\b\u0001\u0010!\u001a\u00020\nH\u0002J\u001a\u0010\"\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u001c\u0010\"\u001a\u00020��2\b\b\u0001\u0010#\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\"\u0010$\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J$\u0010$\u001a\u00020��2\b\b\u0001\u0010#\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J$\u0010%\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\f2\b\b\u0001\u0010\u001c\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J&\u0010%\u001a\u00020��2\b\b\u0001\u0010#\u001a\u00020\n2\b\b\u0001\u0010\u001c\u001a\u00020\n2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010&\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010'\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\fJ\u0010\u0010'\u001a\u00020��2\b\b\u0001\u0010!\u001a\u00020\nJ\u000e\u0010(\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\nJ\u0010\u0010*\u001a\u00020)2\b\b\u0001\u0010\u001c\u001a\u00020\nJ\u001a\u0010+\u001a\u00020��2\b\b\u0001\u0010!\u001a\u00020\n2\b\b\u0001\u0010\u001c\u001a\u00020\nJ\u0016\u0010,\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\nJ\u0018\u0010,\u001a\u00020��2\b\b\u0001\u0010!\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u0018\u0010-\u001a\u00020)2\u0006\u0010\u0018\u001a\u00020\f2\b\b\u0001\u0010\u001c\u001a\u00020\nJ\u000e\u0010.\u001a\u00020��2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006/"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Builder;", "", "context", "Landroid/content/Context;", Promotion.ACTION_VIEW, "Landroid/view/View;", "type", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$SnackType;", "(Landroid/content/Context;Landroid/view/View;Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$SnackType;)V", "actionColor", "", "actionText", "", "alignment", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Alignment;", "backgroundColor", "callback", "Landroid/view/View$OnClickListener;", "duration", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Duration;", "isActionSet", "", "snack", "Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/ISnackbarTopBottom;", "text", "textColor", "color", "backgroundColorResource", "colorId", "build", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar;", "getColor", "getString", "stringId", "setAction", "textId", "setActionWithColor", "setActionWithColorResource", "setDuration", "setText", "setTextColor", "", "setTextColorResource", "setTextResourceWithColorResource", "setTextWithColor", "setTextWithColorResource", "textAlignment", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/SSnackbar$Builder.class */
    public static final class Builder {
        private int actionColor;
        private CharSequence actionText;
        private Alignment alignment;
        private int backgroundColor;
        private View.OnClickListener callback;
        private final Context context;
        private Duration duration;
        private boolean isActionSet;
        private ISnackbarTopBottom snack;
        private CharSequence text;
        private int textColor;
        private final View view;

        public Builder(@NotNull Context context, @NotNull View view, @NotNull SnackType type) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(type, "type");
            this.context = context;
            this.view = view;
            this.snack = type == SnackType.BOTTOM ? new BottomSnackbar() : new TopSnackbar();
            this.text = "";
            this.textColor = ViewCompat.MEASURED_STATE_MASK;
            this.alignment = Alignment.LEFT;
            this.backgroundColor = -1;
            this.actionText = "";
            this.actionColor = SupportMenu.CATEGORY_MASK;
            this.duration = Duration.LENGTH_SHORT;
            this.callback = new View.OnClickListener() { // from class: com.mustafatunc.simplesnackbarbuilder.SSnackbar$Builder$callback$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ISnackbarTopBottom iSnackbarTopBottom;
                    iSnackbarTopBottom = SSnackbar.Builder.this.snack;
                    if (iSnackbarTopBottom == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.mustafatunc.simplesnackbarbuilder.SSnackbar");
                    }
                    ((SSnackbar) iSnackbarTopBottom).dismiss();
                }
            };
        }

        private final int getColor(@ColorRes int i) {
            return ContextCompat.getColor(this.context, i);
        }

        private final CharSequence getString(@StringRes int i) {
            String string = this.context.getString(i);
            Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(stringId)");
            return string;
        }

        @NotNull
        public static /* synthetic */ Builder setAction$default(Builder builder, int i, View.OnClickListener onClickListener, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                onClickListener = null;
            }
            return builder.setAction(i, onClickListener);
        }

        @NotNull
        public static /* synthetic */ Builder setAction$default(Builder builder, CharSequence charSequence, View.OnClickListener onClickListener, int i, Object obj) {
            if ((i & 2) != 0) {
                onClickListener = null;
            }
            return builder.setAction(charSequence, onClickListener);
        }

        @NotNull
        public static /* synthetic */ Builder setActionWithColor$default(Builder builder, int i, int i2, View.OnClickListener onClickListener, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                onClickListener = null;
            }
            return builder.setActionWithColor(i, i2, onClickListener);
        }

        @NotNull
        public static /* synthetic */ Builder setActionWithColor$default(Builder builder, CharSequence charSequence, int i, View.OnClickListener onClickListener, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                onClickListener = null;
            }
            return builder.setActionWithColor(charSequence, i, onClickListener);
        }

        @NotNull
        public static /* synthetic */ Builder setActionWithColorResource$default(Builder builder, int i, int i2, View.OnClickListener onClickListener, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                onClickListener = null;
            }
            return builder.setActionWithColorResource(i, i2, onClickListener);
        }

        @NotNull
        public static /* synthetic */ Builder setActionWithColorResource$default(Builder builder, CharSequence charSequence, int i, View.OnClickListener onClickListener, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                onClickListener = null;
            }
            return builder.setActionWithColorResource(charSequence, i, onClickListener);
        }

        @NotNull
        public final Builder backgroundColor(int i) {
            Builder builder = this;
            builder.backgroundColor = i;
            return builder;
        }

        @NotNull
        public final Builder backgroundColorResource(@ColorRes int i) {
            Builder builder = this;
            builder.backgroundColor = builder.getColor(i);
            return builder;
        }

        @NotNull
        public final SSnackbar build() {
            ISnackbarTopBottom iSnackbarTopBottom = this.snack;
            iSnackbarTopBottom.make(this.view, this.text, this.duration);
            iSnackbarTopBottom.setTextColor(this.textColor);
            if (this.isActionSet) {
                iSnackbarTopBottom.setAction(this.actionText, this.actionColor, this.callback);
                iSnackbarTopBottom.setDuration(Duration.LENGTH_INDEFINITE);
            }
            iSnackbarTopBottom.backgroundColor(this.backgroundColor);
            iSnackbarTopBottom.textAlignment(this.alignment);
            ISnackbarTopBottom iSnackbarTopBottom2 = this.snack;
            if (iSnackbarTopBottom2 != null) {
                return (SSnackbar) iSnackbarTopBottom2;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.mustafatunc.simplesnackbarbuilder.SSnackbar");
        }

        @NotNull
        public final Builder setAction(@StringRes int i, @Nullable View.OnClickListener onClickListener) {
            Builder builder = this;
            builder.actionText = builder.getString(i);
            if (onClickListener != null) {
                builder.callback = onClickListener;
            }
            builder.isActionSet = true;
            return builder;
        }

        @NotNull
        public final Builder setAction(@NotNull CharSequence text, @Nullable View.OnClickListener onClickListener) {
            Intrinsics.checkParameterIsNotNull(text, "text");
            Builder builder = this;
            builder.actionText = text;
            if (onClickListener != null) {
                builder.callback = onClickListener;
            }
            builder.isActionSet = true;
            return builder;
        }

        @NotNull
        public final Builder setActionWithColor(@StringRes int i, int i2, @Nullable View.OnClickListener onClickListener) {
            Builder builder = this;
            builder.actionText = builder.getString(i);
            builder.actionColor = i2;
            if (onClickListener != null) {
                builder.callback = onClickListener;
            }
            builder.isActionSet = true;
            return builder;
        }

        @NotNull
        public final Builder setActionWithColor(@NotNull CharSequence text, int i, @Nullable View.OnClickListener onClickListener) {
            Intrinsics.checkParameterIsNotNull(text, "text");
            Builder builder = this;
            builder.actionText = text;
            builder.actionColor = i;
            if (onClickListener != null) {
                builder.callback = onClickListener;
            }
            builder.isActionSet = true;
            return builder;
        }

        @NotNull
        public final Builder setActionWithColorResource(@StringRes int i, @ColorRes int i2, @Nullable View.OnClickListener onClickListener) {
            Builder builder = this;
            builder.actionText = builder.getString(i);
            builder.actionColor = builder.getColor(i2);
            if (onClickListener != null) {
                builder.callback = onClickListener;
            }
            builder.isActionSet = true;
            return builder;
        }

        @NotNull
        public final Builder setActionWithColorResource(@NotNull CharSequence text, @ColorRes int i, @Nullable View.OnClickListener onClickListener) {
            Intrinsics.checkParameterIsNotNull(text, "text");
            Builder builder = this;
            builder.actionText = text;
            builder.actionColor = builder.getColor(i);
            if (onClickListener != null) {
                builder.callback = onClickListener;
            }
            builder.isActionSet = true;
            return builder;
        }

        @NotNull
        public final Builder setDuration(@NotNull Duration duration) {
            Intrinsics.checkParameterIsNotNull(duration, "duration");
            Builder builder = this;
            builder.duration = duration;
            return builder;
        }

        @NotNull
        public final Builder setText(@StringRes int i) {
            Builder builder = this;
            builder.text = builder.getString(i);
            return builder;
        }

        @NotNull
        public final Builder setText(@NotNull CharSequence text) {
            Intrinsics.checkParameterIsNotNull(text, "text");
            Builder builder = this;
            builder.text = text;
            return builder;
        }

        public final void setTextColor(int i) {
            this.textColor = i;
        }

        public final void setTextColorResource(@ColorRes int i) {
            this.textColor = getColor(i);
        }

        @NotNull
        public final Builder setTextResourceWithColorResource(@StringRes int i, @ColorRes int i2) {
            Builder builder = this;
            builder.text = builder.getString(i);
            builder.textColor = builder.getColor(i2);
            return builder;
        }

        @NotNull
        public final Builder setTextWithColor(@StringRes int i, int i2) {
            Builder builder = this;
            builder.text = builder.getString(i);
            builder.textColor = i2;
            return builder;
        }

        @NotNull
        public final Builder setTextWithColor(@NotNull CharSequence text, int i) {
            Intrinsics.checkParameterIsNotNull(text, "text");
            Builder builder = this;
            builder.text = text;
            builder.textColor = i;
            return builder;
        }

        public final void setTextWithColorResource(@NotNull CharSequence text, @ColorRes int i) {
            Intrinsics.checkParameterIsNotNull(text, "text");
            this.text = text;
            this.textColor = getColor(i);
        }

        @NotNull
        public final Builder textAlignment(@NotNull Alignment alignment) {
            Intrinsics.checkParameterIsNotNull(alignment, "alignment");
            Builder builder = this;
            builder.alignment = alignment;
            return builder;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Duration;", "", "(Ljava/lang/String;I)V", "LENGTH_SHORT", "LENGTH_LONG", "LENGTH_INDEFINITE", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/SSnackbar$Duration.class */
    public enum Duration {
        LENGTH_SHORT,
        LENGTH_LONG,
        LENGTH_INDEFINITE
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$SnackType;", "", "(Ljava/lang/String;I)V", "TOP", "BOTTOM", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/SSnackbar$SnackType.class */
    public enum SnackType {
        TOP,
        BOTTOM
    }

    public abstract void dismiss();

    public abstract boolean isShowing();

    public abstract void show();
}
