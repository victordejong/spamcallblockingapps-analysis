.class final Lcom/hiya/stingray/ui/local/location/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/f;->z(Ljava/lang/String;)V
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
        "Lcom/hiya/stingray/t/h1/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$e;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "it"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f$e;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/local/location/g;->t(Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/f$e;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/location/g;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/h1/i;

    invoke-interface {v0, p1, v2}, Lcom/hiya/stingray/ui/local/location/g;->l(Lcom/hiya/stingray/t/h1/i;Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$e;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/location/g;

    invoke-interface {p1}, Lcom/hiya/stingray/ui/local/location/g;->w()V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/f$e;->a(Ljava/util/List;)V

    return-void
.end method
