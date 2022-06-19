.class public final Le/a/d/v/k/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/v/k/r;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Le/a/d/x/q/h;

.field public final c:Le/a/d/v/k/p;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/x/q/h;Le/a/d/v/k/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endGroupCall"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/k/u;->a:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/u;->b:Le/a/d/x/q/h;

    iput-object p3, p0, Le/a/d/v/k/u;->c:Le/a/d/v/k/p;

    .line 2
    invoke-interface {p2}, Le/a/d/x/q/h;->e()Lq3/a/x2/f;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/d/v/k/s;

    invoke-direct {p2, p1}, Le/a/d/v/k/s;-><init>(Lq3/a/x2/f;)V

    .line 4
    new-instance p1, Le/a/d/v/k/t;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Le/a/d/v/k/t;-><init>(Le/a/d/v/k/u;Ls1/w/d;)V

    .line 5
    new-instance p3, Lq3/a/x2/u0;

    invoke-direct {p3, p2, p1}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    .line 6
    invoke-static {p3, p0}, Ls1/a/a/a/v0/f/d;->x2(Lq3/a/x2/f;Lq3/a/i0;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/u;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
