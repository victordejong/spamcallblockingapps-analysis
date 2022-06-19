.class final Lcom/hiya/client/callerid/ui/a0/m$d;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/m;->p(Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/m;

.field final synthetic g:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/m;Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$d;->f:Lcom/hiya/client/callerid/ui/a0/m;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/m$d;->g:Landroid/view/WindowManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/m$d;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$d;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/n;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "add overlay"

    invoke-static {v0, v3, v2}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$d;->g:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/m$d;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v2}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/m$d;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v3}, Lcom/hiya/client/callerid/ui/a0/m;->b(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/hiya/client/callerid/ui/a0/n;->a()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Unable to add overlay."

    invoke-static {v2, v0, v3, v1}, Lcom/hiya/client/support/logging/d;->k(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
