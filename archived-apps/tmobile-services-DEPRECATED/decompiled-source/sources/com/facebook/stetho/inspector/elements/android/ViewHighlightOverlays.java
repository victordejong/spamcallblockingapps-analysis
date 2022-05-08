package com.facebook.stetho.inspector.elements.android;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays.class */
abstract class ViewHighlightOverlays {

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$NoOpViewHighlightOverlays.class */
    private static class NoOpViewHighlightOverlays extends ViewHighlightOverlays {
        private NoOpViewHighlightOverlays() {
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void highlightView(View view, Rect rect, int i) {
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void removeHighlight(View view) {
        }
    }

    @TargetApi(18)
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2.class */
    private static class ViewHighlightOverlaysJellybeanMR2 extends ViewHighlightOverlays {
        private static final int MARGIN_OVERLAY_COLOR = -1426797922;
        private static final int PADDING_OVERLAY_COLOR = -1430332746;
        private final HighlightDrawable[] mHighlightDrawables;
        private final MainHighlightDrawable mMainHighlightDrawable;

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$HighlightDrawable.class */
        static abstract class HighlightDrawable extends ColorDrawable {
            protected final Rect mMargins = new Rect();
            protected final Rect mPaddings = new Rect();

            public HighlightDrawable() {
            }

            HighlightDrawable(int i) {
                super(i);
            }

            void highlightView(View view) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    Rect rect = this.mMargins;
                    rect.left = marginLayoutParams.leftMargin;
                    rect.top = marginLayoutParams.topMargin;
                    rect.right = marginLayoutParams.rightMargin;
                    rect.bottom = marginLayoutParams.bottomMargin;
                } else {
                    Rect rect2 = this.mMargins;
                    rect2.left = 0;
                    rect2.top = 0;
                    rect2.right = 0;
                    rect2.bottom = 0;
                }
                this.mPaddings.left = view.getPaddingLeft();
                this.mPaddings.top = view.getPaddingTop();
                this.mPaddings.right = view.getPaddingRight();
                this.mPaddings.bottom = view.getPaddingBottom();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MainHighlightDrawable.class */
        static class MainHighlightDrawable extends HighlightDrawable {
            MainHighlightDrawable() {
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect clipBounds = canvas.getClipBounds();
                Rect rect = this.mMargins;
                clipBounds.inset(-(rect.right + rect.left), -(rect.top + rect.bottom));
                if (Build.VERSION.SDK_INT < 26) {
                    canvas.clipRect(clipBounds, Region.Op.REPLACE);
                } else {
                    canvas.clipOutRect(clipBounds);
                }
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginBottomHighlightDrawable.class */
        static class MarginBottomHighlightDrawable extends HighlightDrawable {
            MarginBottomHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect rect = this.mMargins;
                canvas.translate(0.0f, rect.bottom + rect.top);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, view.getHeight() - this.mMargins.bottom, view.getWidth(), view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginLeftHighlightDrawable.class */
        static class MarginLeftHighlightDrawable extends HighlightDrawable {
            MarginLeftHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect rect = this.mMargins;
                canvas.translate(-(rect.left + rect.right), 0.0f);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                int i = this.mMargins.left;
                int height = view.getHeight();
                Rect rect = this.mMargins;
                setBounds(0, 0, i, height + rect.top + rect.bottom);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginRightHighlightDrawable.class */
        static class MarginRightHighlightDrawable extends HighlightDrawable {
            MarginRightHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect rect = this.mMargins;
                canvas.translate(rect.right, -(rect.top + rect.bottom));
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                int width = view.getWidth();
                int i = this.mMargins.right;
                int width2 = view.getWidth();
                int height = view.getHeight();
                Rect rect = this.mMargins;
                setBounds(width - i, 0, width2, height + rect.top + rect.bottom);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$MarginTopHighlightDrawable.class */
        static class MarginTopHighlightDrawable extends HighlightDrawable {
            MarginTopHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.MARGIN_OVERLAY_COLOR);
            }

            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                canvas.translate(0.0f, -this.mMargins.top);
                super.draw(canvas);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, 0, view.getWidth(), this.mMargins.top);
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingBottomHighlightDrawable.class */
        static class PaddingBottomHighlightDrawable extends HighlightDrawable {
            PaddingBottomHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(this.mPaddings.left, view.getHeight() - this.mPaddings.bottom, view.getWidth() - this.mPaddings.right, view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingLeftHighlightDrawable.class */
        static class PaddingLeftHighlightDrawable extends HighlightDrawable {
            PaddingLeftHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(0, 0, this.mPaddings.left, view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingRightHighlightDrawable.class */
        static class PaddingRightHighlightDrawable extends HighlightDrawable {
            PaddingRightHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                setBounds(view.getWidth() - this.mPaddings.right, 0, view.getWidth(), view.getHeight());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/ViewHighlightOverlays$ViewHighlightOverlaysJellybeanMR2$PaddingTopHighlightDrawable.class */
        static class PaddingTopHighlightDrawable extends HighlightDrawable {
            PaddingTopHighlightDrawable() {
                super(ViewHighlightOverlaysJellybeanMR2.PADDING_OVERLAY_COLOR);
            }

            @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays.ViewHighlightOverlaysJellybeanMR2.HighlightDrawable
            void highlightView(View view) {
                super.highlightView(view);
                int i = this.mPaddings.left;
                int width = view.getWidth();
                Rect rect = this.mPaddings;
                setBounds(i, 0, width - rect.right, rect.top);
            }
        }

        ViewHighlightOverlaysJellybeanMR2() {
            MainHighlightDrawable mainHighlightDrawable = new MainHighlightDrawable();
            this.mMainHighlightDrawable = mainHighlightDrawable;
            this.mHighlightDrawables = new HighlightDrawable[]{mainHighlightDrawable, new PaddingTopHighlightDrawable(), new PaddingBottomHighlightDrawable(), new PaddingRightHighlightDrawable(), new PaddingLeftHighlightDrawable(), new MarginTopHighlightDrawable(), new MarginBottomHighlightDrawable(), new MarginRightHighlightDrawable(), new MarginLeftHighlightDrawable()};
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void highlightView(View view, Rect rect, int i) {
            this.mMainHighlightDrawable.setColor(i);
            if (rect.isEmpty()) {
                this.mMainHighlightDrawable.setBounds(0, 0, view.getWidth(), view.getHeight());
            } else {
                this.mMainHighlightDrawable.setBounds(rect);
            }
            int length = this.mHighlightDrawables.length;
            for (int i2 = 0; i2 < length; i2++) {
                HighlightDrawable highlightDrawable = this.mHighlightDrawables[i2];
                highlightDrawable.highlightView(view);
                view.getOverlay().add(highlightDrawable);
            }
        }

        @Override // com.facebook.stetho.inspector.elements.android.ViewHighlightOverlays
        void removeHighlight(View view) {
            for (HighlightDrawable highlightDrawable : this.mHighlightDrawables) {
                view.getOverlay().remove(highlightDrawable);
            }
        }
    }

    ViewHighlightOverlays() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewHighlightOverlays newInstance() {
        return Build.VERSION.SDK_INT >= 18 ? new ViewHighlightOverlaysJellybeanMR2() : new NoOpViewHighlightOverlays();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void highlightView(View view, Rect rect, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void removeHighlight(View view);
}
