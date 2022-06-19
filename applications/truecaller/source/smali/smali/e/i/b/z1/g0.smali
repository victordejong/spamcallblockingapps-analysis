.class public Le/i/b/z1/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/z1/e0;

.field public final b:Le/i/b/i2/g;

.field public final c:Le/i/b/s2/f;

.field public final d:Le/i/b/u2/x;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Le/i/b/z1/e0;Le/i/b/i2/g;Le/i/b/s2/f;Le/i/b/u2/x;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/g0;->a:Le/i/b/z1/e0;

    .line 3
    iput-object p2, p0, Le/i/b/z1/g0;->b:Le/i/b/i2/g;

    .line 4
    iput-object p3, p0, Le/i/b/z1/g0;->c:Le/i/b/s2/f;

    .line 5
    iput-object p4, p0, Le/i/b/z1/g0;->d:Le/i/b/u2/x;

    .line 6
    iput-object p5, p0, Le/i/b/z1/g0;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/z1/g0;->d:Le/i/b/u2/x;

    .line 2
    iget-object v0, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 3
    invoke-virtual {v0}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-static {v0, v1}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/i/b/z1/g0;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/z1/i0;

    iget-object v2, p0, Le/i/b/z1/g0;->a:Le/i/b/z1/e0;

    iget-object v3, p0, Le/i/b/z1/g0;->b:Le/i/b/i2/g;

    iget-object v4, p0, Le/i/b/z1/g0;->c:Le/i/b/s2/f;

    invoke-direct {v1, v2, v3, v4}, Le/i/b/z1/i0;-><init>(Le/i/b/z1/e0;Le/i/b/i2/g;Le/i/b/s2/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
