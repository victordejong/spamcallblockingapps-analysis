.class public Le/k/a/c/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/t$b;,
        Le/k/a/c/t$a;
    }
.end annotation


# static fields
.field public static final g:Le/k/a/b/o;


# instance fields
.field public final a:Le/k/a/c/y;

.field public final b:Le/k/a/c/l0/j;

.field public final c:Le/k/a/c/l0/p;

.field public final d:Le/k/a/b/e;

.field public final e:Le/k/a/c/t$a;

.field public final f:Le/k/a/c/t$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/b/a0/l;

    invoke-direct {v0}, Le/k/a/b/a0/l;-><init>()V

    sput-object v0, Le/k/a/c/t;->g:Le/k/a/b/o;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/r;Le/k/a/c/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/k/a/c/t;->a:Le/k/a/c/y;

    .line 3
    iget-object p2, p1, Le/k/a/c/r;->g:Le/k/a/c/l0/j;

    iput-object p2, p0, Le/k/a/c/t;->b:Le/k/a/c/l0/j;

    .line 4
    iget-object p2, p1, Le/k/a/c/r;->h:Le/k/a/c/l0/p;

    iput-object p2, p0, Le/k/a/c/t;->c:Le/k/a/c/l0/p;

    .line 5
    iget-object p1, p1, Le/k/a/c/r;->a:Le/k/a/b/e;

    iput-object p1, p0, Le/k/a/c/t;->d:Le/k/a/b/e;

    .line 6
    sget-object p1, Le/k/a/c/t$a;->d:Le/k/a/c/t$a;

    iput-object p1, p0, Le/k/a/c/t;->e:Le/k/a/c/t$a;

    .line 7
    sget-object p1, Le/k/a/c/t$b;->a:Le/k/a/c/t$b;

    iput-object p1, p0, Le/k/a/c/t;->f:Le/k/a/c/t$b;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/t;Le/k/a/c/y;Le/k/a/c/t$a;Le/k/a/c/t$b;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Le/k/a/c/t;->a:Le/k/a/c/y;

    .line 10
    iget-object p2, p1, Le/k/a/c/t;->b:Le/k/a/c/l0/j;

    iput-object p2, p0, Le/k/a/c/t;->b:Le/k/a/c/l0/j;

    .line 11
    iget-object p2, p1, Le/k/a/c/t;->c:Le/k/a/c/l0/p;

    iput-object p2, p0, Le/k/a/c/t;->c:Le/k/a/c/l0/p;

    .line 12
    iget-object p1, p1, Le/k/a/c/t;->d:Le/k/a/b/e;

    iput-object p1, p0, Le/k/a/c/t;->d:Le/k/a/b/e;

    .line 13
    iput-object p3, p0, Le/k/a/c/t;->e:Le/k/a/c/t$a;

    .line 14
    iput-object p4, p0, Le/k/a/c/t;->f:Le/k/a/c/t$b;

    return-void
.end method


# virtual methods
.method public final a(Le/k/a/b/g;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/t;->a:Le/k/a/c/y;

    sget-object v1, Le/k/a/c/z;->j:Le/k/a/c/z;

    invoke-virtual {v0, v1}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 3
    :try_start_0
    iget-object v2, p0, Le/k/a/c/t;->f:Le/k/a/c/t$b;

    .line 4
    iget-object v3, p0, Le/k/a/c/t;->b:Le/k/a/c/l0/j;

    iget-object v4, p0, Le/k/a/c/t;->a:Le/k/a/c/y;

    iget-object v5, p0, Le/k/a/c/t;->c:Le/k/a/c/l0/p;

    check-cast v3, Le/k/a/c/l0/j$a;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v6, Le/k/a/c/l0/j$a;

    invoke-direct {v6, v3, v4, v5}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v6, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    invoke-virtual {p1}, Le/k/a/b/g;->close()V

    return-void

    :catch_0
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 11
    :goto_0
    invoke-static {p1, v0, p2}, Le/k/a/c/n0/g;->g(Le/k/a/b/g;Ljava/io/Closeable;Ljava/lang/Exception;)V

    throw v1

    .line 12
    :cond_0
    :try_start_2
    iget-object v0, p0, Le/k/a/c/t;->f:Le/k/a/c/t$b;

    .line 13
    iget-object v2, p0, Le/k/a/c/t;->b:Le/k/a/c/l0/j;

    iget-object v3, p0, Le/k/a/c/t;->a:Le/k/a/c/y;

    iget-object v4, p0, Le/k/a/c/t;->c:Le/k/a/c/l0/p;

    check-cast v2, Le/k/a/c/l0/j$a;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v5, Le/k/a/c/l0/j$a;

    invoke-direct {v5, v2, v3, v4}, Le/k/a/c/l0/j$a;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v5, p1, p2}, Le/k/a/c/l0/j;->V(Le/k/a/b/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 18
    invoke-virtual {p1}, Le/k/a/b/g;->close()V

    return-void

    :catch_2
    move-exception p2

    .line 19
    invoke-static {p1, p2}, Le/k/a/c/n0/g;->h(Le/k/a/b/g;Ljava/lang/Exception;)V

    throw v1
.end method

.method public b(Ljava/io/Writer;)Le/k/a/b/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/t;->d:Le/k/a/b/e;

    invoke-virtual {v0, p1}, Le/k/a/b/e;->e(Ljava/io/Writer;)Le/k/a/b/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/k/a/c/t;->a:Le/k/a/c/y;

    invoke-virtual {v0, p1}, Le/k/a/c/y;->u(Le/k/a/b/g;)V

    .line 3
    iget-object v0, p0, Le/k/a/c/t;->e:Le/k/a/c/t$a;

    .line 4
    iget-object v1, v0, Le/k/a/c/t$a;->a:Le/k/a/b/o;

    if-eqz v1, :cond_2

    .line 5
    sget-object v2, Le/k/a/c/t;->g:Le/k/a/b/o;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    goto :goto_0

    .line 7
    :cond_0
    instance-of v2, v1, Le/k/a/b/a0/f;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Le/k/a/b/a0/f;

    invoke-interface {v1}, Le/k/a/b/a0/f;->createInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/b/o;

    .line 9
    :cond_1
    iput-object v1, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    .line 10
    :cond_2
    :goto_0
    iget-object v1, v0, Le/k/a/c/t$a;->b:Le/k/a/b/c;

    if-nez v1, :cond_4

    .line 11
    iget-object v0, v0, Le/k/a/c/t$a;->c:Le/k/a/b/p;

    if-eqz v0, :cond_3

    .line 12
    move-object v1, p1

    check-cast v1, Le/k/a/b/x/c;

    .line 13
    iput-object v0, v1, Le/k/a/b/x/c;->l:Le/k/a/b/p;

    :cond_3
    return-object p1

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1}, Le/k/a/b/c;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Generator of type %s does not support schema of type \'%s\'"

    .line 16
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
