.class public Le/k/a/c/r;
.super Le/k/a/b/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final l:Le/k/a/c/b;

.field public static final m:Le/k/a/c/c0/a;


# instance fields
.field public final a:Le/k/a/b/e;

.field public b:Le/k/a/c/m0/o;

.field public c:Le/k/a/c/j0/d;

.field public final d:Le/k/a/c/c0/g;

.field public final e:Le/k/a/c/c0/c;

.field public f:Le/k/a/c/y;

.field public g:Le/k/a/c/l0/j;

.field public h:Le/k/a/c/l0/p;

.field public i:Le/k/a/c/f;

.field public j:Le/k/a/c/d0/l;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v2, Le/k/a/c/g0/x;

    invoke-direct {v2}, Le/k/a/c/g0/x;-><init>()V

    sput-object v2, Le/k/a/c/r;->l:Le/k/a/c/b;

    .line 2
    new-instance v12, Le/k/a/c/c0/a;

    .line 3
    sget-object v4, Le/k/a/c/m0/o;->d:Le/k/a/c/m0/o;

    const/4 v5, 0x0

    .line 4
    sget-object v6, Le/k/a/c/n0/z;->m:Le/k/a/c/n0/z;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const/4 v8, 0x0

    .line 6
    sget-object v9, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 7
    sget-object v10, Le/k/a/c/j0/i/l;->a:Le/k/a/c/j0/i/l;

    new-instance v11, Le/k/a/c/g0/w$b;

    invoke-direct {v11}, Le/k/a/c/g0/w$b;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Le/k/a/c/c0/a;-><init>(Le/k/a/c/g0/t;Le/k/a/c/b;Le/k/a/c/w;Le/k/a/c/m0/o;Le/k/a/c/j0/g;Ljava/text/DateFormat;Ljava/util/Locale;Ljava/util/TimeZone;Le/k/a/b/a;Le/k/a/c/j0/c;Le/k/a/c/g0/a$a;)V

    sput-object v12, Le/k/a/c/r;->m:Le/k/a/c/c0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Le/k/a/c/r;-><init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/b/e;Le/k/a/c/l0/j;Le/k/a/c/d0/l;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    invoke-direct/range {p0 .. p0}, Le/k/a/b/n;-><init>()V

    .line 3
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x40

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, v0, Le/k/a/c/r;->k:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le/k/a/c/q;

    invoke-direct {v1, v0}, Le/k/a/c/q;-><init>(Le/k/a/c/r;)V

    iput-object v1, v0, Le/k/a/c/r;->a:Le/k/a/b/e;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v1, v0, Le/k/a/c/r;->a:Le/k/a/b/e;

    .line 6
    invoke-virtual/range {p1 .. p1}, Le/k/a/b/e;->h()Le/k/a/b/n;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    iput-object v0, v1, Le/k/a/b/e;->f:Le/k/a/b/n;

    .line 8
    :cond_1
    :goto_0
    new-instance v1, Le/k/a/c/j0/i/n;

    invoke-direct {v1}, Le/k/a/c/j0/i/n;-><init>()V

    iput-object v1, v0, Le/k/a/c/r;->c:Le/k/a/c/j0/d;

    .line 9
    new-instance v1, Le/k/a/c/n0/x;

    invoke-direct {v1}, Le/k/a/c/n0/x;-><init>()V

    .line 10
    sget-object v2, Le/k/a/c/m0/o;->d:Le/k/a/c/m0/o;

    .line 11
    iput-object v2, v0, Le/k/a/c/r;->b:Le/k/a/c/m0/o;

    .line 12
    new-instance v8, Le/k/a/c/g0/d0;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Le/k/a/c/g0/d0;-><init>(Le/k/a/c/g0/t$a;)V

    .line 13
    sget-object v2, Le/k/a/c/r;->m:Le/k/a/c/c0/a;

    .line 14
    new-instance v10, Le/k/a/c/g0/r;

    invoke-direct {v10}, Le/k/a/c/g0/r;-><init>()V

    .line 15
    iget-object v3, v2, Le/k/a/c/c0/a;->b:Le/k/a/c/g0/t;

    if-ne v3, v10, :cond_2

    move-object v9, v2

    goto :goto_1

    .line 16
    :cond_2
    new-instance v3, Le/k/a/c/c0/a;

    iget-object v11, v2, Le/k/a/c/c0/a;->c:Le/k/a/c/b;

    iget-object v12, v2, Le/k/a/c/c0/a;->d:Le/k/a/c/w;

    iget-object v13, v2, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    iget-object v14, v2, Le/k/a/c/c0/a;->f:Le/k/a/c/j0/g;

    iget-object v15, v2, Le/k/a/c/c0/a;->h:Ljava/text/DateFormat;

    iget-object v4, v2, Le/k/a/c/c0/a;->i:Ljava/util/Locale;

    iget-object v5, v2, Le/k/a/c/c0/a;->j:Ljava/util/TimeZone;

    iget-object v6, v2, Le/k/a/c/c0/a;->k:Le/k/a/b/a;

    iget-object v7, v2, Le/k/a/c/c0/a;->g:Le/k/a/c/j0/c;

    iget-object v2, v2, Le/k/a/c/c0/a;->e:Le/k/a/c/g0/a$a;

    move-object v9, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    invoke-direct/range {v9 .. v20}, Le/k/a/c/c0/a;-><init>(Le/k/a/c/g0/t;Le/k/a/c/b;Le/k/a/c/w;Le/k/a/c/m0/o;Le/k/a/c/j0/g;Ljava/text/DateFormat;Ljava/util/Locale;Ljava/util/TimeZone;Le/k/a/b/a;Le/k/a/c/j0/c;Le/k/a/c/g0/a$a;)V

    .line 17
    :goto_1
    new-instance v10, Le/k/a/c/c0/g;

    invoke-direct {v10}, Le/k/a/c/c0/g;-><init>()V

    iput-object v10, v0, Le/k/a/c/r;->d:Le/k/a/c/c0/g;

    .line 18
    new-instance v11, Le/k/a/c/c0/c;

    invoke-direct {v11}, Le/k/a/c/c0/c;-><init>()V

    iput-object v11, v0, Le/k/a/c/r;->e:Le/k/a/c/c0/c;

    .line 19
    new-instance v12, Le/k/a/c/y;

    iget-object v4, v0, Le/k/a/c/r;->c:Le/k/a/c/j0/d;

    move-object v2, v12

    move-object v3, v9

    move-object v5, v8

    move-object v6, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Le/k/a/c/y;-><init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;)V

    iput-object v12, v0, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 20
    new-instance v12, Le/k/a/c/f;

    iget-object v4, v0, Le/k/a/c/r;->c:Le/k/a/c/j0/d;

    move-object v2, v12

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Le/k/a/c/f;-><init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;Le/k/a/c/c0/c;)V

    iput-object v12, v0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 21
    iget-object v1, v0, Le/k/a/c/r;->a:Le/k/a/b/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, v0, Le/k/a/c/r;->f:Le/k/a/c/y;

    sget-object v2, Le/k/a/c/p;->v:Le/k/a/c/p;

    invoke-virtual {v1, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v1

    const/4 v3, 0x0

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 23
    iget-object v4, v0, Le/k/a/c/r;->f:Le/k/a/c/y;

    new-array v5, v1, [Le/k/a/c/p;

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Le/k/a/c/c0/l;->t([Le/k/a/c/p;)Le/k/a/c/c0/l;

    move-result-object v4

    check-cast v4, Le/k/a/c/y;

    iput-object v4, v0, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 24
    iget-object v4, v0, Le/k/a/c/r;->i:Le/k/a/c/f;

    new-array v1, v1, [Le/k/a/c/p;

    aput-object v2, v1, v3

    invoke-virtual {v4, v1}, Le/k/a/c/c0/l;->t([Le/k/a/c/p;)Le/k/a/c/c0/l;

    move-result-object v1

    check-cast v1, Le/k/a/c/f;

    iput-object v1, v0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 25
    :cond_3
    new-instance v1, Le/k/a/c/l0/j$a;

    invoke-direct {v1}, Le/k/a/c/l0/j$a;-><init>()V

    iput-object v1, v0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    .line 26
    new-instance v1, Le/k/a/c/d0/l$a;

    sget-object v2, Le/k/a/c/d0/f;->g:Le/k/a/c/d0/f;

    invoke-direct {v1, v2}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/o;)V

    iput-object v1, v0, Le/k/a/c/r;->j:Le/k/a/c/d0/l;

    .line 27
    sget-object v1, Le/k/a/c/l0/f;->d:Le/k/a/c/l0/f;

    iput-object v1, v0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/b/g;Le/k/a/b/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    const-string v0, "g"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/c/r;->g(Le/k/a/c/y;)Le/k/a/c/l0/j;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V

    .line 4
    sget-object p1, Le/k/a/c/z;->k:Le/k/a/c/z;

    invoke-virtual {v0, p1}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result p1

    return-void
.end method

.method public b(Le/k/a/b/g;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/f;,
            Le/k/a/c/k;
        }
    .end annotation

    const-string v0, "g"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 3
    sget-object v1, Le/k/a/c/z;->d:Le/k/a/c/z;

    invoke-virtual {v0, v1}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, v0, Le/k/a/c/y;->l:Le/k/a/b/o;

    .line 6
    instance-of v2, v1, Le/k/a/b/a0/f;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Le/k/a/b/a0/f;

    invoke-interface {v1}, Le/k/a/b/a0/f;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/b/o;

    .line 8
    :cond_0
    iput-object v1, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    .line 9
    :cond_1
    sget-object v1, Le/k/a/c/z;->j:Le/k/a/c/z;

    invoke-virtual {v0, v1}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_3

    .line 10
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    .line 11
    :try_start_0
    iget-object v2, p0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iget-object v3, p0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    check-cast v2, Le/k/a/c/l0/j$a;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v4, Le/k/a/c/l0/j$a;

    invoke-direct {v4, v2, v0, v3}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 14
    invoke-virtual {v4, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V

    .line 15
    sget-object p2, Le/k/a/c/z;->k:Le/k/a/c/z;

    invoke-virtual {v0, p2}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p1}, Le/k/a/b/g;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :cond_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 18
    invoke-static {p2, v1, p1}, Le/k/a/c/n0/g;->g(Le/k/a/b/g;Ljava/io/Closeable;Ljava/lang/Exception;)V

    throw p2

    .line 19
    :cond_3
    iget-object v1, p0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iget-object v2, p0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    check-cast v1, Le/k/a/c/l0/j$a;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v3, Le/k/a/c/l0/j$a;

    invoke-direct {v3, v1, v0, v2}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 22
    invoke-virtual {v3, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V

    .line 23
    sget-object p2, Le/k/a/c/z;->k:Le/k/a/c/z;

    invoke-virtual {v0, p2}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 24
    invoke-virtual {p1}, Le/k/a/b/g;->flush()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "argument \"%s\" is null"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public d(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/r;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Le/k/a/c/g;->x(Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Le/k/a/c/r;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find a deserializer for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object p1, p1, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 6
    new-instance v1, Le/k/a/c/e0/b;

    invoke-direct {v1, p1, v0, p2}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;)V

    .line 7
    throw v1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/i;)Le/k/a/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 2
    iget v1, v0, Le/k/a/c/f;->r:I

    if-eqz v1, :cond_0

    .line 3
    iget v2, v0, Le/k/a/c/f;->q:I

    invoke-virtual {p1, v2, v1}, Le/k/a/b/j;->q2(II)Le/k/a/b/j;

    .line 4
    :cond_0
    iget v1, v0, Le/k/a/c/f;->t:I

    if-eqz v1, :cond_1

    .line 5
    iget v0, v0, Le/k/a/c/f;->s:I

    invoke-virtual {p1, v0, v1}, Le/k/a/b/j;->p2(II)Le/k/a/b/j;

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Le/k/a/c/e0/f;

    const-string v1, "No content to map due to end-of-input"

    invoke-direct {v0, p1, v1, p2}, Le/k/a/c/e0/f;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;)V

    .line 9
    throw v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public f(Le/k/a/b/j;)Le/k/a/c/l;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Le/k/a/c/l;

    const-string v1, "t"

    .line 2
    invoke-virtual {p0, v1, v0}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Le/k/a/c/r;->b:Le/k/a/c/m0/o;

    .line 4
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 6
    iget v2, v1, Le/k/a/c/f;->r:I

    if-eqz v2, :cond_0

    .line 7
    iget v4, v1, Le/k/a/c/f;->q:I

    invoke-virtual {p1, v4, v2}, Le/k/a/b/j;->q2(II)Le/k/a/b/j;

    .line 8
    :cond_0
    iget v2, v1, Le/k/a/c/f;->t:I

    .line 9
    move-object v2, p1

    check-cast v2, Le/k/a/b/u/c;

    .line 10
    iget-object v2, v2, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    iget-object v0, v1, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Le/k/a/c/k0/o;->a:Le/k/a/c/k0/o;

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->close()V

    return-object v0

    .line 15
    :cond_1
    :try_start_1
    iget-object v4, p0, Le/k/a/c/r;->j:Le/k/a/c/d0/l;

    check-cast v4, Le/k/a/c/d0/l$a;

    .line 16
    new-instance v5, Le/k/a/c/d0/l$a;

    invoke-direct {v5, v4, v1, p1}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/l$a;Le/k/a/c/f;Le/k/a/b/j;)V

    .line 17
    sget-object v4, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v2, v4, :cond_2

    .line 18
    iget-object v2, v1, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    goto :goto_0

    .line 20
    :cond_2
    :try_start_2
    invoke-virtual {p0, v5, v0}, Le/k/a/c/r;->d(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v2

    .line 21
    invoke-virtual {v5, p1, v0, v2, v3}, Le/k/a/c/d0/l;->k0(Le/k/a/b/j;Le/k/a/c/i;Le/k/a/c/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l;

    .line 22
    :goto_0
    sget-object v4, Le/k/a/c/h;->q:Le/k/a/c/h;

    invoke-virtual {v1, v4}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    invoke-static {v0}, Le/k/a/c/n0/g;->G(Le/k/a/c/i;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    invoke-virtual {v5, v0, p1, v1}, Le/k/a/c/g;->d0(Ljava/lang/Class;Le/k/a/b/j;Le/k/a/b/m;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 26
    :cond_4
    :goto_1
    invoke-virtual {p1}, Le/k/a/b/j;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 27
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 28
    :try_start_4
    invoke-virtual {p1}, Le/k/a/b/j;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method public g(Le/k/a/c/y;)Le/k/a/c/l0/j;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iget-object v1, p0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    check-cast v0, Le/k/a/c/l0/j$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Le/k/a/c/l0/j$a;

    invoke-direct {v2, v0, p1, v1}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    return-object v2
.end method

.method public final h(Le/k/a/b/g;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/r;->f:Le/k/a/c/y;

    .line 2
    sget-object v1, Le/k/a/c/z;->j:Le/k/a/c/z;

    invoke-virtual {v0, v1}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    .line 4
    :try_start_0
    iget-object v3, p0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iget-object v4, p0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    check-cast v3, Le/k/a/c/l0/j$a;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v5, Le/k/a/c/l0/j$a;

    invoke-direct {v5, v3, v0, v4}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 7
    invoke-virtual {v5, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    invoke-virtual {p1}, Le/k/a/b/g;->close()V

    return-void

    :catch_0
    move-exception p2

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 10
    :goto_0
    invoke-static {p1, v1, p2}, Le/k/a/c/n0/g;->g(Le/k/a/b/g;Ljava/io/Closeable;Ljava/lang/Exception;)V

    throw v2

    .line 11
    :cond_0
    :try_start_2
    iget-object v1, p0, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iget-object v3, p0, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    check-cast v1, Le/k/a/c/l0/j$a;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v4, Le/k/a/c/l0/j$a;

    invoke-direct {v4, v1, v0, v3}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 14
    invoke-virtual {v4, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    invoke-virtual {p1}, Le/k/a/b/g;->close()V

    return-void

    :catch_2
    move-exception p2

    .line 16
    invoke-static {p1, p2}, Le/k/a/c/n0/g;->h(Le/k/a/b/g;Ljava/lang/Exception;)V

    throw v2
.end method

.method public i(Le/k/a/b/j;)Le/k/a/b/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/k/a/b/t;",
            ">(",
            "Le/k/a/b/j;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    const-string v0, "p"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    const-class v1, Le/k/a/c/l;

    const-string v3, "t"

    .line 6
    invoke-virtual {p0, v3, v1}, Le/k/a/c/r;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v3, p0, Le/k/a/c/r;->b:Le/k/a/c/m0/o;

    .line 8
    sget-object v4, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v3, v2, v1, v4}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object v1

    .line 9
    invoke-virtual {p0, p1, v1}, Le/k/a/c/r;->e(Le/k/a/b/j;Le/k/a/c/i;)Le/k/a/b/m;

    move-result-object v3

    .line 10
    iget-object v4, p0, Le/k/a/c/r;->j:Le/k/a/c/d0/l;

    check-cast v4, Le/k/a/c/d0/l$a;

    .line 11
    new-instance v5, Le/k/a/c/d0/l$a;

    invoke-direct {v5, v4, v0, p1}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/l$a;Le/k/a/c/f;Le/k/a/b/j;)V

    .line 12
    sget-object v4, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v3, v4, :cond_1

    .line 13
    invoke-virtual {p0, v5, v1}, Le/k/a/c/r;->d(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v3

    invoke-virtual {v3, v5}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 14
    :cond_1
    sget-object v4, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v3, v4, :cond_3

    sget-object v4, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v5, v1}, Le/k/a/c/r;->d(Le/k/a/c/g;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v3

    invoke-virtual {v5, p1, v1, v3, v2}, Le/k/a/c/d0/l;->k0(Le/k/a/b/j;Le/k/a/c/i;Le/k/a/c/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v3, v2

    .line 16
    :goto_1
    invoke-virtual {p1}, Le/k/a/b/j;->j()V

    .line 17
    sget-object v4, Le/k/a/c/h;->q:Le/k/a/c/h;

    invoke-virtual {v0, v4}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v1}, Le/k/a/c/n0/g;->G(Le/k/a/c/i;)Ljava/lang/Class;

    move-result-object v1

    .line 20
    invoke-virtual {v5, v1, p1, v0}, Le/k/a/c/g;->d0(Ljava/lang/Class;Le/k/a/b/j;Le/k/a/b/m;)Ljava/lang/Object;

    throw v2

    .line 21
    :cond_5
    :goto_2
    check-cast v3, Le/k/a/c/l;

    if-nez v3, :cond_6

    .line 22
    iget-object p1, p0, Le/k/a/c/r;->i:Le/k/a/c/f;

    .line 23
    iget-object p1, p1, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    :cond_6
    return-object v3
.end method

.method public j(Le/k/a/a/p0;Le/k/a/a/f$a;)Le/k/a/c/r;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/r;->d:Le/k/a/c/c0/g;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/g;->c:Le/k/a/c/g0/g0;

    .line 3
    check-cast v0, Le/k/a/c/g0/g0$a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Le/k/a/a/f$a;->f:Le/k/a/a/f$a;

    if-ne p2, p1, :cond_1

    .line 7
    sget-object v0, Le/k/a/c/g0/g0$a;->f:Le/k/a/c/g0/g0$a;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Le/k/a/c/g0/g0$a;

    invoke-direct {v0, p2}, Le/k/a/c/g0/g0$a;-><init>(Le/k/a/a/f$a;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, p2}, Le/k/a/c/g0/g0$a;->g(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v0, p2}, Le/k/a/c/g0/g0$a;->e(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {v0, p2}, Le/k/a/c/g0/g0$a;->d(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {v0, p2}, Le/k/a/c/g0/g0$a;->h(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_6
    invoke-virtual {v0, p2}, Le/k/a/c/g0/g0$a;->f(Le/k/a/a/f$a;)Le/k/a/c/g0/g0$a;

    move-result-object v0

    .line 14
    :goto_0
    iget-object p1, p0, Le/k/a/c/r;->d:Le/k/a/c/c0/g;

    .line 15
    iput-object v0, p1, Le/k/a/c/c0/g;->c:Le/k/a/c/g0/g0;

    return-object p0
.end method
