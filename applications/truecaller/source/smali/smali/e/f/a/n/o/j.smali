.class public Le/f/a/n/o/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/o/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/f/a/n/k<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final c:Le/f/a/n/q/i/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/q/i/e<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final d:Ln3/k/h/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/k/h/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Le/f/a/n/q/i/e;Ln3/k/h/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Le/f/a/n/k<",
            "TDataType;TResourceType;>;>;",
            "Le/f/a/n/q/i/e<",
            "TResourceType;TTranscode;>;",
            "Ln3/k/h/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/o/j;->a:Ljava/lang/Class;

    .line 3
    iput-object p4, p0, Le/f/a/n/o/j;->b:Ljava/util/List;

    .line 4
    iput-object p5, p0, Le/f/a/n/o/j;->c:Le/f/a/n/q/i/e;

    .line 5
    iput-object p6, p0, Le/f/a/n/o/j;->d:Ln3/k/h/e;

    const-string p4, "Failed DecodePath{"

    .line 6
    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/f/a/n/o/j;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/n/e;IILe/f/a/n/i;Le/f/a/n/o/j$a;)Le/f/a/n/o/w;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/n/e<",
            "TDataType;>;II",
            "Le/f/a/n/i;",
            "Le/f/a/n/o/j$a<",
            "TResourceType;>;)",
            "Le/f/a/n/o/w<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/f/a/n/o/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/o/j;->d:Ln3/k/h/e;

    invoke-interface {v0}, Ln3/k/h/e;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 4
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Le/f/a/n/o/j;->b(Le/f/a/n/n/e;IILe/f/a/n/i;Ljava/util/List;)Le/f/a/n/o/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p2, p0, Le/f/a/n/o/j;->d:Ln3/k/h/e;

    invoke-interface {p2, v0}, Ln3/k/h/e;->b(Ljava/lang/Object;)Z

    .line 6
    check-cast p5, Le/f/a/n/o/i$b;

    .line 7
    iget-object p2, p5, Le/f/a/n/o/i$b;->b:Le/f/a/n/o/i;

    iget-object p3, p5, Le/f/a/n/o/i$b;->a:Le/f/a/n/a;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 10
    sget-object p5, Le/f/a/n/a;->d:Le/f/a/n/a;

    const/4 v0, 0x0

    if-eq p3, p5, :cond_0

    .line 11
    iget-object p5, p2, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    invoke-virtual {p5, v7}, Le/f/a/n/o/h;->f(Ljava/lang/Class;)Le/f/a/n/m;

    move-result-object p5

    .line 12
    iget-object v1, p2, Le/f/a/n/o/i;->h:Le/f/a/e;

    iget v2, p2, Le/f/a/n/o/i;->l:I

    iget v3, p2, Le/f/a/n/o/i;->m:I

    invoke-interface {p5, v1, p1, v2, v3}, Le/f/a/n/m;->a(Landroid/content/Context;Le/f/a/n/o/w;II)Le/f/a/n/o/w;

    move-result-object v1

    move-object v6, p5

    move-object p5, v1

    goto :goto_0

    :cond_0
    move-object p5, p1

    move-object v6, v0

    .line 13
    :goto_0
    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {p1}, Le/f/a/n/o/w;->b()V

    .line 15
    :cond_1
    iget-object p1, p2, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    .line 16
    iget-object p1, p1, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 17
    iget-object p1, p1, Le/f/a/e;->b:Le/f/a/g;

    .line 18
    iget-object p1, p1, Le/f/a/g;->d:Le/f/a/q/f;

    invoke-interface {p5}, Le/f/a/n/o/w;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/f/a/q/f;->a(Ljava/lang/Class;)Le/f/a/n/l;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p2, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    .line 20
    iget-object p1, p1, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 21
    iget-object p1, p1, Le/f/a/e;->b:Le/f/a/g;

    .line 22
    iget-object p1, p1, Le/f/a/g;->d:Le/f/a/q/f;

    invoke-interface {p5}, Le/f/a/n/o/w;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/q/f;->a(Ljava/lang/Class;)Le/f/a/n/l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iget-object p1, p2, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    invoke-interface {v0, p1}, Le/f/a/n/l;->b(Le/f/a/n/i;)Le/f/a/n/c;

    move-result-object p1

    goto :goto_2

    .line 24
    :cond_3
    new-instance p1, Le/f/a/g$d;

    invoke-interface {p5}, Le/f/a/n/o/w;->c()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Le/f/a/g$d;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 25
    :cond_4
    sget-object p1, Le/f/a/n/c;->c:Le/f/a/n/c;

    :goto_2
    move-object v9, v0

    .line 26
    iget-object v0, p2, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    iget-object v3, p2, Le/f/a/n/o/i;->x:Le/f/a/n/f;

    .line 27
    invoke-virtual {v0}, Le/f/a/n/o/h;->c()Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_6

    .line 29
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/f/a/n/p/n$a;

    .line 30
    iget-object v8, v8, Le/f/a/n/p/n$a;->a:Le/f/a/n/f;

    invoke-interface {v8, v3}, Le/f/a/n/f;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    xor-int/lit8 v0, v1, 0x1

    .line 31
    iget-object v1, p2, Le/f/a/n/o/i;->n:Le/f/a/n/o/k;

    invoke-virtual {v1, v0, p3, p1}, Le/f/a/n/o/k;->d(ZLe/f/a/n/a;Le/f/a/n/c;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz v9, :cond_9

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_8

    if-ne p3, v2, :cond_7

    .line 33
    new-instance p1, Le/f/a/n/o/y;

    iget-object p3, p2, Le/f/a/n/o/i;->a:Le/f/a/n/o/h;

    .line 34
    iget-object p3, p3, Le/f/a/n/o/h;->c:Le/f/a/e;

    .line 35
    iget-object v1, p3, Le/f/a/e;->a:Le/f/a/n/o/b0/b;

    .line 36
    iget-object v2, p2, Le/f/a/n/o/i;->x:Le/f/a/n/f;

    iget-object v3, p2, Le/f/a/n/o/i;->i:Le/f/a/n/f;

    iget v4, p2, Le/f/a/n/o/i;->l:I

    iget v5, p2, Le/f/a/n/o/i;->m:I

    iget-object v8, p2, Le/f/a/n/o/i;->o:Le/f/a/n/i;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Le/f/a/n/o/y;-><init>(Le/f/a/n/o/b0/b;Le/f/a/n/f;Le/f/a/n/f;IILe/f/a/n/m;Ljava/lang/Class;Le/f/a/n/i;)V

    goto :goto_5

    .line 37
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown strategy: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_8
    new-instance p1, Le/f/a/n/o/e;

    iget-object p3, p2, Le/f/a/n/o/i;->x:Le/f/a/n/f;

    iget-object v0, p2, Le/f/a/n/o/i;->i:Le/f/a/n/f;

    invoke-direct {p1, p3, v0}, Le/f/a/n/o/e;-><init>(Le/f/a/n/f;Le/f/a/n/f;)V

    .line 39
    :goto_5
    invoke-static {p5}, Le/f/a/n/o/v;->e(Le/f/a/n/o/w;)Le/f/a/n/o/v;

    move-result-object p5

    .line 40
    iget-object p2, p2, Le/f/a/n/o/i;->f:Le/f/a/n/o/i$c;

    .line 41
    iput-object p1, p2, Le/f/a/n/o/i$c;->a:Le/f/a/n/f;

    .line 42
    iput-object v9, p2, Le/f/a/n/o/i$c;->b:Le/f/a/n/l;

    .line 43
    iput-object p5, p2, Le/f/a/n/o/i$c;->c:Le/f/a/n/o/v;

    goto :goto_6

    .line 44
    :cond_9
    new-instance p1, Le/f/a/g$d;

    invoke-interface {p5}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Le/f/a/g$d;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 45
    :cond_a
    :goto_6
    iget-object p1, p0, Le/f/a/n/o/j;->c:Le/f/a/n/q/i/e;

    invoke-interface {p1, p5, p4}, Le/f/a/n/q/i/e;->a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 46
    iget-object p2, p0, Le/f/a/n/o/j;->d:Ln3/k/h/e;

    invoke-interface {p2, v0}, Ln3/k/h/e;->b(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final b(Le/f/a/n/n/e;IILe/f/a/n/i;Ljava/util/List;)Le/f/a/n/o/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/n/e<",
            "TDataType;>;II",
            "Le/f/a/n/i;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Le/f/a/n/o/w<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/f/a/n/o/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/o/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Le/f/a/n/o/j;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/a/n/k;

    .line 3
    :try_start_0
    invoke-interface {p1}, Le/f/a/n/n/e;->a()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {v3, v4, p4}, Le/f/a/n/k;->a(Ljava/lang/Object;Le/f/a/n/i;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {p1}, Le/f/a/n/n/e;->a()Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {v3, v4, p2, p3, p4}, Le/f/a/n/k;->b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_1
    const/4 v5, 0x2

    const-string v6, "DecodePath"

    .line 7
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    new-instance p1, Le/f/a/n/o/r;

    iget-object p2, p0, Le/f/a/n/o/j;->e:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Le/f/a/n/o/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DecodePath{ dataClass="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/f/a/n/o/j;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/f/a/n/o/j;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/f/a/n/o/j;->c:Le/f/a/n/q/i/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
