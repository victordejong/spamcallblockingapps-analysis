.class Lcom/hiya/stingray/manager/o1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/o1;->f(Li/c/b0/b/v;Ljava/lang/String;)Li/c/b0/b/v;
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
        "Ljava/lang/String;",
        ">;",
        "Li/c/b0/b/v<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/hiya/stingray/q/c/i/b;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/o1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/o1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/o1$c;->f:Lcom/hiya/stingray/manager/o1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o1$c;->f:Lcom/hiya/stingray/manager/o1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/o1;->b(Lcom/hiya/stingray/manager/o1;)Lcom/hiya/stingray/q/b/n;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/t0;->d(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/n;->d(Ljava/util/Set;)Li/c/b0/b/v;

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

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/o1$c;->a(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
