.class public Le/i/b/u2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/criteo/publisher/model/AdSize;


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/s2/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/criteo/publisher/model/AdSize;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    sput-object v0, Le/i/b/u2/i;->c:Lcom/criteo/publisher/model/AdSize;

    return-void
.end method

.method public constructor <init>(Le/i/b/s2/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/u2/i;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/i;->a:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/u2/i;->b:Le/i/b/s2/i;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Le/i/b/u2/p;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/AdUnit;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Le/i/b/u2/i$a;->a:[I

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitType()Le/i/b/s2/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 4
    sget-object v2, Le/i/b/u2/i;->c:Lcom/criteo/publisher/model/AdSize;

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Found an invalid AdUnit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object v2, p0, Le/i/b/u2/i;->b:Le/i/b/s2/i;

    invoke-virtual {v2}, Le/i/b/s2/i;->a()Lcom/criteo/publisher/model/AdSize;

    move-result-object v2

    goto :goto_1

    .line 7
    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/criteo/publisher/model/BannerAdUnit;

    .line 8
    invoke-virtual {v2}, Lcom/criteo/publisher/model/BannerAdUnit;->getSize()Lcom/criteo/publisher/model/AdSize;

    move-result-object v2

    .line 9
    :goto_1
    new-instance v3, Le/i/b/u2/p;

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/criteo/publisher/model/AdUnit;->getAdUnitType()Le/i/b/s2/a;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Le/i/b/u2/p;-><init>(Lcom/criteo/publisher/model/AdSize;Ljava/lang/String;Le/i/b/s2/a;)V

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/u2/p;

    .line 13
    iget-object v2, v1, Le/i/b/u2/p;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    iget-object v2, v1, Le/i/b/u2/p;->a:Lcom/criteo/publisher/model/AdSize;

    .line 16
    invoke-virtual {v2}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result v2

    if-lez v2, :cond_6

    .line 17
    iget-object v2, v1, Le/i/b/u2/p;->a:Lcom/criteo/publisher/model/AdSize;

    .line 18
    invoke-virtual {v2}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v2

    if-gtz v2, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_6
    :goto_3
    iget-object v2, p0, Le/i/b/u2/i;->a:Le/i/b/q2/h;

    const-string v3, "adUnit"

    .line 21
    invoke-static {v1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v3, Le/i/b/q2/f;

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found an invalid AdUnit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v9, 0x4

    const-string v8, "onInvalidAdUnit"

    move-object v4, v3

    .line 24
    invoke-direct/range {v4 .. v9}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v2, v3}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_2

    .line 26
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 28
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 29
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    add-int/lit8 v2, v1, 0x8

    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 31
    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_4

    :cond_9
    move-object p1, v0

    :goto_5
    return-object p1
.end method
