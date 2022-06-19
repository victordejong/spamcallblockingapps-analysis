.class public final synthetic Le/i/b/s0;
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

    iput-object p1, p0, Le/i/b/s0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Le/i/b/s0;->a:Le/i/b/x2;

    .line 1
    new-instance v8, Le/i/b/i2/f;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->d()Le/i/b/i2/g;

    move-result-object v2

    .line 3
    new-instance v1, Le/i/b/h0;

    invoke-direct {v1, v0}, Le/i/b/h0;-><init>(Le/i/b/x2;)V

    const-class v3, Le/i/b/u2/r;

    .line 4
    iget-object v4, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Le/i/b/k1;

    invoke-direct {v5, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v4, v3, v5}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    move-object v3, v1

    check-cast v3, Le/i/b/u2/r;

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->t()Le/i/b/e2;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->o()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 8
    sget-object v1, Le/i/b/a;->a:Le/i/b/a;

    const-class v6, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    iget-object v7, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Le/i/b/k1;

    invoke-direct {v9, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v7, v6, v9}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v6, v1

    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-virtual {v0}, Le/i/b/x2;->u()Le/i/b/u2/x;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Le/i/b/i2/f;-><init>(Le/i/b/i2/g;Le/i/b/u2/r;Le/i/b/e2;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Le/i/b/u2/x;)V

    return-object v8
.end method
