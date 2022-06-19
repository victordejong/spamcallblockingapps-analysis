.class public final synthetic Le/i/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Le/i/b/x2;


# direct methods
.method public synthetic constructor <init>(Le/i/b/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/b;->a:Le/i/b/x2;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/i/b/b;->a:Le/i/b/x2;

    .line 1
    new-instance v1, Le/i/b/y0;

    invoke-direct {v1, v0}, Le/i/b/y0;-><init>(Le/i/b/x2;)V

    const-class v2, Le/i/b/q2/k;

    .line 2
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v2, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/q2/k;

    return-object v0
.end method
