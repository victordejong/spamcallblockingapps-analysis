.class public final synthetic Le/i/b/a0;
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

    iput-object p1, p0, Le/i/b/a0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le/i/b/a0;->a:Le/i/b/x2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Le/i/b/s1/b;

    invoke-direct {v1}, Le/i/b/s1/b;-><init>()V

    .line 3
    new-instance v2, Le/i/b/s1/c;

    .line 4
    new-instance v3, Le/i/b/v;

    invoke-direct {v3, v0}, Le/i/b/v;-><init>(Le/i/b/x2;)V

    const-class v4, Le/i/b/q2/o;

    .line 5
    iget-object v5, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Le/i/b/k1;

    invoke-direct {v6, v3}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v5, v4, v6}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Le/i/b/q2/o;

    .line 7
    invoke-direct {v2, v3}, Le/i/b/s1/c;-><init>(Le/i/b/q2/o;)V

    .line 8
    iget-object v3, v1, Le/i/b/s1/b;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, Le/i/b/z1/v;

    .line 10
    new-instance v3, Le/i/b/z1/c0;

    .line 11
    invoke-virtual {v0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v4

    .line 12
    new-instance v5, Le/i/b/p;

    invoke-direct {v5, v0}, Le/i/b/p;-><init>(Le/i/b/x2;)V

    const-class v6, Le/i/b/z1/a0;

    .line 13
    iget-object v7, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v8, Le/i/b/k1;

    invoke-direct {v8, v5}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v7, v6, v8}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v5

    .line 14
    check-cast v5, Le/i/b/z1/a0;

    .line 15
    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Le/i/b/z1/c0;-><init>(Landroid/content/Context;Le/i/b/z1/a0;Le/i/b/s2/f;)V

    .line 16
    const-class v4, Le/i/b/z1/b0;

    .line 17
    iget-object v5, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Le/i/b/k1;

    invoke-direct {v6, v3}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v5, v4, v6}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    move-object v5, v3

    check-cast v5, Le/i/b/z1/b0;

    .line 19
    new-instance v3, Le/i/b/r0;

    invoke-direct {v3, v0}, Le/i/b/r0;-><init>(Le/i/b/x2;)V

    const-class v4, Le/i/b/z1/h0;

    .line 20
    iget-object v6, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Le/i/b/k1;

    invoke-direct {v7, v3}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v6, v4, v7}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    move-object v6, v3

    check-cast v6, Le/i/b/z1/h0;

    .line 22
    invoke-virtual {v0}, Le/i/b/x2;->t()Le/i/b/e2;

    move-result-object v7

    .line 23
    invoke-virtual {v0}, Le/i/b/x2;->u()Le/i/b/u2/x;

    move-result-object v8

    .line 24
    invoke-virtual {v0}, Le/i/b/x2;->v()Le/i/b/l2/a;

    move-result-object v9

    .line 25
    invoke-virtual {v0}, Le/i/b/x2;->o()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Le/i/b/z1/v;-><init>(Le/i/b/z1/b0;Le/i/b/z1/h0;Le/i/b/e2;Le/i/b/u2/x;Le/i/b/l2/a;Ljava/util/concurrent/Executor;)V

    .line 26
    iget-object v0, v1, Le/i/b/s1/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
