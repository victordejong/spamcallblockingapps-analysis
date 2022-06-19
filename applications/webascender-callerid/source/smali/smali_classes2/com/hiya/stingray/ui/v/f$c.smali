.class final Lcom/hiya/stingray/ui/v/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/v/f;->w(Ljava/lang/String;)V
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
.field final synthetic f:Lcom/hiya/stingray/ui/v/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/v/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/v/f$c;->f:Lcom/hiya/stingray/ui/v/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/d0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/f$c;->f:Lcom/hiya/stingray/ui/v/f;

    invoke-static {v0}, Lcom/hiya/stingray/ui/v/f;->t(Lcom/hiya/stingray/ui/v/f;)Lcom/hiya/stingray/manager/y2;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/t/t0;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/hiya/stingray/t/t0;-><init>(Lcom/hiya/stingray/t/d0;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/y2;->g(Lcom/hiya/stingray/t/t0;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v1, "it.identityData"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/ui/v/f$c;->f:Lcom/hiya/stingray/ui/v/f;

    invoke-static {v0}, Lcom/hiya/stingray/ui/v/f;->t(Lcom/hiya/stingray/ui/v/f;)Lcom/hiya/stingray/manager/y2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/y2;->l()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/v/f$c;->f:Lcom/hiya/stingray/ui/v/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/v/g;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/v/g;->n0(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/d0;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/v/f$c;->a(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method
