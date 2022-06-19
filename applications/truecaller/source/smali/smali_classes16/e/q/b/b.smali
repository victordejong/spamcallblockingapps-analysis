.class public Le/q/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/q/b/c;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/q/b/c;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Le/q/b/c;-><init>(C)V

    iput-object v0, p0, Le/q/b/b;->a:Le/q/b/c;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/q/b/b;->a:Le/q/b/c;

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 7
    iget-object v6, v1, Le/q/b/c;->b:Ljava/util/List;

    .line 8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/q/b/c;

    .line 9
    iget-char v8, v7, Le/q/b/c;->a:C

    if-ne v8, v4, :cond_0

    .line 10
    iget-object v1, v7, Le/q/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object v1, v7

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v5, :cond_2

    .line 12
    new-instance v5, Le/q/b/c;

    invoke-direct {v5, v4}, Le/q/b/c;-><init>(C)V

    .line 13
    iget-object v1, v1, Le/q/b/c;->b:Ljava/util/List;

    .line 14
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iput-boolean v5, v1, Le/q/b/c;->c:Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Le/q/b/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/b/c;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p1, Le/q/b/c;->b:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p1, Le/q/b/c;->b:Ljava/util/List;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/b/c;

    .line 6
    iget-char v2, v2, Le/q/b/c;->a:C

    .line 7
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Le/q/b/c;Ljava/lang/Character;)Le/q/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/q/b/e/a;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/q/b/c;->b:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/b/c;

    .line 3
    iget-char v1, v0, Le/q/b/c;->a:C

    .line 4
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-ne v1, v2, :cond_0

    return-object v0

    .line 5
    :cond_1
    new-instance p1, Le/q/b/e/a;

    const/4 p2, 0x0

    const-string v0, "Child not found"

    invoke-direct {p1, p2, v0}, Le/q/b/e/a;-><init>(ILjava/lang/String;)V

    throw p1
.end method
