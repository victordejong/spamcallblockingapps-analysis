.class public final synthetic Le/i/b/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x2$a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/d0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Le/i/b/d0;->a:Le/i/b/x2;

    .line 1
    new-instance v12, Le/i/b/y1;

    new-instance v2, Le/i/b/u1/a;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->a()Le/i/b/s2/i;

    move-result-object v1

    invoke-direct {v2, v1}, Le/i/b/u1/a;-><init>(Le/i/b/s2/i;)V

    .line 3
    invoke-virtual {v0}, Le/i/b/x2;->u()Le/i/b/u2/x;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Le/i/b/x2;->t()Le/i/b/e2;

    move-result-object v4

    .line 5
    new-instance v1, Le/i/b/g0;

    invoke-direct {v1, v0}, Le/i/b/g0;-><init>(Le/i/b/x2;)V

    const-class v5, Le/i/b/u2/i;

    .line 6
    iget-object v6, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Le/i/b/k1;

    invoke-direct {v7, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v6, v5, v7}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    move-object v5, v1

    check-cast v5, Le/i/b/u2/i;

    .line 8
    new-instance v1, Le/i/b/e1;

    invoke-direct {v1, v0}, Le/i/b/e1;-><init>(Le/i/b/x2;)V

    const-class v6, Le/i/b/i2/c;

    .line 9
    iget-object v7, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v8, Le/i/b/k1;

    invoke-direct {v8, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v7, v6, v8}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v6, v1

    check-cast v6, Le/i/b/i2/c;

    .line 11
    new-instance v1, Le/i/b/s0;

    invoke-direct {v1, v0}, Le/i/b/s0;-><init>(Le/i/b/x2;)V

    const-class v7, Le/i/b/i2/f;

    .line 12
    iget-object v8, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Le/i/b/k1;

    invoke-direct {v9, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v8, v7, v9}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    move-object v7, v1

    check-cast v7, Le/i/b/i2/f;

    .line 14
    new-instance v1, Le/i/b/a0;

    invoke-direct {v1, v0}, Le/i/b/a0;-><init>(Le/i/b/x2;)V

    const-class v8, Le/i/b/s1/a;

    .line 15
    iget-object v9, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v10, Le/i/b/k1;

    invoke-direct {v10, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v9, v8, v10}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    move-object v8, v1

    check-cast v8, Le/i/b/s1/a;

    .line 17
    new-instance v1, Le/i/b/l0;

    invoke-direct {v1, v0}, Le/i/b/l0;-><init>(Le/i/b/x2;)V

    const-class v9, Le/i/b/z1/g0;

    .line 18
    iget-object v10, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v11, Le/i/b/k1;

    invoke-direct {v11, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v10, v9, v11}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    move-object v9, v1

    check-cast v9, Le/i/b/z1/g0;

    .line 20
    new-instance v1, Le/i/b/v;

    invoke-direct {v1, v0}, Le/i/b/v;-><init>(Le/i/b/x2;)V

    const-class v10, Le/i/b/q2/o;

    .line 21
    iget-object v11, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v13, Le/i/b/k1;

    invoke-direct {v13, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v11, v10, v13}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    move-object v10, v1

    check-cast v10, Le/i/b/q2/o;

    .line 23
    invoke-virtual {v0}, Le/i/b/x2;->v()Le/i/b/l2/a;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Le/i/b/y1;-><init>(Le/i/b/u1/a;Le/i/b/u2/x;Le/i/b/e2;Le/i/b/u2/i;Le/i/b/i2/c;Le/i/b/i2/f;Le/i/b/s1/a;Le/i/b/z1/g0;Le/i/b/q2/o;Le/i/b/l2/a;)V

    return-object v12
.end method
