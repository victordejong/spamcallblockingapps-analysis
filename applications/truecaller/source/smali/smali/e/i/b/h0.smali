.class public final synthetic Le/i/b/h0;
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

    iput-object p1, p0, Le/i/b/h0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Le/i/b/h0;->a:Le/i/b/x2;

    .line 1
    new-instance v12, Le/i/b/u2/r;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v2

    .line 3
    iget-object v1, v0, Le/i/b/x2;->c:Ljava/lang/String;

    invoke-static {v1}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v3, v0, Le/i/b/x2;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->x()Le/i/b/u2/y;

    move-result-object v4

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->k()Le/i/b/s2/b;

    move-result-object v5

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->r()Le/i/b/l2/b;

    move-result-object v6

    .line 8
    new-instance v1, Le/i/b/r;

    invoke-direct {v1, v0}, Le/i/b/r;-><init>(Le/i/b/x2;)V

    const-class v7, Le/i/b/s1/d;

    .line 9
    iget-object v8, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Le/i/b/k1;

    invoke-direct {v9, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v8, v7, v9}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v7, v1

    check-cast v7, Le/i/b/s1/d;

    .line 11
    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v8

    .line 12
    invoke-virtual {v0}, Le/i/b/x2;->b()Le/i/b/d2/c;

    move-result-object v9

    .line 13
    new-instance v1, Le/i/b/g1;

    invoke-direct {v1, v0}, Le/i/b/g1;-><init>(Le/i/b/x2;)V

    const-class v10, Le/i/b/v1/b;

    .line 14
    iget-object v11, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v13, Le/i/b/k1;

    invoke-direct {v13, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v11, v10, v13}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    move-object v10, v1

    check-cast v10, Le/i/b/v1/b;

    .line 16
    sget-object v1, Le/i/b/j1;->a:Le/i/b/j1;

    const-class v11, Le/i/b/v1/c;

    .line 17
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v13, Le/i/b/k1;

    invoke-direct {v13, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v11, v13}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    move-object v11, v0

    check-cast v11, Le/i/b/v1/c;

    move-object v1, v12

    .line 19
    invoke-direct/range {v1 .. v11}, Le/i/b/u2/r;-><init>(Landroid/content/Context;Ljava/lang/String;Le/i/b/u2/y;Le/i/b/s2/b;Le/i/b/l2/b;Le/i/b/s1/d;Le/i/b/s2/f;Le/i/b/d2/c;Le/i/b/v1/b;Le/i/b/v1/c;)V

    return-object v12

    .line 20
    :cond_0
    new-instance v0, Le/i/b/w2;

    const-string v1, "Criteo Publisher Id is required"

    invoke-direct {v0, v1}, Le/i/b/w2;-><init>(Ljava/lang/String;)V

    throw v0
.end method
