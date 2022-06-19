.class final Lcom/hiya/stingray/ui/w/l$r;
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
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/n0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/w/l;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/w/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$r;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/l$r;->f:Lcom/hiya/stingray/ui/w/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/w/l;->C(Lcom/hiya/stingray/ui/w/l;Ljava/util/List;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$r;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l$r;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/w/o;

    invoke-interface {v2}, Lcom/hiya/stingray/ui/w/o;->H()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/l$r;->f:Lcom/hiya/stingray/ui/w/l;

    invoke-static {v2}, Lcom/hiya/stingray/ui/w/l;->u(Lcom/hiya/stingray/ui/w/l;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110215

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, p1, v0, v2}, Lcom/hiya/stingray/ui/w/o;->z0(Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$r;->a(Ljava/util/List;)V

    return-void
.end method
