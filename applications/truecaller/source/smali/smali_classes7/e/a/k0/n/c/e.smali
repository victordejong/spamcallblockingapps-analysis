.class public final Le/a/k0/n/c/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callrecording.ui.floatingbutton.CallRecordingFloatingButtonPresenterImpl$onError$1"
    f = "CallRecordingFloatingButtonPresenterImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k0/n/c/f;

.field public final synthetic f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Le/a/k0/n/c/f;Ljava/lang/Exception;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/c/e;->e:Le/a/k0/n/c/f;

    iput-object p2, p0, Le/a/k0/n/c/e;->f:Ljava/lang/Exception;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/n/c/e;

    iget-object v0, p0, Le/a/k0/n/c/e;->e:Le/a/k0/n/c/f;

    iget-object v1, p0, Le/a/k0/n/c/e;->f:Ljava/lang/Exception;

    invoke-direct {p1, v0, v1, p2}, Le/a/k0/n/c/e;-><init>(Le/a/k0/n/c/f;Ljava/lang/Exception;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/k0/n/c/e;->e:Le/a/k0/n/c/f;

    iget-object v0, p0, Le/a/k0/n/c/e;->f:Ljava/lang/Exception;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/k0/n/c/f;->h:Le/a/k0/b;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Le/a/k0/b;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k0/n/c/e;->e:Le/a/k0/n/c/f;

    .line 3
    iget-object p1, p1, Le/a/k0/n/c/f;->h:Le/a/k0/b;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/k0/n/c/e;->f:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Le/a/k0/b;->onError(Ljava/lang/Exception;)V

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
