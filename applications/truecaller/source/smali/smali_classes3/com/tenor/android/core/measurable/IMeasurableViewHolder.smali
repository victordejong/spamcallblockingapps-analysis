.class public interface abstract Lcom/tenor/android/core/measurable/IMeasurableViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/measurable/IViewHolder;


# virtual methods
.method public abstract attachMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract detachMeasurer()V
.end method

.method public abstract flush()V
.end method

.method public abstract isAttached()Z
.end method

.method public abstract isDetached()Z
.end method

.method public abstract measure(Landroidx/recyclerview/widget/RecyclerView;)F
.end method

.method public abstract pauseMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract resumeMeasurer(Landroidx/recyclerview/widget/RecyclerView;)V
.end method
