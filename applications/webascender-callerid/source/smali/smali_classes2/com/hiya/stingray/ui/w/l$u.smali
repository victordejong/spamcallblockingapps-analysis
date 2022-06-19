.class final Lcom/hiya/stingray/ui/w/l$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/w/l;->t(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v1, p1}, Lcom/hiya/stingray/ui/w/l;->B(Lcom/hiya/stingray/ui/w/l;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {p1}, Lcom/hiya/stingray/ui/w/l;->v(Lcom/hiya/stingray/ui/w/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v1, p1}, Lcom/hiya/stingray/ui/w/l;->D(Lcom/hiya/stingray/ui/w/l;Z)V

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$u;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/w/o;->j()Landroidx/fragment/app/e;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/w/l$u$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/ui/w/l$u$a;-><init>(Lcom/hiya/stingray/ui/w/l$u;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$u;->a(Ljava/lang/String;)V

    return-void
.end method
