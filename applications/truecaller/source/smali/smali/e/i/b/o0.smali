.class public final synthetic Le/i/b/o0;
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

    iput-object p1, p0, Le/i/b/o0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Le/i/b/o0;->a:Le/i/b/x2;

    .line 1
    new-instance v8, Le/i/b/r1/t;

    .line 2
    sget-object v1, Le/i/b/b0;->a:Le/i/b/b0;

    const-class v2, Le/i/b/r1/w;

    .line 3
    iget-object v3, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Le/i/b/k1;

    invoke-direct {v4, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v3, v2, v4}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    move-object v2, v1

    check-cast v2, Le/i/b/r1/w;

    .line 5
    new-instance v3, Le/i/b/r1/q;

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->d()Le/i/b/i2/g;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->o()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 8
    invoke-virtual {v0}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Le/i/b/r1/q;-><init>(Le/i/b/i2/g;Ljava/util/concurrent/Executor;Le/i/b/w1/c;)V

    .line 9
    sget-object v1, Le/i/b/m1;->a:Le/i/b/m1;

    const-class v4, Le/i/b/r1/h;

    .line 10
    iget-object v5, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Le/i/b/k1;

    invoke-direct {v6, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v5, v4, v6}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    move-object v4, v1

    check-cast v4, Le/i/b/r1/h;

    .line 12
    new-instance v5, Le/i/b/r1/l;

    .line 13
    new-instance v1, Le/i/b/w;

    invoke-direct {v1, v0}, Le/i/b/w;-><init>(Le/i/b/x2;)V

    const-class v6, Le/i/b/q1/b;

    .line 14
    iget-object v7, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Le/i/b/k1;

    invoke-direct {v9, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v7, v6, v9}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Le/i/b/q1/b;

    .line 16
    invoke-virtual {v0}, Le/i/b/x2;->p()Le/i/b/f3/c;

    move-result-object v6

    .line 17
    invoke-virtual {v0}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Le/i/b/r1/l;-><init>(Le/i/b/q1/b;Le/i/b/f3/c;Le/i/b/w1/c;)V

    .line 18
    invoke-virtual {v0}, Le/i/b/x2;->g()Le/i/b/r1/e;

    move-result-object v6

    .line 19
    new-instance v1, Le/i/b/x;

    invoke-direct {v1, v0}, Le/i/b/x;-><init>(Le/i/b/x2;)V

    const-class v7, Lcom/criteo/publisher/advancednative/RendererHelper;

    .line 20
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Le/i/b/k1;

    invoke-direct {v9, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v7, v9}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    move-object v7, v0

    check-cast v7, Lcom/criteo/publisher/advancednative/RendererHelper;

    move-object v1, v8

    .line 22
    invoke-direct/range {v1 .. v7}, Le/i/b/r1/t;-><init>(Le/i/b/r1/w;Le/i/b/r1/q;Le/i/b/r1/h;Le/i/b/r1/l;Le/i/b/r1/e;Lcom/criteo/publisher/advancednative/RendererHelper;)V

    return-object v8
.end method
