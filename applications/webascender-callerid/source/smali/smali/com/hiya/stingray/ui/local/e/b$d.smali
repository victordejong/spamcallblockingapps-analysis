.class final Lcom/hiya/stingray/ui/local/e/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/e/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic f:Lcom/hiya/stingray/ui/local/e/b;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/e/b$d;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 3

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v1, "it.identityData"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object v0

    const-string v1, "it.identityData.lineTypeItem"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/r0;->c()Lcom/hiya/stingray/t/q0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/q0;->PREMIUM:Lcom/hiya/stingray/t/q0;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b$d;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/e/b;->h1(Lcom/hiya/stingray/t/d0;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b$d;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/e/b$d;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/e/b;->j1()Lcom/hiya/stingray/util/a0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/hiya/stingray/util/u;->a(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/util/a0;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/e/b$d;->f:Lcom/hiya/stingray/ui/local/e/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/e/b;->i1()Lcom/hiya/stingray/ui/local/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/e/a;->a(Lcom/hiya/stingray/t/d0;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/e/b$d;->a(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
