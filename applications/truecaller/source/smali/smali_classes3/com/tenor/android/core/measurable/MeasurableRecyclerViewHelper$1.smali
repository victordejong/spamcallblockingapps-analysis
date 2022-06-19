.class public final Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper;->onConstruct(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 4
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1, v0}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->attachMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/measurable/MeasurableRecyclerViewHelper$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;

    .line 4
    invoke-interface {p1}, Lcom/tenor/android/core/measurable/IMeasurableViewHolder;->detachMeasurer()V

    :cond_0
    return-void
.end method
