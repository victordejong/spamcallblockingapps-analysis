.class public final synthetic Le/i/b/v;
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

    iput-object p1, p0, Le/i/b/v;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Le/i/b/v;->a:Le/i/b/x2;

    .line 1
    new-instance v7, Le/i/b/q2/o;

    .line 2
    new-instance v1, Le/i/b/a1;

    invoke-direct {v1, v0}, Le/i/b/a1;-><init>(Le/i/b/x2;)V

    const-class v2, Le/i/b/q2/m;

    .line 3
    iget-object v3, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Le/i/b/k1;

    invoke-direct {v4, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v3, v2, v4}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    move-object v2, v1

    check-cast v2, Le/i/b/q2/m;

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->d()Le/i/b/i2/g;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->k()Le/i/b/s2/b;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Le/i/b/x2;->o()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/i/b/q2/o;-><init>(Le/i/b/z1/u;Le/i/b/i2/g;Le/i/b/s2/f;Le/i/b/s2/b;Ljava/util/concurrent/Executor;)V

    return-object v7
.end method
