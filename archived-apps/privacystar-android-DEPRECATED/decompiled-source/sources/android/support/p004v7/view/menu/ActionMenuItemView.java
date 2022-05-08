package android.support.p004v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.p004v7.appcompat.C0479R;
import android.support.p004v7.view.menu.MenuBuilder;
import android.support.p004v7.view.menu.MenuView;
import android.support.p004v7.widget.ActionMenuView;
import android.support.p004v7.widget.AppCompatTextView;
import android.support.p004v7.widget.ForwardingListener;
import android.support.p004v7.widget.TooltipCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.view.menu.ActionMenuItemView */
/* loaded from: classes-dex2jar.jar:android/support/v7/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements MenuView.ItemView, View.OnClickListener, ActionMenuView.ActionMenuChildView {
    private static final int MAX_ICON_SIZE = 32;
    private static final String TAG = "ActionMenuItemView";
    private boolean mAllowTextWithIcon;
    private boolean mExpandedFormat;
    private ForwardingListener mForwardingListener;
    private Drawable mIcon;
    MenuItemImpl mItemData;
    MenuBuilder.ItemInvoker mItemInvoker;
    private int mMaxIconSize;
    private int mMinWidth;
    PopupCallback mPopupCallback;
    private int mSavedPaddingLeft;
    private CharSequence mTitle;

    /* renamed from: android.support.v7.view.menu.ActionMenuItemView$ActionMenuItemForwardingListener */
    /* loaded from: classes-dex2jar.jar:android/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener.class */
    private class ActionMenuItemForwardingListener extends ForwardingListener {
        public ActionMenuItemForwardingListener() {
            super(ActionMenuItemView.this);
        }

        @Override // android.support.p004v7.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            if (ActionMenuItemView.this.mPopupCallback != null) {
                return ActionMenuItemView.this.mPopupCallback.getPopup();
            }
            return null;
        }

        @Override // android.support.p004v7.widget.ForwardingListener
        protected boolean onForwardingStarted() {
            if (ActionMenuItemView.this.mItemInvoker == null || !ActionMenuItemView.this.mItemInvoker.invokeItem(ActionMenuItemView.this.mItemData)) {
                return false;
            }
            ShowableListMenu popup = getPopup();
            boolean z = false;
            if (popup != null) {
                z = false;
                if (popup.isShowing()) {
                    z = true;
                }
            }
            return z;
        }
    }

    /* renamed from: android.support.v7.view.menu.ActionMenuItemView$PopupCallback */
    /* loaded from: classes-dex2jar.jar:android/support/v7/view/menu/ActionMenuItemView$PopupCallback.class */
    public static abstract class PopupCallback {
        public abstract ShowableListMenu getPopup();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.mAllowTextWithIcon = shouldAllowTextWithIcon();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0479R.styleable.ActionMenuItemView, i, 0);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(C0479R.styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.mMaxIconSize = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.mSavedPaddingLeft = -1;
        setSaveEnabled(false);
    }

    private boolean shouldAllowTextWithIcon() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void updateTextButtonVisibility() {
        boolean isEmpty = TextUtils.isEmpty(this.mTitle);
        boolean z = true;
        if (this.mIcon != null) {
            if (this.mItemData.showsTextAsAction()) {
                z = true;
                if (!this.mAllowTextWithIcon) {
                    if (this.mExpandedFormat) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        CharSequence charSequence = null;
        setText(z2 ? this.mTitle : null);
        CharSequence contentDescription = this.mItemData.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.mItemData.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.mItemData.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z2) {
                charSequence = this.mItemData.getTitle();
            }
            TooltipCompat.setTooltipText(this, charSequence);
            return;
        }
        TooltipCompat.setTooltipText(this, tooltipText);
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mItemData = menuItemImpl;
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitleForItemView(this));
        setId(menuItemImpl.getItemId());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setEnabled(menuItemImpl.isEnabled());
        if (menuItemImpl.hasSubMenu() && this.mForwardingListener == null) {
            this.mForwardingListener = new ActionMenuItemForwardingListener();
        }
    }

    @Override // android.support.p004v7.widget.ActionMenuView.ActionMenuChildView
    public boolean needsDividerAfter() {
        return hasText();
    }

    @Override // android.support.p004v7.widget.ActionMenuView.ActionMenuChildView
    public boolean needsDividerBefore() {
        return hasText() && this.mItemData.getIcon() == null;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mItemInvoker != null) {
            this.mItemInvoker.invokeItem(this.mItemData);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAllowTextWithIcon = shouldAllowTextWithIcon();
        updateTextButtonVisibility();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        boolean hasText = hasText();
        if (hasText && this.mSavedPaddingLeft >= 0) {
            super.setPadding(this.mSavedPaddingLeft, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.mMinWidth) : this.mMinWidth;
        if (mode != 1073741824 && this.mMinWidth > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!hasText && this.mIcon != null) {
            super.setPadding((getMeasuredWidth() - this.mIcon.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mItemData.hasSubMenu() || this.mForwardingListener == null || !this.mForwardingListener.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return true;
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.mExpandedFormat != z) {
            this.mExpandedFormat = z;
            if (this.mItemData != null) {
                this.mItemData.actionFormatChanged();
            }
        }
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = intrinsicWidth;
            int i2 = intrinsicHeight;
            if (intrinsicWidth > this.mMaxIconSize) {
                float f = this.mMaxIconSize / intrinsicWidth;
                i = this.mMaxIconSize;
                i2 = (int) (intrinsicHeight * f);
            }
            int i3 = i;
            int i4 = i2;
            if (i2 > this.mMaxIconSize) {
                float f2 = this.mMaxIconSize / i2;
                i4 = this.mMaxIconSize;
                i3 = (int) (i * f2);
            }
            drawable.setBounds(0, 0, i3, i4);
        }
        setCompoundDrawables(drawable, null, null, null);
        updateTextButtonVisibility();
    }

    public void setItemInvoker(MenuBuilder.ItemInvoker itemInvoker) {
        this.mItemInvoker = itemInvoker;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.mSavedPaddingLeft = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(PopupCallback popupCallback) {
        this.mPopupCallback = popupCallback;
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        updateTextButtonVisibility();
    }

    @Override // android.support.p004v7.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }
}
