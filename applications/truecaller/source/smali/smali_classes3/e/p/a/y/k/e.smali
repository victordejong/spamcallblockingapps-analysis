.class public final Le/p/a/y/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/k/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/y/k/e$a;
    }
.end annotation


# static fields
.field public static final e:Lv3/i;

.field public static final f:Lv3/i;

.field public static final g:Lv3/i;

.field public static final h:Lv3/i;

.field public static final i:Lv3/i;

.field public static final j:Lv3/i;

.field public static final k:Lv3/i;

.field public static final l:Lv3/i;

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/p/a/y/k/q;

.field public final b:Le/p/a/y/j/d;

.field public c:Le/p/a/y/k/g;

.field public d:Le/p/a/y/j/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    const-string v0, "connection"

    .line 1
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Le/p/a/y/k/e;->e:Lv3/i;

    const-string v1, "host"

    .line 2
    invoke-static {v1}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v1

    sput-object v1, Le/p/a/y/k/e;->f:Lv3/i;

    const-string v2, "keep-alive"

    .line 3
    invoke-static {v2}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v2

    sput-object v2, Le/p/a/y/k/e;->g:Lv3/i;

    const-string v3, "proxy-connection"

    .line 4
    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v3

    sput-object v3, Le/p/a/y/k/e;->h:Lv3/i;

    const-string v4, "transfer-encoding"

    .line 5
    invoke-static {v4}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v4

    sput-object v4, Le/p/a/y/k/e;->i:Lv3/i;

    const-string v5, "te"

    .line 6
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    sput-object v5, Le/p/a/y/k/e;->j:Lv3/i;

    const-string v6, "encoding"

    .line 7
    invoke-static {v6}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    sput-object v6, Le/p/a/y/k/e;->k:Lv3/i;

    const-string v7, "upgrade"

    .line 8
    invoke-static {v7}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v7

    sput-object v7, Le/p/a/y/k/e;->l:Lv3/i;

    const/16 v8, 0xb

    new-array v9, v8, [Lv3/i;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    const/4 v12, 0x2

    aput-object v2, v9, v12

    const/4 v13, 0x3

    aput-object v3, v9, v13

    const/4 v14, 0x4

    aput-object v4, v9, v14

    .line 9
    sget-object v15, Le/p/a/y/j/l;->e:Lv3/i;

    const/4 v8, 0x5

    aput-object v15, v9, v8

    sget-object v16, Le/p/a/y/j/l;->f:Lv3/i;

    const/16 v17, 0x6

    aput-object v16, v9, v17

    sget-object v18, Le/p/a/y/j/l;->g:Lv3/i;

    const/16 v19, 0x7

    aput-object v18, v9, v19

    sget-object v20, Le/p/a/y/j/l;->h:Lv3/i;

    const/16 v14, 0x8

    aput-object v20, v9, v14

    sget-object v22, Le/p/a/y/j/l;->i:Lv3/i;

    const/16 v23, 0x9

    aput-object v22, v9, v23

    sget-object v24, Le/p/a/y/j/l;->j:Lv3/i;

    const/16 v25, 0xa

    aput-object v24, v9, v25

    invoke-static {v9}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Le/p/a/y/k/e;->m:Ljava/util/List;

    new-array v9, v8, [Lv3/i;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/16 v21, 0x4

    aput-object v4, v9, v21

    .line 10
    invoke-static {v9}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Le/p/a/y/k/e;->n:Ljava/util/List;

    const/16 v9, 0xe

    new-array v9, v9, [Lv3/i;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    aput-object v5, v9, v21

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v19

    aput-object v15, v9, v14

    aput-object v16, v9, v23

    aput-object v18, v9, v25

    const/16 v15, 0xb

    aput-object v20, v9, v15

    const/16 v15, 0xc

    aput-object v22, v9, v15

    const/16 v15, 0xd

    aput-object v24, v9, v15

    .line 11
    invoke-static {v9}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Le/p/a/y/k/e;->o:Ljava/util/List;

    new-array v9, v14, [Lv3/i;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/4 v0, 0x4

    aput-object v5, v9, v0

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v19

    .line 12
    invoke-static {v9}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/p/a/y/k/e;->p:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Le/p/a/y/k/q;Le/p/a/y/j/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/k/e;->a:Le/p/a/y/k/q;

    .line 3
    iput-object p2, p0, Le/p/a/y/k/e;->b:Le/p/a/y/j/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    invoke-virtual {v0}, Le/p/a/y/j/k;->g()Lv3/z;

    move-result-object v0

    check-cast v0, Le/p/a/y/j/k$b;

    invoke-virtual {v0}, Le/p/a/y/j/k$b;->close()V

    return-void
.end method

.method public b(Le/p/a/y/k/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    invoke-virtual {v0}, Le/p/a/y/j/k;->g()Lv3/z;

    move-result-object v0

    .line 2
    new-instance v7, Lv3/f;

    invoke-direct {v7}, Lv3/f;-><init>()V

    .line 3
    iget-object v1, p1, Le/p/a/y/k/m;->c:Lv3/f;

    .line 4
    iget-wide v5, v1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-object v2, v7

    .line 5
    invoke-virtual/range {v1 .. v6}, Lv3/f;->k(Lv3/f;JJ)Lv3/f;

    .line 6
    iget-wide v1, v7, Lv3/f;->b:J

    .line 7
    check-cast v0, Le/p/a/y/j/k$b;

    invoke-virtual {v0, v7, v1, v2}, Le/p/a/y/j/k$b;->h1(Lv3/f;J)V

    return-void
.end method

.method public c()Le/p/a/u$b;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/p/a/r;->e:Le/p/a/r;

    iget-object v1, p0, Le/p/a/y/k/e;->b:Le/p/a/y/j/d;

    .line 2
    iget-object v1, v1, Le/p/a/y/j/d;->a:Le/p/a/r;

    const-string v2, "Expected \':status\' header not present"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v0, :cond_4

    .line 3
    iget-object v1, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    invoke-virtual {v1}, Le/p/a/y/j/k;->f()Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v5, Le/p/a/m$b;

    invoke-direct {v5}, Le/p/a/m$b;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v4, v6, :cond_2

    .line 6
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/p/a/y/j/l;

    iget-object v7, v7, Le/p/a/y/j/l;->a:Lv3/i;

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/p/a/y/j/l;

    iget-object v8, v8, Le/p/a/y/j/l;->b:Lv3/i;

    invoke-virtual {v8}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v8

    .line 8
    sget-object v9, Le/p/a/y/j/l;->d:Lv3/i;

    invoke-virtual {v7, v9}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v3, v8

    goto :goto_1

    .line 9
    :cond_0
    sget-object v9, Le/p/a/y/k/e;->p:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 10
    invoke-virtual {v7}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v8}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/p/a/y/k/p;->a(Ljava/lang/String;)Le/p/a/y/k/p;

    move-result-object v1

    .line 12
    new-instance v2, Le/p/a/u$b;

    invoke-direct {v2}, Le/p/a/u$b;-><init>()V

    .line 13
    iput-object v0, v2, Le/p/a/u$b;->b:Le/p/a/r;

    .line 14
    iget v0, v1, Le/p/a/y/k/p;->b:I

    .line 15
    iput v0, v2, Le/p/a/u$b;->c:I

    .line 16
    iget-object v0, v1, Le/p/a/y/k/p;->c:Ljava/lang/String;

    .line 17
    iput-object v0, v2, Le/p/a/u$b;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v5}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/p/a/u$b;->d(Le/p/a/m;)Le/p/a/u$b;

    goto/16 :goto_5

    .line 19
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    iget-object v0, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    invoke-virtual {v0}, Le/p/a/y/j/k;->f()Ljava/util/List;

    move-result-object v0

    .line 21
    new-instance v1, Le/p/a/m$b;

    invoke-direct {v1}, Le/p/a/m$b;-><init>()V

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "HTTP/1.1"

    move v7, v4

    :goto_2
    if-ge v7, v5, :cond_a

    .line 23
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/p/a/y/j/l;

    iget-object v8, v8, Le/p/a/y/j/l;->a:Lv3/i;

    .line 24
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/p/a/y/j/l;

    iget-object v9, v9, Le/p/a/y/j/l;->b:Lv3/i;

    invoke-virtual {v9}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    .line 25
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 26
    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 27
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 28
    :cond_5
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 29
    sget-object v12, Le/p/a/y/j/l;->d:Lv3/i;

    invoke-virtual {v8, v12}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v3, v10

    goto :goto_4

    .line 30
    :cond_6
    sget-object v12, Le/p/a/y/j/l;->j:Lv3/i;

    invoke-virtual {v8, v12}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v6, v10

    goto :goto_4

    .line 31
    :cond_7
    sget-object v12, Le/p/a/y/k/e;->n:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 32
    invoke-virtual {v8}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12, v10}, Le/p/a/m$b;->a(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    :cond_8
    :goto_4
    add-int/lit8 v10, v11, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/p/a/y/k/p;->a(Ljava/lang/String;)Le/p/a/y/k/p;

    move-result-object v0

    .line 34
    new-instance v2, Le/p/a/u$b;

    invoke-direct {v2}, Le/p/a/u$b;-><init>()V

    sget-object v3, Le/p/a/r;->d:Le/p/a/r;

    .line 35
    iput-object v3, v2, Le/p/a/u$b;->b:Le/p/a/r;

    .line 36
    iget v3, v0, Le/p/a/y/k/p;->b:I

    .line 37
    iput v3, v2, Le/p/a/u$b;->c:I

    .line 38
    iget-object v0, v0, Le/p/a/y/k/p;->c:Ljava/lang/String;

    .line 39
    iput-object v0, v2, Le/p/a/u$b;->d:Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/p/a/u$b;->d(Le/p/a/m;)Le/p/a/u$b;

    :goto_5
    return-object v2

    .line 41
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Le/p/a/y/k/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/e;->c:Le/p/a/y/k/g;

    return-void
.end method

.method public e(Le/p/a/s;J)Lv3/z;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    invoke-virtual {p1}, Le/p/a/y/j/k;->g()Lv3/z;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/p/a/s;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/k/e;->c:Le/p/a/y/k/g;

    invoke-virtual {v0}, Le/p/a/y/k/g;->m()V

    .line 3
    iget-object v0, p0, Le/p/a/y/k/e;->c:Le/p/a/y/k/g;

    invoke-virtual {v0, p1}, Le/p/a/y/k/g;->c(Le/p/a/s;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Le/p/a/y/k/e;->b:Le/p/a/y/j/d;

    .line 5
    iget-object v1, v1, Le/p/a/y/j/d;->a:Le/p/a/r;

    .line 6
    sget-object v2, Le/p/a/r;->e:Le/p/a/r;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p1, Le/p/a/s;->c:Le/p/a/m;

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Le/p/a/m;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->e:Lv3/i;

    .line 10
    iget-object v6, p1, Le/p/a/s;->b:Ljava/lang/String;

    .line 11
    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->f:Lv3/i;

    .line 13
    iget-object v6, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 14
    invoke-static {v6}, Le/m/d/y/n;->Z0(Le/p/a/n;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->h:Lv3/i;

    .line 16
    iget-object v6, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 17
    invoke-static {v6}, Le/p/a/y/i;->g(Le/p/a/n;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->g:Lv3/i;

    .line 19
    iget-object p1, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 20
    iget-object p1, p1, Le/p/a/n;->a:Ljava/lang/String;

    .line 21
    invoke-direct {v4, v5, p1}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v1}, Le/p/a/m;->d()I

    move-result p1

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_7

    .line 23
    invoke-virtual {v1, v4}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    .line 24
    sget-object v6, Le/p/a/y/k/e;->o:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 25
    new-instance v6, Le/p/a/y/j/l;

    invoke-virtual {v1, v4}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p1, Le/p/a/s;->c:Le/p/a/m;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Le/p/a/m;->d()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->e:Lv3/i;

    .line 29
    iget-object v6, p1, Le/p/a/s;->b:Ljava/lang/String;

    .line 30
    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->f:Lv3/i;

    .line 32
    iget-object v6, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 33
    invoke-static {v6}, Le/m/d/y/n;->Z0(Le/p/a/n;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->j:Lv3/i;

    const-string v6, "HTTP/1.1"

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->i:Lv3/i;

    .line 36
    iget-object v6, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 37
    invoke-static {v6}, Le/p/a/y/i;->g(Le/p/a/n;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v4, Le/p/a/y/j/l;

    sget-object v5, Le/p/a/y/j/l;->g:Lv3/i;

    .line 39
    iget-object p1, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 40
    iget-object p1, p1, Le/p/a/n;->a:Ljava/lang/String;

    .line 41
    invoke-direct {v4, v5, p1}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 43
    invoke-virtual {v1}, Le/p/a/m;->d()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_7

    .line 44
    invoke-virtual {v1, v5}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    .line 45
    sget-object v7, Le/p/a/y/k/e;->m:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v1, v5}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 48
    new-instance v8, Le/p/a/y/j/l;

    invoke-direct {v8, v6, v7}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move v8, v3

    .line 49
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 50
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/p/a/y/j/l;

    iget-object v9, v9, Le/p/a/y/j/l;->a:Lv3/i;

    invoke-virtual {v9, v6}, Lv3/i;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 51
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/p/a/y/j/l;

    iget-object v9, v9, Le/p/a/y/j/l;->b:Lv3/i;

    invoke-virtual {v9}, Lv3/i;->r()Ljava/lang/String;

    move-result-object v9

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    new-instance v9, Le/p/a/y/j/l;

    invoke-direct {v9, v6, v7}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    :cond_7
    iget-object p1, p0, Le/p/a/y/k/e;->b:Le/p/a/y/j/d;

    xor-int/lit8 v1, v0, 0x1

    const/4 v4, 0x0

    .line 55
    iget-object v5, p1, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    monitor-enter v5

    .line 56
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-boolean v6, p1, Le/p/a/y/j/d;->h:Z

    if-nez v6, :cond_a

    .line 58
    iget v12, p1, Le/p/a/y/j/d;->g:I

    add-int/lit8 v6, v12, 0x2

    .line 59
    iput v6, p1, Le/p/a/y/j/d;->g:I

    .line 60
    new-instance v13, Le/p/a/y/j/k;

    const/4 v10, 0x0

    move-object v6, v13

    move v7, v12

    move-object v8, p1

    move v9, v1

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Le/p/a/y/j/k;-><init>(ILe/p/a/y/j/d;ZZLjava/util/List;)V

    .line 61
    invoke-virtual {v13}, Le/p/a/y/j/k;->i()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 62
    iget-object v6, p1, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p1, v3}, Le/p/a/y/j/d;->l(Z)V

    .line 64
    :cond_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    iget-object v6, p1, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    const/4 v10, 0x0

    move v7, v1

    move v8, v4

    move v9, v12

    move-object v11, v2

    invoke-interface/range {v6 .. v11}, Le/p/a/y/j/c;->v(ZZIILjava/util/List;)V

    .line 66
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_9

    .line 67
    iget-object p1, p1, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {p1}, Le/p/a/y/j/c;->flush()V

    .line 68
    :cond_9
    iput-object v13, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    .line 69
    iget-object p1, v13, Le/p/a/y/j/k;->i:Le/p/a/y/j/k$d;

    .line 70
    iget-object v0, p0, Le/p/a/y/k/e;->c:Le/p/a/y/k/g;

    iget-object v0, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 71
    iget v0, v0, Le/p/a/q;->v:I

    int-to-long v0, v0

    .line 72
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 73
    iget-object p1, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    .line 74
    iget-object p1, p1, Le/p/a/y/j/k;->j:Le/p/a/y/j/k$d;

    .line 75
    iget-object v0, p0, Le/p/a/y/k/e;->c:Le/p/a/y/k/g;

    iget-object v0, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 76
    iget v0, v0, Le/p/a/q;->w:I

    int-to-long v0, v0

    .line 77
    invoke-virtual {p1, v0, v1, v2}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    return-void

    .line 78
    :cond_a
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 79
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 80
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public g(Le/p/a/u;)Le/p/a/v;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/p/a/y/k/e$a;

    iget-object v1, p0, Le/p/a/y/k/e;->d:Le/p/a/y/j/k;

    .line 2
    iget-object v1, v1, Le/p/a/y/j/k;->g:Le/p/a/y/j/k$c;

    .line 3
    invoke-direct {v0, p0, v1}, Le/p/a/y/k/e$a;-><init>(Le/p/a/y/k/e;Lv3/b0;)V

    .line 4
    new-instance v1, Le/p/a/y/k/k;

    .line 5
    iget-object p1, p1, Le/p/a/u;->f:Le/p/a/m;

    const-string v2, "$this$buffer"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Lv3/v;

    invoke-direct {v2, v0}, Lv3/v;-><init>(Lv3/b0;)V

    .line 8
    invoke-direct {v1, p1, v2}, Le/p/a/y/k/k;-><init>(Le/p/a/m;Lv3/h;)V

    return-object v1
.end method
