.class final Lcom/hiya/stingray/ui/callergrid/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/e;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/callergrid/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/e$d;->a:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e$d;->a:Lcom/hiya/stingray/ui/callergrid/e;

    sget v1, Lcom/hiya/stingray/o;->l4:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/callergrid/e;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "swipe_refresh_container"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/e$d;->a:Lcom/hiya/stingray/ui/callergrid/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/callergrid/e;->k1(Lcom/hiya/stingray/ui/callergrid/e;)V

    return-void
.end method
