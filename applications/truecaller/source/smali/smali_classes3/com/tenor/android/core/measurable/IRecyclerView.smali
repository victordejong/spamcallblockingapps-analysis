.class public interface abstract Lcom/tenor/android/core/measurable/IRecyclerView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addFocusables(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
.end method

.method public abstract addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;I)V
.end method

.method public abstract addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$q;)V
.end method

.method public abstract addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
.end method

.method public abstract addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V
.end method

.method public abstract clearOnChildAttachStateChangeListeners()V
.end method

.method public abstract clearOnScrollListeners()V
.end method

.method public abstract computeHorizontalScrollExtent()I
.end method

.method public abstract computeHorizontalScrollOffset()I
.end method

.method public abstract computeHorizontalScrollRange()I
.end method

.method public abstract computeVerticalScrollExtent()I
.end method

.method public abstract computeVerticalScrollOffset()I
.end method

.method public abstract computeVerticalScrollRange()I
.end method

.method public abstract dispatchNestedFling(FFZ)Z
.end method

.method public abstract dispatchNestedPreFling(FF)Z
.end method

.method public abstract dispatchNestedPreScroll(II[I[I)Z
.end method

.method public abstract dispatchNestedPreScroll(II[I[II)Z
.end method

.method public abstract dispatchNestedScroll(IIII[I)Z
.end method

.method public abstract dispatchNestedScroll(IIII[II)Z
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
.end method

.method public abstract findChildViewUnder(FF)Landroid/view/View;
.end method

.method public abstract findContainingItemView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
.end method

.method public abstract findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;
.end method

.method public abstract findViewHolderForItemId(J)Landroidx/recyclerview/widget/RecyclerView$c0;
.end method

.method public abstract findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;
.end method

.method public abstract findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;
.end method

.method public abstract fling(II)Z
.end method

.method public abstract focusSearch(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getChildAdapterPosition(Landroid/view/View;)I
.end method

.method public abstract getChildItemId(Landroid/view/View;)J
.end method

.method public abstract getChildLayoutPosition(Landroid/view/View;)I
.end method

.method public abstract getChildPosition(Landroid/view/View;)I
.end method

.method public abstract getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;
.end method

.method public abstract getClipToPadding()Z
.end method

.method public abstract getCompatAccessibilityDelegate()Ln3/b0/a/w;
.end method

.method public abstract getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$l;
.end method

.method public abstract getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$n;
.end method

.method public abstract getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;
.end method

.method public abstract getMaxFlingVelocity()I
.end method

.method public abstract getMinFlingVelocity()I
.end method

.method public abstract getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$r;
.end method

.method public abstract getPreserveFocusAfterLayout()Z
.end method

.method public abstract getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$u;
.end method

.method public abstract getScrollState()I
.end method

.method public abstract hasFixedSize()Z
.end method

.method public abstract hasNestedScrollingParent()Z
.end method

.method public abstract hasNestedScrollingParent(I)Z
.end method

.method public abstract hasPendingAdapterUpdates()Z
.end method

.method public abstract invalidateItemDecorations()V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isAttachedToWindow()Z
.end method

.method public abstract isComputingLayout()Z
.end method

.method public abstract isLayoutFrozen()Z
.end method

.method public abstract isNestedScrollingEnabled()Z
.end method

.method public abstract offsetChildrenHorizontal(I)V
.end method

.method public abstract offsetChildrenVertical(I)V
.end method

.method public abstract onChildAttachedToWindow(Landroid/view/View;)V
.end method

.method public abstract onChildDetachedFromWindow(Landroid/view/View;)V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onScrollStateChanged(I)V
.end method

.method public abstract onScrolled(II)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V
.end method

.method public abstract removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$q;)V
.end method

.method public abstract removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
.end method

.method public abstract removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V
.end method

.method public abstract requestChildFocus(Landroid/view/View;Landroid/view/View;)V
.end method

.method public abstract requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
.end method

.method public abstract requestDisallowInterceptTouchEvent(Z)V
.end method

.method public abstract requestLayout()V
.end method

.method public abstract scrollBy(II)V
.end method

.method public abstract scrollTo(II)V
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public abstract sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract setAccessibilityDelegateCompat(Ln3/b0/a/w;)V
.end method

.method public abstract setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V
.end method

.method public abstract setChildDrawingOrderCallback(Landroidx/recyclerview/widget/RecyclerView$j;)V
.end method

.method public abstract setClipToPadding(Z)V
.end method

.method public abstract setHasFixedSize(Z)V
.end method

.method public abstract setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V
.end method

.method public abstract setItemViewCacheSize(I)V
.end method

.method public abstract setLayoutFrozen(Z)V
.end method

.method public abstract setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V
.end method

.method public abstract setNestedScrollingEnabled(Z)V
.end method

.method public abstract setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$r;)V
.end method

.method public abstract setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V
.end method

.method public abstract setPreserveFocusAfterLayout(Z)V
.end method

.method public abstract setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$u;)V
.end method

.method public abstract setRecyclerListener(Landroidx/recyclerview/widget/RecyclerView$w;)V
.end method

.method public abstract setScrollingTouchSlop(I)V
.end method

.method public abstract setViewCacheExtension(Landroidx/recyclerview/widget/RecyclerView$a0;)V
.end method

.method public abstract smoothScrollBy(II)V
.end method

.method public abstract smoothScrollBy(IILandroid/view/animation/Interpolator;)V
.end method

.method public abstract smoothScrollToPosition(I)V
.end method

.method public abstract startNestedScroll(I)Z
.end method

.method public abstract startNestedScroll(II)Z
.end method

.method public abstract stopNestedScroll()V
.end method

.method public abstract stopNestedScroll(I)V
.end method

.method public abstract stopScroll()V
.end method

.method public abstract swapAdapter(Landroidx/recyclerview/widget/RecyclerView$g;Z)V
.end method
