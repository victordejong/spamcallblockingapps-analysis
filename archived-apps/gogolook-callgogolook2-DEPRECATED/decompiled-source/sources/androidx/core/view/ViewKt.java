package androidx.core.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\\\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\u001a2\u0010\u0019\u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010 \u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010!\u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010\"\u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010#\u001a\u00020$*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a\u0014\u0010%\u001a\u00020&*\u00020\u00032\b\b\u0002\u0010'\u001a\u00020(\u001a%\u0010)\u001a\u00020**\u00020\u00032\u0006\u0010+\u001a\u00020,2\u000e\b\u0004\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0-H\u0086\b\u001a%\u0010.\u001a\u00020**\u00020\u00032\u0006\u0010+\u001a\u00020,2\u000e\b\u0004\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0-H\u0087\b\u001a\u0017\u0010/\u001a\u00020\u001a*\u00020\u00032\b\b\u0001\u00100\u001a\u00020\fH\u0086\b\u001a7\u00101\u001a\u00020\u001a\"\n\b��\u00102\u0018\u0001*\u000203*\u00020\u00032\u0017\u00104\u001a\u0013\u0012\u0004\u0012\u0002H2\u0012\u0004\u0012\u00020\u001a0\u001c¢\u0006\u0002\b5H\u0087\b¢\u0006\u0002\b6\u001a&\u00101\u001a\u00020\u001a*\u00020\u00032\u0017\u00104\u001a\u0013\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u001a0\u001c¢\u0006\u0002\b5H\u0086\b\u001a5\u00107\u001a\u00020\u001a*\u00020\u00032\b\b\u0003\u00108\u001a\u00020\f2\b\b\u0003\u00109\u001a\u00020\f2\b\b\u0003\u0010:\u001a\u00020\f2\b\b\u0003\u0010;\u001a\u00020\fH\u0086\b\u001a5\u0010<\u001a\u00020\u001a*\u00020\u00032\b\b\u0003\u0010=\u001a\u00020\f2\b\b\u0003\u00109\u001a\u00020\f2\b\b\u0003\u0010>\u001a\u00020\f2\b\b\u0003\u0010;\u001a\u00020\fH\u0087\b\"*\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010��\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0006\"*\u0010\u0007\u001a\u00020\u0001*\u00020\u00032\u0006\u0010��\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\u0004\"\u0004\b\b\u0010\u0006\"*\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0006\u0010��\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0004\"\u0004\b\n\u0010\u0006\"\u0016\u0010\u000b\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\"\u0016\u0010\u000f\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000e\"\u0016\u0010\u0011\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000e\"\u0016\u0010\u0013\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000e\"\u0016\u0010\u0015\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000e\"\u0016\u0010\u0017\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u000e¨\u0006?"}, m815d2 = {C13032a.f29462d, "", "isGone", "Landroid/view/View;", "(Landroid/view/View;)Z", "setGone", "(Landroid/view/View;Z)V", "isInvisible", "setInvisible", "isVisible", "setVisible", "marginBottom", "", "getMarginBottom", "(Landroid/view/View;)I", "marginEnd", "getMarginEnd", "marginLeft", "getMarginLeft", "marginRight", "getMarginRight", "marginStart", "getMarginStart", "marginTop", "getMarginTop", "doOnAttach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "view", "doOnDetach", "doOnLayout", "doOnNextLayout", "doOnPreDraw", "Landroidx/core/view/OneShotPreDrawListener;", "drawToBitmap", "Landroid/graphics/Bitmap;", "config", "Landroid/graphics/Bitmap$Config;", "postDelayed", "Ljava/lang/Runnable;", "delayInMillis", "", "Lkotlin/Function0;", "postOnAnimationDelayed", "setPadding", "size", "updateLayoutParams", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/ViewGroup$LayoutParams;", "block", "Lkotlin/ExtensionFunctionType;", "updateLayoutParamsTyped", "updatePadding", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "updatePaddingRelative", "start", "end", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/view/ViewKt.class */
public final class ViewKt {
    public static final void doOnAttach(final View view, final AbstractC15118l<? super View, C14989s> lVar) {
        C15149k.m377b(view, "$this$doOnAttach");
        C15149k.m377b(lVar, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            lVar.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt$doOnAttach$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    C15149k.m377b(view2, "view");
                    view.removeOnAttachStateChangeListener(this);
                    lVar.invoke(view2);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    C15149k.m377b(view2, "view");
                }
            });
        }
    }

    public static final void doOnDetach(final View view, final AbstractC15118l<? super View, C14989s> lVar) {
        C15149k.m377b(view, "$this$doOnDetach");
        C15149k.m377b(lVar, "action");
        if (!ViewCompat.isAttachedToWindow(view)) {
            lVar.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.ViewKt$doOnDetach$1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    C15149k.m377b(view2, "view");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    C15149k.m377b(view2, "view");
                    view.removeOnAttachStateChangeListener(this);
                    lVar.invoke(view2);
                }
            });
        }
    }

    public static final void doOnLayout(View view, final AbstractC15118l<? super View, C14989s> lVar) {
        C15149k.m377b(view, "$this$doOnLayout");
        C15149k.m377b(lVar, "action");
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnLayout$$inlined$doOnNextLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    C15149k.m377b(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    AbstractC15118l.this.invoke(view2);
                }
            });
        } else {
            lVar.invoke(view);
        }
    }

    public static final void doOnNextLayout(View view, final AbstractC15118l<? super View, C14989s> lVar) {
        C15149k.m377b(view, "$this$doOnNextLayout");
        C15149k.m377b(lVar, "action");
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                C15149k.m377b(view2, "view");
                view2.removeOnLayoutChangeListener(this);
                AbstractC15118l.this.invoke(view2);
            }
        });
    }

    public static final OneShotPreDrawListener doOnPreDraw(final View view, final AbstractC15118l<? super View, C14989s> lVar) {
        C15149k.m377b(view, "$this$doOnPreDraw");
        C15149k.m377b(lVar, "action");
        OneShotPreDrawListener add = OneShotPreDrawListener.add(view, new Runnable() { // from class: androidx.core.view.ViewKt$doOnPreDraw$1
            @Override // java.lang.Runnable
            public final void run() {
                lVar.invoke(view);
            }
        });
        C15149k.m383a((Object) add, "OneShotPreDrawListener.add(this) { action(this) }");
        return add;
    }

    public static final Bitmap drawToBitmap(View view, Bitmap.Config config) {
        C15149k.m377b(view, "$this$drawToBitmap");
        C15149k.m377b(config, "config");
        if (ViewCompat.isLaidOut(view)) {
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
            C15149k.m383a((Object) createBitmap, "Bitmap.createBitmap(width, height, config)");
            Canvas canvas = new Canvas(createBitmap);
            canvas.translate(-view.getScrollX(), -view.getScrollY());
            view.draw(canvas);
            return createBitmap;
        }
        throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
    }

    public static /* synthetic */ Bitmap drawToBitmap$default(View view, Bitmap.Config config, int i, Object obj) {
        if ((i & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    public static final int getMarginBottom(View view) {
        C15149k.m377b(view, "$this$marginBottom");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        return marginLayoutParams != null ? marginLayoutParams.bottomMargin : 0;
    }

    public static final int getMarginEnd(View view) {
        C15149k.m377b(view, "$this$marginEnd");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams) : 0;
    }

    public static final int getMarginLeft(View view) {
        C15149k.m377b(view, "$this$marginLeft");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        return marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
    }

    public static final int getMarginRight(View view) {
        C15149k.m377b(view, "$this$marginRight");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        return marginLayoutParams != null ? marginLayoutParams.rightMargin : 0;
    }

    public static final int getMarginStart(View view) {
        C15149k.m377b(view, "$this$marginStart");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams) : 0;
    }

    public static final int getMarginTop(View view) {
        C15149k.m377b(view, "$this$marginTop");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams2 = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        return marginLayoutParams != null ? marginLayoutParams.topMargin : 0;
    }

    public static final boolean isGone(View view) {
        C15149k.m377b(view, "$this$isGone");
        return view.getVisibility() == 8;
    }

    public static final boolean isInvisible(View view) {
        C15149k.m377b(view, "$this$isInvisible");
        return view.getVisibility() == 4;
    }

    public static final boolean isVisible(View view) {
        C15149k.m377b(view, "$this$isVisible");
        return view.getVisibility() == 0;
    }

    public static final Runnable postDelayed(View view, long j, final AbstractC15107a<C14989s> aVar) {
        C15149k.m377b(view, "$this$postDelayed");
        C15149k.m377b(aVar, "action");
        Runnable viewKt$postDelayed$runnable$1 = new Runnable() { // from class: androidx.core.view.ViewKt$postDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC15107a.this.invoke();
            }
        };
        view.postDelayed(viewKt$postDelayed$runnable$1, j);
        return viewKt$postDelayed$runnable$1;
    }

    @RequiresApi(16)
    public static final Runnable postOnAnimationDelayed(View view, long j, final AbstractC15107a<C14989s> aVar) {
        C15149k.m377b(view, "$this$postOnAnimationDelayed");
        C15149k.m377b(aVar, "action");
        Runnable viewKt$postOnAnimationDelayed$runnable$1 = new Runnable() { // from class: androidx.core.view.ViewKt$postOnAnimationDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC15107a.this.invoke();
            }
        };
        view.postOnAnimationDelayed(viewKt$postOnAnimationDelayed$runnable$1, j);
        return viewKt$postOnAnimationDelayed$runnable$1;
    }

    public static final void setGone(View view, boolean z) {
        C15149k.m377b(view, "$this$isGone");
        view.setVisibility(z ? 8 : 0);
    }

    public static final void setInvisible(View view, boolean z) {
        C15149k.m377b(view, "$this$isInvisible");
        view.setVisibility(z ? 4 : 0);
    }

    public static final void setPadding(View view, @AbstractC0053Px int i) {
        C15149k.m377b(view, "$this$setPadding");
        view.setPadding(i, i, i, i);
    }

    public static final void setVisible(View view, boolean z) {
        C15149k.m377b(view, "$this$isVisible");
        view.setVisibility(z ? 0 : 8);
    }

    public static final void updateLayoutParams(View view, AbstractC15118l<? super ViewGroup.LayoutParams, C14989s> lVar) {
        C15149k.m377b(view, "$this$updateLayoutParams");
        C15149k.m377b(lVar, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            lVar.invoke(layoutParams);
            view.setLayoutParams(layoutParams);
            return;
        }
        throw new C14986p("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public static final /* synthetic */ <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, AbstractC15118l<? super T, C14989s> lVar) {
        C15149k.m377b(view, "$this$updateLayoutParams");
        C15149k.m377b(lVar, "block");
        view.getLayoutParams();
        C15149k.m385a(1, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static final void updatePadding(View view, @AbstractC0053Px int i, @AbstractC0053Px int i2, @AbstractC0053Px int i3, @AbstractC0053Px int i4) {
        C15149k.m377b(view, "$this$updatePadding");
        view.setPadding(i, i2, i3, i4);
    }

    public static /* synthetic */ void updatePadding$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingLeft();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingRight();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        C15149k.m377b(view, "$this$updatePadding");
        view.setPadding(i, i2, i3, i4);
    }

    @RequiresApi(17)
    public static final void updatePaddingRelative(View view, @AbstractC0053Px int i, @AbstractC0053Px int i2, @AbstractC0053Px int i3, @AbstractC0053Px int i4) {
        C15149k.m377b(view, "$this$updatePaddingRelative");
        view.setPaddingRelative(i, i2, i3, i4);
    }

    public static /* synthetic */ void updatePaddingRelative$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingStart();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingEnd();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        C15149k.m377b(view, "$this$updatePaddingRelative");
        view.setPaddingRelative(i, i2, i3, i4);
    }
}
