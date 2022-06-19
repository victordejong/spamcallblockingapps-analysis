.class final Lcom/hiya/stingray/ui/callergrid/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/callergrid/h;->t()V
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
        "Lcom/hiya/stingray/t/g0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/callergrid/h;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/callergrid/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/callergrid/h$a;->f:Lcom/hiya/stingray/ui/callergrid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/callergrid/h$a;->f:Lcom/hiya/stingray/ui/callergrid/h;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/callergrid/i;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/callergrid/h$a$a;

    invoke-direct {v1}, Lcom/hiya/stingray/ui/callergrid/h$a$a;-><init>()V

    invoke-static {p1, v1}, Lkotlin/s/k;->d0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/hiya/stingray/ui/callergrid/i;->o(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/callergrid/h$a;->a(Ljava/util/List;)V

    return-void
.end method
