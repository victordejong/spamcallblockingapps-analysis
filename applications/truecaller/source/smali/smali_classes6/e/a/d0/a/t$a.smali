.class public final Le/a/d0/a/t$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/t;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/data/entity/CallContextMessage;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.window.CallerIdWindowPresenter$registerOutgoingCallContextListeners$1$1"
    f = "CallerIdWindowPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d0/a/t;


# direct methods
.method public constructor <init>(Le/a/d0/a/t;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/t$a;->f:Le/a/d0/a/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d0/a/t$a;

    iget-object v1, p0, Le/a/d0/a/t$a;->f:Le/a/d0/a/t;

    invoke-direct {v0, v1, p2}, Le/a/d0/a/t$a;-><init>(Le/a/d0/a/t;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d0/a/t$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d0/a/t$a;->f:Le/a/d0/a/t;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_1

    .line 4
    iget-object p2, v1, Le/a/d0/a/t;->f:Le/a/d0/a/m;

    .line 5
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Le/a/d0/a/l;

    if-eqz v2, :cond_0

    .line 6
    iget-object v3, p1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-interface/range {v2 .. v7}, Le/a/d0/a/l;->I5(Ljava/lang/String;JZZ)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, v1, Le/a/d0/a/t;->f:Le/a/d0/a/m;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Le/a/d0/a/l;->n()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d0/a/t$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/CallContextMessage;

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Le/a/d0/a/t$a;->f:Le/a/d0/a/t;

    iget-object v1, v1, Le/a/d0/a/t;->f:Le/a/d0/a/m;

    .line 3
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Le/a/d0/a/l;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p1, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-interface/range {v2 .. v7}, Le/a/d0/a/l;->I5(Ljava/lang/String;JZZ)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/d0/a/t$a;->f:Le/a/d0/a/t;

    iget-object p1, p1, Le/a/d0/a/t;->f:Le/a/d0/a/m;

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Le/a/d0/a/l;->n()V

    :cond_2
    :goto_1
    return-object v0
.end method
