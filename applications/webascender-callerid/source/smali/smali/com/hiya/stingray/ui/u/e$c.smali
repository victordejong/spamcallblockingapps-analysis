.class final Lcom/hiya/stingray/ui/u/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/u/e;->A(Ljava/lang/String;Z)V
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
        "Lcom/hiya/stingray/t/d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/u/e;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/u/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/u/e$c;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/u/e$c;->g:Z

    const-string v1, "it"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/u/f;->U0(Lcom/hiya/stingray/t/d0;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/u/e;->u(Lcom/hiya/stingray/ui/u/e;)Lcom/hiya/stingray/manager/u3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    const-string v2, "it.identityData"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    const-string v2, "it.reputationDataItem"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/u3;->S(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-static {p1}, Lcom/hiya/stingray/ui/u/e;->u(Lcom/hiya/stingray/ui/u/e;)Lcom/hiya/stingray/manager/u3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-static {p1}, Lcom/hiya/stingray/ui/u/e;->t(Lcom/hiya/stingray/ui/u/e;)Lcom/hiya/stingray/manager/y2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/y2;->l()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/u/e;->w(Lcom/hiya/stingray/ui/u/e;Lcom/hiya/stingray/t/d0;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/u/e$c;->f:Lcom/hiya/stingray/ui/u/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/u/e;->v(Lcom/hiya/stingray/ui/u/e;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/u/e$c;->a(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
