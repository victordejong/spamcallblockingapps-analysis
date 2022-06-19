.class public Lcom/hiya/stingray/ui/calllog/s$a;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/calllog/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/hiya/stingray/ui/calllog/LogItemView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/hiya/stingray/ui/calllog/LogItemView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/hiya/stingray/ui/calllog/s$a;->a:Lcom/hiya/stingray/ui/calllog/LogItemView;

    return-void
.end method
