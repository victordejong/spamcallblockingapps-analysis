.class public Le/a/f4/i/c;
.super Le/a/f4/i/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/f4/i/e<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field public final d:Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/b<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx3/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TResult;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v1}, Le/a/f4/i/e;-><init>(Le/a/j4/a/d;ZZ)V

    .line 2
    iput-object p1, p0, Le/a/f4/i/c;->d:Lx3/b;

    return-void
.end method


# virtual methods
.method public e([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/f4/i/c;->d:Lx3/b;

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lx3/a0;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Le/a/f4/i/e$a;

    .line 6
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 7
    iget p1, p1, Lu3/k0;->e:I

    .line 8
    invoke-direct {v0, p1}, Le/a/f4/i/e$a;-><init>(I)V

    throw v0
.end method
