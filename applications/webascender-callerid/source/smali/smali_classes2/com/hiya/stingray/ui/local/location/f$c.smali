.class final Lcom/hiya/stingray/ui/local/location/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/location/f;->x(DD)V
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
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/location/f;

.field final synthetic g:D

.field final synthetic h:D


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/location/f;DD)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$c;->f:Lcom/hiya/stingray/ui/local/location/f;

    iput-wide p2, p0, Lcom/hiya/stingray/ui/local/location/f$c;->g:D

    iput-wide p4, p0, Lcom/hiya/stingray/ui/local/location/f$c;->h:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/hiya/stingray/t/h1/j;->b(Landroid/location/Address;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/f$c;->f:Lcom/hiya/stingray/ui/local/location/f;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/location/g;

    new-instance v7, Lcom/hiya/stingray/t/h1/i;

    iget-wide v1, p0, Lcom/hiya/stingray/ui/local/location/f$c;->g:D

    iget-wide v3, p0, Lcom/hiya/stingray/ui/local/location/f$c;->h:D

    sget-object v6, Lcom/hiya/stingray/t/h1/i$a;->MAP:Lcom/hiya/stingray/t/h1/i$a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/t/h1/i;-><init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V

    const/4 v0, 0x0

    invoke-interface {p1, v7, v0}, Lcom/hiya/stingray/ui/local/location/g;->l(Lcom/hiya/stingray/t/h1/i;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/f$c;->a(Ljava/util/List;)V

    return-void
.end method
