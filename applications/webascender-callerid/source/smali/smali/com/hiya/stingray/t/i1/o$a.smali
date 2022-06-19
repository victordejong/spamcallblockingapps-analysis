.class Lcom/hiya/stingray/t/i1/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/t/i1/o;->a(Ljava/util/Map;)Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/hiya/stingray/t/v0;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/t/i1/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/p;->f()Lcom/google/common/collect/p;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/n0;->b()Lcom/google/common/collect/n0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/n0;->c()Lcom/google/common/collect/n0;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/p;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lcom/google/common/collect/n0;->b()Lcom/google/common/collect/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/n0;->c()Lcom/google/common/collect/n0;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/common/collect/p;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/p;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/p;->e()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/t/i1/o$a;->a(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method
