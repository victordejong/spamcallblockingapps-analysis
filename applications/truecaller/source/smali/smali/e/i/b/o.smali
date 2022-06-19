.class public final synthetic Le/i/b/o;
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

    iput-object p1, p0, Le/i/b/o;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/i/b/o;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/s2/d;

    .line 2
    new-instance v2, Le/i/b/n0;

    invoke-direct {v2, v0}, Le/i/b/n0;-><init>(Le/i/b/x2;)V

    const-class v3, Le/i/b/p1/a;

    .line 3
    iget-object v4, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Le/i/b/k1;

    invoke-direct {v5, v2}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v4, v3, v5}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/i/b/p1/a;

    .line 5
    invoke-virtual {v0}, Le/i/b/x2;->q()Le/i/b/y1;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Le/i/b/s2/d;-><init>(Le/i/b/p1/a;Le/i/b/y1;)V

    return-object v1
.end method
