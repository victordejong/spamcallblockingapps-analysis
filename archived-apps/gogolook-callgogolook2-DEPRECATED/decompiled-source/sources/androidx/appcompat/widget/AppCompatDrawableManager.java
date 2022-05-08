package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0054R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatDrawableManager.class */
public final class AppCompatDrawableManager {
    public static final boolean DEBUG = false;
    public static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    public static AppCompatDrawableManager INSTANCE;
    public static final String TAG = "AppCompatDrawableManag";
    public ResourceManagerInternal mResourceManager;

    public static AppCompatDrawableManager get() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (INSTANCE == null) {
                    preload();
                }
                appCompatDrawableManager = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return appCompatDrawableManager;
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (AppCompatDrawableManager.class) {
            try {
                porterDuffColorFilter = ResourceManagerInternal.getPorterDuffColorFilter(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    public static void preload() {
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (INSTANCE == null) {
                    INSTANCE = new AppCompatDrawableManager();
                    INSTANCE.mResourceManager = ResourceManagerInternal.get();
                    INSTANCE.mResourceManager.setHooks(new ResourceManagerInternal.ResourceManagerHooks() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1
                        public final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {C0054R.C0055drawable.abc_textfield_search_default_mtrl_alpha, C0054R.C0055drawable.abc_textfield_default_mtrl_alpha, C0054R.C0055drawable.abc_ab_share_pack_mtrl_alpha};
                        public final int[] TINT_COLOR_CONTROL_NORMAL = {C0054R.C0055drawable.abc_ic_commit_search_api_mtrl_alpha, C0054R.C0055drawable.abc_seekbar_tick_mark_material, C0054R.C0055drawable.abc_ic_menu_share_mtrl_alpha, C0054R.C0055drawable.abc_ic_menu_copy_mtrl_am_alpha, C0054R.C0055drawable.abc_ic_menu_cut_mtrl_alpha, C0054R.C0055drawable.abc_ic_menu_selectall_mtrl_alpha, C0054R.C0055drawable.abc_ic_menu_paste_mtrl_am_alpha};
                        public final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {C0054R.C0055drawable.abc_textfield_activated_mtrl_alpha, C0054R.C0055drawable.abc_textfield_search_activated_mtrl_alpha, C0054R.C0055drawable.abc_cab_background_top_mtrl_alpha, C0054R.C0055drawable.abc_text_cursor_material, C0054R.C0055drawable.abc_text_select_handle_left_mtrl_dark, C0054R.C0055drawable.abc_text_select_handle_middle_mtrl_dark, C0054R.C0055drawable.abc_text_select_handle_right_mtrl_dark, C0054R.C0055drawable.abc_text_select_handle_left_mtrl_light, C0054R.C0055drawable.abc_text_select_handle_middle_mtrl_light, C0054R.C0055drawable.abc_text_select_handle_right_mtrl_light};
                        public final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {C0054R.C0055drawable.abc_popup_background_mtrl_mult, C0054R.C0055drawable.abc_cab_background_internal_bg, C0054R.C0055drawable.abc_menu_hardkey_panel_mtrl_mult};
                        public final int[] TINT_COLOR_CONTROL_STATE_LIST = {C0054R.C0055drawable.abc_tab_indicator_material, C0054R.C0055drawable.abc_textfield_search_material};
                        public final int[] TINT_CHECKABLE_BUTTON_LIST = {C0054R.C0055drawable.abc_btn_check_material, C0054R.C0055drawable.abc_btn_radio_material, C0054R.C0055drawable.abc_btn_check_material_anim, C0054R.C0055drawable.abc_btn_radio_material_anim};

                        private boolean arrayContains(int[] iArr, int i) {
                            for (int i2 : iArr) {
                                if (i2 == i) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        private ColorStateList createBorderlessButtonColorStateList(@NonNull Context context) {
                            return createButtonColorStateList(context, 0);
                        }

                        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
                        private ColorStateList createButtonColorStateList(@NonNull Context context, @ColorInt int i) {
                            int themeAttrColor = ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorControlHighlight);
                            int disabledThemeAttrColor = ThemeUtils.getDisabledThemeAttrColor(context, C0054R.attr.colorButtonNormal);
                            int[] iArr = ThemeUtils.DISABLED_STATE_SET;
                            int[] iArr2 = ThemeUtils.PRESSED_STATE_SET;
                            int compositeColors = ColorUtils.compositeColors(themeAttrColor, i);
                            return new ColorStateList(new int[]{iArr, iArr2, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{disabledThemeAttrColor, compositeColors, ColorUtils.compositeColors(themeAttrColor, i), i});
                        }

                        private ColorStateList createColoredButtonColorStateList(@NonNull Context context) {
                            return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorAccent));
                        }

                        private ColorStateList createDefaultButtonColorStateList(@NonNull Context context) {
                            return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorButtonNormal));
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
                        /* JADX WARN: Unknown variable types count: 1 */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        private android.content.res.ColorStateList createSwitchThumbColorStateList(android.content.Context r7) {
                            /*
                                r6 = this;
                                r0 = 3
                                int[] r0 = new int[r0]
                                r8 = r0
                                r0 = 3
                                int[] r0 = new int[r0]
                                r9 = r0
                                r0 = r7
                                int r1 = androidx.appcompat.C0054R.attr.colorSwitchThumbNormal
                                android.content.res.ColorStateList r0 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColorStateList(r0, r1)
                                r10 = r0
                                r0 = r10
                                if (r0 == 0) goto L_0x0052
                                r0 = r10
                                boolean r0 = r0.isStateful()
                                if (r0 == 0) goto L_0x0052
                                r0 = r8
                                r1 = 0
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET
                                r0[r1] = r2
                                r0 = r9
                                r1 = 0
                                r2 = r10
                                r3 = r8
                                r4 = 0
                                r3 = r3[r4]
                                r4 = 0
                                int r2 = r2.getColorForState(r3, r4)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 1
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.CHECKED_STATE_SET
                                r0[r1] = r2
                                r0 = r9
                                r1 = 1
                                r2 = r7
                                int r3 = androidx.appcompat.C0054R.attr.colorControlActivated
                                int r2 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r2, r3)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 2
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET
                                r0[r1] = r2
                                r0 = r9
                                r1 = 2
                                r2 = r10
                                int r2 = r2.getDefaultColor()
                                r0[r1] = r2
                                goto L_0x0082
                            L_0x0052:
                                r0 = r8
                                r1 = 0
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.DISABLED_STATE_SET
                                r0[r1] = r2
                                r0 = r9
                                r1 = 0
                                r2 = r7
                                int r3 = androidx.appcompat.C0054R.attr.colorSwitchThumbNormal
                                int r2 = androidx.appcompat.widget.ThemeUtils.getDisabledThemeAttrColor(r2, r3)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 1
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.CHECKED_STATE_SET
                                r0[r1] = r2
                                r0 = r9
                                r1 = 1
                                r2 = r7
                                int r3 = androidx.appcompat.C0054R.attr.colorControlActivated
                                int r2 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r2, r3)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 2
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.EMPTY_STATE_SET
                                r0[r1] = r2
                                r0 = r9
                                r1 = 2
                                r2 = r7
                                int r3 = androidx.appcompat.C0054R.attr.colorSwitchThumbNormal
                                int r2 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r2, r3)
                                r0[r1] = r2
                            L_0x0082:
                                android.content.res.ColorStateList r0 = new android.content.res.ColorStateList
                                r1 = r0
                                r2 = r8
                                r3 = r9
                                r1.<init>(r2, r3)
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C01131.createSwitchThumbColorStateList(android.content.Context):android.content.res.ColorStateList");
                        }

                        private void setPorterDuffColorFilter(Drawable drawable, int i, PorterDuff.Mode mode) {
                            Drawable drawable2 = drawable;
                            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                                drawable2 = drawable.mutate();
                            }
                            PorterDuff.Mode mode2 = mode;
                            if (mode == null) {
                                mode2 = AppCompatDrawableManager.DEFAULT_MODE;
                            }
                            drawable2.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode2));
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        public Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, int i) {
                            if (i == C0054R.C0055drawable.abc_cab_background_top_material) {
                                return new LayerDrawable(new Drawable[]{resourceManagerInternal.getDrawable(context, C0054R.C0055drawable.abc_cab_background_internal_bg), resourceManagerInternal.getDrawable(context, C0054R.C0055drawable.abc_cab_background_top_mtrl_alpha)});
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        public ColorStateList getTintListForDrawableRes(@NonNull Context context, int i) {
                            if (i == C0054R.C0055drawable.abc_edit_text_material) {
                                return AppCompatResources.getColorStateList(context, C0054R.color.abc_tint_edittext);
                            }
                            if (i == C0054R.C0055drawable.abc_switch_track_mtrl_alpha) {
                                return AppCompatResources.getColorStateList(context, C0054R.color.abc_tint_switch_track);
                            }
                            if (i == C0054R.C0055drawable.abc_switch_thumb_material) {
                                return createSwitchThumbColorStateList(context);
                            }
                            if (i == C0054R.C0055drawable.abc_btn_default_mtrl_shape) {
                                return createDefaultButtonColorStateList(context);
                            }
                            if (i == C0054R.C0055drawable.abc_btn_borderless_material) {
                                return createBorderlessButtonColorStateList(context);
                            }
                            if (i == C0054R.C0055drawable.abc_btn_colored_material) {
                                return createColoredButtonColorStateList(context);
                            }
                            if (i == C0054R.C0055drawable.abc_spinner_mtrl_am_alpha || i == C0054R.C0055drawable.abc_spinner_textfield_background_material) {
                                return AppCompatResources.getColorStateList(context, C0054R.color.abc_tint_spinner);
                            }
                            if (arrayContains(this.TINT_COLOR_CONTROL_NORMAL, i)) {
                                return ThemeUtils.getThemeAttrColorStateList(context, C0054R.attr.colorControlNormal);
                            }
                            if (arrayContains(this.TINT_COLOR_CONTROL_STATE_LIST, i)) {
                                return AppCompatResources.getColorStateList(context, C0054R.color.abc_tint_default);
                            }
                            if (arrayContains(this.TINT_CHECKABLE_BUTTON_LIST, i)) {
                                return AppCompatResources.getColorStateList(context, C0054R.color.abc_tint_btn_checkable);
                            }
                            if (i == C0054R.C0055drawable.abc_seekbar_thumb_material) {
                                return AppCompatResources.getColorStateList(context, C0054R.color.abc_tint_seek_thumb);
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        public PorterDuff.Mode getTintModeForDrawableRes(int i) {
                            return i == C0054R.C0055drawable.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        public boolean tintDrawable(@NonNull Context context, int i, @NonNull Drawable drawable) {
                            if (i == C0054R.C0055drawable.abc_seekbar_track_material) {
                                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                                setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908288), ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                                setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                                setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                                return true;
                            } else if (i != C0054R.C0055drawable.abc_ratingbar_material && i != C0054R.C0055drawable.abc_ratingbar_indicator_material && i != C0054R.C0055drawable.abc_ratingbar_small_material) {
                                return false;
                            } else {
                                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                                setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor(context, C0054R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                                setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                                setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, C0054R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                                return true;
                            }
                        }

                        /* JADX WARN: Removed duplicated region for block: B:21:0x0084  */
                        /* JADX WARN: Removed duplicated region for block: B:28:0x00b2 A[RETURN] */
                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public boolean tintDrawableUsingColorFilter(@androidx.annotation.NonNull android.content.Context r5, int r6, @androidx.annotation.NonNull android.graphics.drawable.Drawable r7) {
                            /*
                                r4 = this;
                                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.access$000()
                                r8 = r0
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
                                r2 = r6
                                boolean r0 = r0.arrayContains(r1, r2)
                                r9 = r0
                                r0 = 16842801(0x1010031, float:2.3693695E-38)
                                r10 = r0
                                r0 = r9
                                if (r0 == 0) goto L_0x0027
                                int r0 = androidx.appcompat.C0054R.attr.colorControlNormal
                                r6 = r0
                            L_0x001e:
                                r0 = 1
                                r11 = r0
                                r0 = -1
                                r10 = r0
                                goto L_0x007f
                            L_0x0027:
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.COLORFILTER_COLOR_CONTROL_ACTIVATED
                                r2 = r6
                                boolean r0 = r0.arrayContains(r1, r2)
                                if (r0 == 0) goto L_0x003a
                                int r0 = androidx.appcompat.C0054R.attr.colorControlActivated
                                r6 = r0
                                goto L_0x001e
                            L_0x003a:
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
                                r2 = r6
                                boolean r0 = r0.arrayContains(r1, r2)
                                if (r0 == 0) goto L_0x0051
                                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                                r8 = r0
                                r0 = r10
                                r6 = r0
                                goto L_0x001e
                            L_0x0051:
                                r0 = r6
                                int r1 = androidx.appcompat.C0054R.C0055drawable.abc_list_divider_mtrl_alpha
                                if (r0 != r1) goto L_0x006a
                                r0 = 16842800(0x1010030, float:2.3693693E-38)
                                r6 = r0
                                r0 = 1109603123(0x42233333, float:40.8)
                                int r0 = java.lang.Math.round(r0)
                                r10 = r0
                                r0 = 1
                                r11 = r0
                                goto L_0x007f
                            L_0x006a:
                                r0 = r6
                                int r1 = androidx.appcompat.C0054R.C0055drawable.abc_dialog_material_background
                                if (r0 != r1) goto L_0x0077
                                r0 = r10
                                r6 = r0
                                goto L_0x001e
                            L_0x0077:
                                r0 = 0
                                r11 = r0
                                r0 = -1
                                r10 = r0
                                r0 = 0
                                r6 = r0
                            L_0x007f:
                                r0 = r11
                                if (r0 == 0) goto L_0x00b2
                                r0 = r7
                                r12 = r0
                                r0 = r7
                                boolean r0 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r0)
                                if (r0 == 0) goto L_0x0094
                                r0 = r7
                                android.graphics.drawable.Drawable r0 = r0.mutate()
                                r12 = r0
                            L_0x0094:
                                r0 = r12
                                r1 = r5
                                r2 = r6
                                int r1 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r1, r2)
                                r2 = r8
                                android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(r1, r2)
                                r0.setColorFilter(r1)
                                r0 = r10
                                r1 = -1
                                if (r0 == r1) goto L_0x00b0
                                r0 = r12
                                r1 = r10
                                r0.setAlpha(r1)
                            L_0x00b0:
                                r0 = 1
                                return r0
                            L_0x00b2:
                                r0 = 0
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C01131.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ResourceManagerInternal.tintDrawable(drawable, tintInfo, iArr);
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        Drawable drawable;
        synchronized (this) {
            drawable = this.mResourceManager.getDrawable(context, i);
        }
        return drawable;
    }

    public Drawable getDrawable(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable drawable;
        synchronized (this) {
            drawable = this.mResourceManager.getDrawable(context, i, z);
        }
        return drawable;
    }

    public ColorStateList getTintList(@NonNull Context context, @DrawableRes int i) {
        ColorStateList tintList;
        synchronized (this) {
            tintList = this.mResourceManager.getTintList(context, i);
        }
        return tintList;
    }

    public void onConfigurationChanged(@NonNull Context context) {
        synchronized (this) {
            this.mResourceManager.onConfigurationChanged(context);
        }
    }

    public Drawable onDrawableLoadedFromResources(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        Drawable onDrawableLoadedFromResources;
        synchronized (this) {
            onDrawableLoadedFromResources = this.mResourceManager.onDrawableLoadedFromResources(context, vectorEnabledTintResources, i);
        }
        return onDrawableLoadedFromResources;
    }

    public boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        return this.mResourceManager.tintDrawableUsingColorFilter(context, i, drawable);
    }
}
