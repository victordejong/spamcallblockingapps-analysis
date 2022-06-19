.class public final Le/a/d/v/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/e;


# instance fields
.field public final a:Le/a/d/c0/x1/e;

.field public final b:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Le/a/d/c0/x1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/d/x/q/h;

.field public final synthetic d:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/c0/x1/e;Le/a/d/c0/r;Le/a/d/x/q/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Le/a/d/c0/x1/e;",
            "Le/a/d/c0/r<",
            "Le/a/d/c0/x1/b;",
            ">;",
            "Le/a/d/x/q/h;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioState"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/f;->d:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/f;->a:Le/a/d/c0/x1/e;

    iput-object p3, p0, Le/a/d/v/k/f;->b:Le/a/d/c0/r;

    iput-object p4, p0, Le/a/d/v/k/f;->c:Le/a/d/x/q/h;

    return-void
.end method


# virtual methods
.method public c(Le/a/d/c0/x1/a;)Lq3/a/p1;
    .locals 7

    const-string v0, "route"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/v/k/f$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/v/k/f$a;-><init>(Le/a/d/v/k/f;Le/a/d/c0/x1/a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/f;->d:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public q()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/k/f$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/v/k/f$b;-><init>(Le/a/d/v/k/f;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method
