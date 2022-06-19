.class public final Le/a/d/v/k/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/k/p0;


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

.field public final synthetic c:Lq3/a/i0;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/c0/x1/e;Le/a/d/c0/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "Le/a/d/c0/x1/e;",
            "Le/a/d/c0/r<",
            "Le/a/d/c0/x1/b;",
            ">;)V"
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d/v/k/q0;->c:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/k/q0;->a:Le/a/d/c0/x1/e;

    iput-object p3, p0, Le/a/d/v/k/q0;->b:Le/a/d/c0/r;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/v/k/q0$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/v/k/q0$a;-><init>(Le/a/d/v/k/q0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/k/q0;->c:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
