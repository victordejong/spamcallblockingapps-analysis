.class public final Le/a/a/k/a/j1$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/j1$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.messaging.transport.im.ImVersionManagerImpl$getChangeLogInfo$1$1"
    f = "ImVersionManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/k/a/j1$a;

.field public final synthetic f:Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;


# direct methods
.method public constructor <init>(Le/a/a/k/a/j1$a;Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/j1$a$a;->e:Le/a/a/k/a/j1$a;

    iput-object p2, p0, Le/a/a/k/a/j1$a$a;->f:Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

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

    new-instance p1, Le/a/a/k/a/j1$a$a;

    iget-object v0, p0, Le/a/a/k/a/j1$a$a;->e:Le/a/a/k/a/j1$a;

    iget-object v1, p0, Le/a/a/k/a/j1$a$a;->f:Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/k/a/j1$a$a;-><init>(Le/a/a/k/a/j1$a;Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/k/a/j1$a$a;->e:Le/a/a/k/a/j1$a;

    iget-object v1, p0, Le/a/a/k/a/j1$a$a;->f:Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/a/k/a/j1$a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/k/a/u1;

    if-eqz p2, :cond_0

    const-string v0, "response"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;->getLinesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Le/a/a/k/a/u1;->a(Ljava/util/List;)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/k/a/j1$a$a;->e:Le/a/a/k/a/j1$a;

    iget-object p1, p1, Le/a/a/k/a/j1$a;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/u1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/a/k/a/j1$a$a;->f:Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;

    const-string v1, "response"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetChangelog$Response;->getLinesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/k/a/u1;->a(Ljava/util/List;)V

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
