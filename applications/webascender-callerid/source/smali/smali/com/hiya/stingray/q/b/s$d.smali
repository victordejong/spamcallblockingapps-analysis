.class Lcom/hiya/stingray/q/b/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/s;->i(Lcom/hiya/stingray/q/b/s$g;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/d;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/s$g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/s$g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/hiya/stingray/q/b/s$d;->f:Lcom/hiya/stingray/q/b/s$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/s$d$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/q/b/s$d$a;-><init>(Lcom/hiya/stingray/q/b/s$d;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/q/b/s$d;->f:Lcom/hiya/stingray/q/b/s$g;

    invoke-static {v1}, Lcom/hiya/stingray/q/b/s$g;->b(Lcom/hiya/stingray/q/b/s$g;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/s$d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
