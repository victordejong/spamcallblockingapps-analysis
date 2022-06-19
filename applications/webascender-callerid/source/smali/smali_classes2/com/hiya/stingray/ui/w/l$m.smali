.class final Lcom/hiya/stingray/ui/w/l$m;
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
        "Lcom/hiya/stingray/ui/w/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$m;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/ui/w/l$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$m;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/w/l$a;->b()Lcom/hiya/stingray/t/h1/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/w/l;->H(Lcom/hiya/stingray/ui/w/l;Lcom/hiya/stingray/t/h1/i;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/w/l$a;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l$m;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$m;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v1}, Lcom/hiya/stingray/ui/w/l;->u(Lcom/hiya/stingray/ui/w/l;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f110215

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v0, v1}, Lcom/hiya/stingray/ui/w/o;->E0(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$m;->f:Lcom/hiya/stingray/ui/w/l;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/w/l$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/w/o;

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/hiya/stingray/ui/w/o;->E0(Ljava/util/List;Ljava/lang/String;)V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$m;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/w/l$a;->b()Lcom/hiya/stingray/t/h1/i;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/w/l;->F(Lcom/hiya/stingray/ui/w/l;Lcom/hiya/stingray/t/h1/i;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/w/l$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$m;->a(Lcom/hiya/stingray/ui/w/l$a;)V

    return-void
.end method
