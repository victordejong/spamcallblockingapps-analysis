.class public Le/i/b/s1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/s1/a;


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/q2/o;


# direct methods
.method public constructor <init>(Le/i/b/q2/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/s1/c;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    .line 3
    iput-object p1, p0, Le/i/b/s1/c;->b:Le/i/b/q2/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSdkInitialized"

    invoke-virtual {v0, v2, v1}, Le/i/b/q2/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/i/b/s1/c;->b:Le/i/b/q2/o;

    invoke-virtual {v0}, Le/i/b/q2/o;->a()V

    return-void
.end method

.method public a(Le/i/b/u2/w;)V
    .locals 3

    .line 3
    iget-object v0, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onBidCached: %s"

    invoke-virtual {v0, p1, v1}, Le/i/b/q2/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Le/i/b/u2/p;Le/i/b/u2/w;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onBidConsumed: %s"

    invoke-virtual {p1, p2, v0}, Le/i/b/q2/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Le/i/b/u2/q;Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    .line 2
    new-instance v0, Le/i/b/q2/f;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "onCdbCallFailed"

    invoke-direct {v0, v1, v3, p2, v2}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method public d(Le/i/b/u2/q;Le/i/b/u2/t;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onCdbCallFinished: %s"

    invoke-virtual {p1, p2, v0}, Le/i/b/q2/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Le/i/b/u2/q;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/s1/c;->a:Le/i/b/q2/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCdbCallStarted: %s"

    invoke-virtual {v0, p1, v1}, Le/i/b/q2/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
