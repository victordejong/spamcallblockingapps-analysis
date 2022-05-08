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
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatDrawableManager.class */
public final class AppCompatDrawableManager {

    /* renamed from: b */
    private static final PorterDuff.Mode f937b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c */
    private static AppCompatDrawableManager f938c;

    /* renamed from: a */
    private ResourceManagerInternal f939a;

    /* renamed from: b */
    public static AppCompatDrawableManager m21637b() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (f938c == null) {
                    m21631h();
                }
                appCompatDrawableManager = f938c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return appCompatDrawableManager;
    }

    /* renamed from: e */
    public static PorterDuffColorFilter m21634e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter l;
        synchronized (AppCompatDrawableManager.class) {
            try {
                l = ResourceManagerInternal.m21396l(i, mode);
            } catch (Throwable th) {
                throw th;
            }
        }
        return l;
    }

    /* renamed from: h */
    public static void m21631h() {
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (f938c == null) {
                    AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
                    f938c = appCompatDrawableManager;
                    appCompatDrawableManager.f939a = ResourceManagerInternal.m21400h();
                    f938c.f939a.m21387u(new ResourceManagerInternal.ResourceManagerHooks() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1

                        /* renamed from: a */
                        private final int[] f940a = {C0042R.C0044drawable.abc_textfield_search_default_mtrl_alpha, C0042R.C0044drawable.abc_textfield_default_mtrl_alpha, C0042R.C0044drawable.abc_ab_share_pack_mtrl_alpha};

                        /* renamed from: b */
                        private final int[] f941b = {C0042R.C0044drawable.abc_ic_commit_search_api_mtrl_alpha, C0042R.C0044drawable.abc_seekbar_tick_mark_material, C0042R.C0044drawable.abc_ic_menu_share_mtrl_alpha, C0042R.C0044drawable.abc_ic_menu_copy_mtrl_am_alpha, C0042R.C0044drawable.abc_ic_menu_cut_mtrl_alpha, C0042R.C0044drawable.abc_ic_menu_selectall_mtrl_alpha, C0042R.C0044drawable.abc_ic_menu_paste_mtrl_am_alpha};

                        /* renamed from: c */
                        private final int[] f942c = {C0042R.C0044drawable.abc_textfield_activated_mtrl_alpha, C0042R.C0044drawable.abc_textfield_search_activated_mtrl_alpha, C0042R.C0044drawable.abc_cab_background_top_mtrl_alpha, C0042R.C0044drawable.abc_text_cursor_material, C0042R.C0044drawable.abc_text_select_handle_left_mtrl_dark, C0042R.C0044drawable.abc_text_select_handle_middle_mtrl_dark, C0042R.C0044drawable.abc_text_select_handle_right_mtrl_dark, C0042R.C0044drawable.abc_text_select_handle_left_mtrl_light, C0042R.C0044drawable.abc_text_select_handle_middle_mtrl_light, C0042R.C0044drawable.abc_text_select_handle_right_mtrl_light};

                        /* renamed from: d */
                        private final int[] f943d = {C0042R.C0044drawable.abc_popup_background_mtrl_mult, C0042R.C0044drawable.abc_cab_background_internal_bg, C0042R.C0044drawable.abc_menu_hardkey_panel_mtrl_mult};

                        /* renamed from: e */
                        private final int[] f944e = {C0042R.C0044drawable.abc_tab_indicator_material, C0042R.C0044drawable.abc_textfield_search_material};

                        /* renamed from: f */
                        private final int[] f945f = {C0042R.C0044drawable.abc_btn_check_material, C0042R.C0044drawable.abc_btn_radio_material, C0042R.C0044drawable.abc_btn_check_material_anim, C0042R.C0044drawable.abc_btn_radio_material_anim};

                        /* renamed from: f */
                        private boolean m21629f(int[] iArr, int i) {
                            for (int i2 : iArr) {
                                if (i2 == i) {
                                    return true;
                                }
                            }
                            return false;
                        }

                        /* renamed from: g */
                        private ColorStateList m21628g(@NonNull Context context) {
                            return m21627h(context, 0);
                        }

                        /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
                        /* renamed from: h */
                        private ColorStateList m21627h(@NonNull Context context, @ColorInt int i) {
                            int c = ThemeUtils.m21272c(context, C0042R.attr.colorControlHighlight);
                            int b = ThemeUtils.m21273b(context, C0042R.attr.colorButtonNormal);
                            int[] iArr = ThemeUtils.f1341b;
                            int[] iArr2 = ThemeUtils.f1343d;
                            int b2 = ColorUtils.m19586b(c, i);
                            return new ColorStateList(new int[]{iArr, iArr2, ThemeUtils.f1342c, ThemeUtils.f1345f}, new int[]{b, b2, ColorUtils.m19586b(c, i), i});
                        }

                        /* renamed from: i */
                        private ColorStateList m21626i(@NonNull Context context) {
                            return m21627h(context, ThemeUtils.m21272c(context, C0042R.attr.colorAccent));
                        }

                        /* renamed from: j */
                        private ColorStateList m21625j(@NonNull Context context) {
                            return m21627h(context, ThemeUtils.m21272c(context, C0042R.attr.colorButtonNormal));
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r0v1, types: [int[], int[][]] */
                        /* JADX WARN: Unknown variable types count: 1 */
                        /* renamed from: k */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        private android.content.res.ColorStateList m21624k(android.content.Context r7) {
                            /*
                                r6 = this;
                                r0 = 3
                                int[] r0 = new int[r0]
                                r8 = r0
                                r0 = 3
                                int[] r0 = new int[r0]
                                r9 = r0
                                r0 = r7
                                int r1 = androidx.appcompat.C0042R.attr.colorSwitchThumbNormal
                                android.content.res.ColorStateList r0 = androidx.appcompat.widget.ThemeUtils.m21270e(r0, r1)
                                r10 = r0
                                r0 = r10
                                if (r0 == 0) goto L_0x0052
                                r0 = r10
                                boolean r0 = r0.isStateful()
                                if (r0 == 0) goto L_0x0052
                                r0 = r8
                                r1 = 0
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.f1341b
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
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.f1344e
                                r0[r1] = r2
                                r0 = r9
                                r1 = 1
                                r2 = r7
                                int r3 = androidx.appcompat.C0042R.attr.colorControlActivated
                                int r2 = androidx.appcompat.widget.ThemeUtils.m21272c(r2, r3)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 2
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.f1345f
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
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.f1341b
                                r0[r1] = r2
                                r0 = r9
                                r1 = 0
                                r2 = r7
                                int r3 = androidx.appcompat.C0042R.attr.colorSwitchThumbNormal
                                int r2 = androidx.appcompat.widget.ThemeUtils.m21273b(r2, r3)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 1
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.f1344e
                                r0[r1] = r2
                                r0 = r9
                                r1 = 1
                                r2 = r7
                                int r3 = androidx.appcompat.C0042R.attr.colorControlActivated
                                int r2 = androidx.appcompat.widget.ThemeUtils.m21272c(r2, r3)
                                r0[r1] = r2
                                r0 = r8
                                r1 = 2
                                int[] r2 = androidx.appcompat.widget.ThemeUtils.f1345f
                                r0[r1] = r2
                                r0 = r9
                                r1 = 2
                                r2 = r7
                                int r3 = androidx.appcompat.C0042R.attr.colorSwitchThumbNormal
                                int r2 = androidx.appcompat.widget.ThemeUtils.m21272c(r2, r3)
                                r0[r1] = r2
                            L_0x0082:
                                android.content.res.ColorStateList r0 = new android.content.res.ColorStateList
                                r1 = r0
                                r2 = r8
                                r3 = r9
                                r1.<init>(r2, r3)
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C01011.m21624k(android.content.Context):android.content.res.ColorStateList");
                        }

                        /* renamed from: l */
                        private void m21623l(Drawable drawable, int i, PorterDuff.Mode mode) {
                            Drawable drawable2 = drawable;
                            if (DrawableUtils.m21505a(drawable)) {
                                drawable2 = drawable.mutate();
                            }
                            PorterDuff.Mode mode2 = mode;
                            if (mode == null) {
                                mode2 = AppCompatDrawableManager.f937b;
                            }
                            drawable2.setColorFilter(AppCompatDrawableManager.m21634e(i, mode2));
                        }

                        /* JADX WARN: Removed duplicated region for block: B:22:0x007e  */
                        /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[RETURN] */
                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        /* renamed from: a */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public boolean mo21380a(@androidx.annotation.NonNull android.content.Context r5, int r6, @androidx.annotation.NonNull android.graphics.drawable.Drawable r7) {
                            /*
                                r4 = this;
                                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.m21638a()
                                r8 = r0
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.f940a
                                r2 = r6
                                boolean r0 = r0.m21629f(r1, r2)
                                r9 = r0
                                r0 = 16842801(0x1010031, float:2.3693695E-38)
                                r10 = r0
                                r0 = r9
                                if (r0 == 0) goto L_0x0026
                                int r0 = androidx.appcompat.C0042R.attr.colorControlNormal
                                r6 = r0
                            L_0x001d:
                                r0 = -1
                                r10 = r0
                            L_0x0020:
                                r0 = 1
                                r11 = r0
                                goto L_0x0079
                            L_0x0026:
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.f942c
                                r2 = r6
                                boolean r0 = r0.m21629f(r1, r2)
                                if (r0 == 0) goto L_0x0039
                                int r0 = androidx.appcompat.C0042R.attr.colorControlActivated
                                r6 = r0
                                goto L_0x001d
                            L_0x0039:
                                r0 = r4
                                r1 = r4
                                int[] r1 = r1.f943d
                                r2 = r6
                                boolean r0 = r0.m21629f(r1, r2)
                                if (r0 == 0) goto L_0x0050
                                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                                r8 = r0
                                r0 = r10
                                r6 = r0
                                goto L_0x001d
                            L_0x0050:
                                r0 = r6
                                int r1 = androidx.appcompat.C0042R.C0044drawable.abc_list_divider_mtrl_alpha
                                if (r0 != r1) goto L_0x0064
                                r0 = 16842800(0x1010030, float:2.3693693E-38)
                                r6 = r0
                                r0 = 1109603123(0x42233333, float:40.8)
                                int r0 = java.lang.Math.round(r0)
                                r10 = r0
                                goto L_0x0020
                            L_0x0064:
                                r0 = r6
                                int r1 = androidx.appcompat.C0042R.C0044drawable.abc_dialog_material_background
                                if (r0 != r1) goto L_0x0071
                                r0 = r10
                                r6 = r0
                                goto L_0x001d
                            L_0x0071:
                                r0 = -1
                                r10 = r0
                                r0 = 0
                                r11 = r0
                                r0 = 0
                                r6 = r0
                            L_0x0079:
                                r0 = r11
                                if (r0 == 0) goto L_0x00ac
                                r0 = r7
                                r12 = r0
                                r0 = r7
                                boolean r0 = androidx.appcompat.widget.DrawableUtils.m21505a(r0)
                                if (r0 == 0) goto L_0x008e
                                r0 = r7
                                android.graphics.drawable.Drawable r0 = r0.mutate()
                                r12 = r0
                            L_0x008e:
                                r0 = r12
                                r1 = r5
                                r2 = r6
                                int r1 = androidx.appcompat.widget.ThemeUtils.m21272c(r1, r2)
                                r2 = r8
                                android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.AppCompatDrawableManager.m21634e(r1, r2)
                                r0.setColorFilter(r1)
                                r0 = r10
                                r1 = -1
                                if (r0 == r1) goto L_0x00aa
                                r0 = r12
                                r1 = r10
                                r0.setAlpha(r1)
                            L_0x00aa:
                                r0 = 1
                                return r0
                            L_0x00ac:
                                r0 = 0
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C01011.mo21380a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        /* renamed from: b */
                        public PorterDuff.Mode mo21379b(int i) {
                            return i == C0042R.C0044drawable.abc_switch_thumb_material ? PorterDuff.Mode.MULTIPLY : null;
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        /* renamed from: c */
                        public Drawable mo21378c(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, int i) {
                            if (i == C0042R.C0044drawable.abc_cab_background_top_material) {
                                return new LayerDrawable(new Drawable[]{resourceManagerInternal.m21398j(context, C0042R.C0044drawable.abc_cab_background_internal_bg), resourceManagerInternal.m21398j(context, C0042R.C0044drawable.abc_cab_background_top_mtrl_alpha)});
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        /* renamed from: d */
                        public ColorStateList mo21377d(@NonNull Context context, int i) {
                            if (i == C0042R.C0044drawable.abc_edit_text_material) {
                                return AppCompatResources.m22070c(context, C0042R.C0043color.abc_tint_edittext);
                            }
                            if (i == C0042R.C0044drawable.abc_switch_track_mtrl_alpha) {
                                return AppCompatResources.m22070c(context, C0042R.C0043color.abc_tint_switch_track);
                            }
                            if (i == C0042R.C0044drawable.abc_switch_thumb_material) {
                                return m21624k(context);
                            }
                            if (i == C0042R.C0044drawable.abc_btn_default_mtrl_shape) {
                                return m21625j(context);
                            }
                            if (i == C0042R.C0044drawable.abc_btn_borderless_material) {
                                return m21628g(context);
                            }
                            if (i == C0042R.C0044drawable.abc_btn_colored_material) {
                                return m21626i(context);
                            }
                            if (i == C0042R.C0044drawable.abc_spinner_mtrl_am_alpha || i == C0042R.C0044drawable.abc_spinner_textfield_background_material) {
                                return AppCompatResources.m22070c(context, C0042R.C0043color.abc_tint_spinner);
                            }
                            if (m21629f(this.f941b, i)) {
                                return ThemeUtils.m21270e(context, C0042R.attr.colorControlNormal);
                            }
                            if (m21629f(this.f944e, i)) {
                                return AppCompatResources.m22070c(context, C0042R.C0043color.abc_tint_default);
                            }
                            if (m21629f(this.f945f, i)) {
                                return AppCompatResources.m22070c(context, C0042R.C0043color.abc_tint_btn_checkable);
                            }
                            if (i == C0042R.C0044drawable.abc_seekbar_thumb_material) {
                                return AppCompatResources.m22070c(context, C0042R.C0043color.abc_tint_seek_thumb);
                            }
                            return null;
                        }

                        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                        /* renamed from: e */
                        public boolean mo21376e(@NonNull Context context, int i, @NonNull Drawable drawable) {
                            if (i == C0042R.C0044drawable.abc_seekbar_track_material) {
                                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                                m21623l(layerDrawable.findDrawableByLayerId(16908288), ThemeUtils.m21272c(context, C0042R.attr.colorControlNormal), AppCompatDrawableManager.f937b);
                                m21623l(layerDrawable.findDrawableByLayerId(16908303), ThemeUtils.m21272c(context, C0042R.attr.colorControlNormal), AppCompatDrawableManager.f937b);
                                m21623l(layerDrawable.findDrawableByLayerId(16908301), ThemeUtils.m21272c(context, C0042R.attr.colorControlActivated), AppCompatDrawableManager.f937b);
                                return true;
                            } else if (i != C0042R.C0044drawable.abc_ratingbar_material && i != C0042R.C0044drawable.abc_ratingbar_indicator_material && i != C0042R.C0044drawable.abc_ratingbar_small_material) {
                                return false;
                            } else {
                                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                                m21623l(layerDrawable2.findDrawableByLayerId(16908288), ThemeUtils.m21273b(context, C0042R.attr.colorControlNormal), AppCompatDrawableManager.f937b);
                                m21623l(layerDrawable2.findDrawableByLayerId(16908303), ThemeUtils.m21272c(context, C0042R.attr.colorControlActivated), AppCompatDrawableManager.f937b);
                                m21623l(layerDrawable2.findDrawableByLayerId(16908301), ThemeUtils.m21272c(context, C0042R.attr.colorControlActivated), AppCompatDrawableManager.f937b);
                                return true;
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static void m21630i(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ResourceManagerInternal.m21385w(drawable, tintInfo, iArr);
    }

    /* renamed from: c */
    public Drawable m21636c(@NonNull Context context, @DrawableRes int i) {
        Drawable j;
        synchronized (this) {
            j = this.f939a.m21398j(context, i);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public Drawable m21635d(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable k;
        synchronized (this) {
            k = this.f939a.m21397k(context, i, z);
        }
        return k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public ColorStateList m21633f(@NonNull Context context, @DrawableRes int i) {
        ColorStateList m;
        synchronized (this) {
            m = this.f939a.m21395m(context, i);
        }
        return m;
    }

    /* renamed from: g */
    public void m21632g(@NonNull Context context) {
        synchronized (this) {
            this.f939a.m21389s(context);
        }
    }
}
