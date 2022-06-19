.class public final synthetic Le/i/b/u;
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

    iput-object p1, p0, Le/i/b/u;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le/i/b/u;->a:Le/i/b/x2;

    .line 1
    new-instance v9, Le/i/b/q2/l;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v3

    .line 4
    invoke-virtual {v0}, Le/i/b/x2;->k()Le/i/b/s2/b;

    move-result-object v4

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->m()Le/i/b/e3;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->b()Le/i/b/d2/c;

    move-result-object v6

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->t()Le/i/b/e2;

    move-result-object v7

    .line 8
    sget-object v1, Le/i/b/g;->a:Le/i/b/g;

    const-class v8, Le/i/b/q2/j;

    .line 9
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v10, Le/i/b/k1;

    invoke-direct {v10, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v8, v10}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    move-object v8, v0

    check-cast v8, Le/i/b/q2/j;

    move-object v1, v9

    .line 11
    invoke-direct/range {v1 .. v8}, Le/i/b/q2/l;-><init>(Le/i/b/s2/f;Landroid/content/Context;Le/i/b/s2/b;Le/i/b/e3;Le/i/b/d2/c;Le/i/b/e2;Le/i/b/q2/j;)V

    return-object v9
.end method
