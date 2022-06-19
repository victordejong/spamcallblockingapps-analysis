.class public final Lcom/hiya/stingray/ui/common/n$a;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/common/n;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/n$a;->a:Lcom/hiya/stingray/ui/common/n;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method

.method private final g(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n$a;->a:Lcom/hiya/stingray/ui/common/n;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/n;->c(Lcom/hiya/stingray/ui/common/n;)Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/common/n;->d(Lcom/hiya/stingray/ui/common/n;Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n$a;->a:Lcom/hiya/stingray/ui/common/n;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n$a;->a:Lcom/hiya/stingray/ui/common/n;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/n;->c(Lcom/hiya/stingray/ui/common/n;)Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/common/n;->d(Lcom/hiya/stingray/ui/common/n;Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/n$a;->a:Lcom/hiya/stingray/ui/common/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/n$a;->g(II)V

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/n$a;->g(II)V

    return-void
.end method

.method public f(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/n$a;->g(II)V

    return-void
.end method
