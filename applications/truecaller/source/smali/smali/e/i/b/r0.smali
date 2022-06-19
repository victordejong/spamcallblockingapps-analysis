.class public final synthetic Le/i/b/r0;
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

    iput-object p1, p0, Le/i/b/r0;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/i/b/r0;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/z1/h0;

    .line 2
    new-instance v2, Le/i/b/x0;

    invoke-direct {v2, v0}, Le/i/b/x0;-><init>(Le/i/b/x2;)V

    const-class v3, Le/i/b/z1/e0;

    .line 3
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Le/i/b/k1;

    invoke-direct {v4, v2}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v3, v4}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/i/b/z1/e0;

    .line 5
    invoke-direct {v1, v0}, Le/i/b/z1/h0;-><init>(Le/i/b/z1/e0;)V

    return-object v1
.end method
