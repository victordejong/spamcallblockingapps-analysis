.class public final Le/a/f4/g/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f4/g/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lx3/a0<",
        "Le/a/f4/g/t;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.network.search.BulkImIdSearcherImpl$search$1$1"
    f = "BulkImIdSearcherImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f4/g/h;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/f4/g/h;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f4/g/h$a;->e:Le/a/f4/g/h;

    iput-object p2, p0, Le/a/f4/g/h$a;->f:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f4/g/h$a;

    iget-object v0, p0, Le/a/f4/g/h$a;->e:Le/a/f4/g/h;

    iget-object v1, p0, Le/a/f4/g/h$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/f4/g/h$a;-><init>(Le/a/f4/g/h;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/f4/g/h$a;->e:Le/a/f4/g/h;

    iget-object v0, p0, Le/a/f4/g/h$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p1, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    iget-object p2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v12, Le/a/f4/g/e;

    .line 7
    iget-object v2, p1, Le/a/f4/g/g;->e:Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v1, "UUID.randomUUID()"

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v4, p1, Le/a/f4/g/g;->f:Landroid/content/Context;

    .line 10
    iget-object v5, p1, Le/a/f4/g/g;->g:Le/a/r2/f;

    .line 11
    iget-object v6, p1, Le/a/f4/g/g;->h:Le/a/h0/j;

    .line 12
    iget-object v7, p1, Le/a/f4/g/g;->i:Le/a/q2/a;

    .line 13
    iget-object v8, p1, Le/a/f4/g/g;->j:Le/a/p5/u;

    .line 14
    iget-object v9, p1, Le/a/f4/g/g;->k:Le/a/p5/c;

    .line 15
    iget-object v10, p1, Le/a/f4/g/g;->l:Le/a/g5/p;

    .line 16
    iget-object v11, p1, Le/a/f4/g/g;->m:Le/m/f/a/j;

    move-object v1, v12

    .line 17
    invoke-direct/range {v1 .. v11}, Le/a/f4/g/e;-><init>(Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V

    const-string p1, "imIds"

    .line 18
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p1, v12, Le/a/f4/g/e;->a:Ljava/util/Set;

    invoke-static {p1, p2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 20
    invoke-virtual {v12}, Le/a/f4/g/e;->a()Lx3/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    check-cast p1, Le/a/f4/g/d;

    :try_start_1
    invoke-virtual {p1}, Le/a/f4/g/d;->execute()Lx3/a0;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f4/g/h$a;->e:Le/a/f4/g/h;

    iget-object p1, p1, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    iget-object v0, p0, Le/a/f4/g/h$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v13, Le/a/f4/g/e;

    .line 4
    iget-object v3, p1, Le/a/f4/g/g;->e:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v2, "UUID.randomUUID()"

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v5, p1, Le/a/f4/g/g;->f:Landroid/content/Context;

    .line 7
    iget-object v6, p1, Le/a/f4/g/g;->g:Le/a/r2/f;

    .line 8
    iget-object v7, p1, Le/a/f4/g/g;->h:Le/a/h0/j;

    .line 9
    iget-object v8, p1, Le/a/f4/g/g;->i:Le/a/q2/a;

    .line 10
    iget-object v9, p1, Le/a/f4/g/g;->j:Le/a/p5/u;

    .line 11
    iget-object v10, p1, Le/a/f4/g/g;->k:Le/a/p5/c;

    .line 12
    iget-object v11, p1, Le/a/f4/g/g;->l:Le/a/g5/p;

    .line 13
    iget-object v12, p1, Le/a/f4/g/g;->m:Le/m/f/a/j;

    move-object v2, v13

    .line 14
    invoke-direct/range {v2 .. v12}, Le/a/f4/g/e;-><init>(Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V

    const-string p1, "imIds"

    .line 15
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p1, v13, Le/a/f4/g/e;->a:Ljava/util/Set;

    invoke-static {p1, v0}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 17
    invoke-virtual {v13}, Le/a/f4/g/e;->a()Lx3/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    check-cast p1, Le/a/f4/g/d;

    :try_start_1
    invoke-virtual {p1}, Le/a/f4/g/d;->execute()Lx3/a0;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1
.end method
