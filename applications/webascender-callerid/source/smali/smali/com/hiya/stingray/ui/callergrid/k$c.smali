.class final Lcom/hiya/stingray/ui/callergrid/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/k;->y(Lcom/hiya/stingray/q/c/c;)V
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
        "Lkotlin/l<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/g0;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/g0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/k$c;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/l<",
            "+",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;+",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/k$c;->f:Lcom/hiya/stingray/ui/callergrid/k;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/callergrid/l;

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/ui/callergrid/l;->k(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/k$c;->a(Lkotlin/l;)V

    return-void
.end method
