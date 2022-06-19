.class public final synthetic Le/i/b/g1;
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

    iput-object p1, p0, Le/i/b/g1;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/i/b/g1;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/v1/b;

    .line 2
    invoke-virtual {v0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v2

    .line 3
    new-instance v3, Le/i/b/j0;

    invoke-direct {v3, v0}, Le/i/b/j0;-><init>(Le/i/b/x2;)V

    const-class v4, Le/i/b/v1/a;

    .line 4
    iget-object v5, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Le/i/b/k1;

    invoke-direct {v6, v3}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v5, v4, v6}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Le/i/b/v1/a;

    .line 6
    invoke-virtual {v0}, Le/i/b/x2;->l()Le/i/b/s2/c;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Le/i/b/x2;->m()Le/i/b/e3;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Le/i/b/v1/b;-><init>(Landroid/content/Context;Le/i/b/v1/a;Le/i/b/s2/c;Le/i/b/e3;)V

    return-object v1
.end method
