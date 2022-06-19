.class public Lcom/hiya/stingray/ui/calllog/viewholder/a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/hiya/stingray/ui/calllog/SearchItemView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/calllog/SearchItemView;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/ui/calllog/SearchItemView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/calllog/viewholder/a;->a:Lcom/hiya/stingray/ui/calllog/SearchItemView;

    return-void
.end method
