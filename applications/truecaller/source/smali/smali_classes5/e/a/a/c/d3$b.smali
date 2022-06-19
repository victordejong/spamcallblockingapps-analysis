.class public final Le/a/a/c/d3$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d3;->g(Ljava/lang/String;Z)V
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
    c = "com.truecaller.messaging.conversation.BaseEditTextLinkPreviewPresenterHelper$extractLinkPreviewIfNeeded$3"
    f = "BaseEditTextLinkPreviewPresenterHelper.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/c/d3;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/c/d3;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d3$b;->g:Le/a/a/c/d3;

    iput-object p2, p0, Le/a/a/c/d3$b;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/a/c/d3$b;

    iget-object v1, p0, Le/a/a/c/d3$b;->g:Le/a/a/c/d3;

    iget-object v2, p0, Le/a/a/c/d3$b;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/a/c/d3$b;-><init>(Le/a/a/c/d3;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/c/d3$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a/c/d3$b;

    iget-object v1, p0, Le/a/a/c/d3$b;->g:Le/a/a/c/d3;

    iget-object v2, p0, Le/a/a/c/d3$b;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/a/c/d3$b;-><init>(Le/a/a/c/d3;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/c/d3$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/a/c/d3$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/d3$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/c/d3$b;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/c/d3$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/a/c/d3$b;->g:Le/a/a/c/d3;

    .line 5
    iget-object v1, v1, Le/a/a/c/d3;->d:Le/a/a/v0/a;

    .line 6
    iget-object v3, p0, Le/a/a/c/d3$b;->h:Ljava/lang/String;

    const-wide/16 v4, 0x320

    .line 7
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 8
    iput-object p1, p0, Le/a/a/c/d3$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/c/d3$b;->f:I

    invoke-interface {v1, v3, v6, p0}, Le/a/a/v0/a;->c(Ljava/lang/String;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 9
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 10
    iget-object v1, p0, Le/a/a/c/d3$b;->g:Le/a/a/c/d3;

    .line 11
    iget-object v1, v1, Le/a/a/c/d3;->e:Ls1/w/f;

    const/4 v2, 0x0

    .line 12
    new-instance v3, Le/a/a/c/d3$b$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/a/c/d3$b$a;-><init>(Le/a/a/c/d3$b;Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
