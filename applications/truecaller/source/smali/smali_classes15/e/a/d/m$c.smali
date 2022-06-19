.class public final Le/a/d/m$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d/c0/l1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipSupportImpl$fetchFilterInfo$2"
    f = "VoipSupportImpl.kt"
    l = {
        0x80
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/m;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/m;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$c;->f:Le/a/d/m;

    iput-object p2, p0, Le/a/d/m$c;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/d/m$c;

    iget-object v0, p0, Le/a/d/m$c;->f:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$c;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/m$c;-><init>(Le/a/d/m;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/m$c;

    iget-object v0, p0, Le/a/d/m$c;->f:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$c;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/m$c;-><init>(Le/a/d/m;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/m$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/m$c;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/d/m$c;->f:Le/a/d/m;

    .line 5
    iget-object p1, p1, Le/a/d/m;->m:Le/a/a3/a;

    .line 6
    iget-object v1, p0, Le/a/d/m$c;->g:Ljava/lang/String;

    iput v3, p0, Le/a/d/m$c;->e:I

    invoke-interface {p1, v1, v1, v2, p0}, Le/a/a3/a;->e(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    move v1, v0

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/blocking/FilterMatch;

    if-nez v4, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v4}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9
    iget v4, v4, Lcom/truecaller/blocking/FilterMatch;->f:I

    if-le v4, v0, :cond_4

    move v0, v4

    goto :goto_2

    .line 10
    :cond_6
    invoke-virtual {v4}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v3

    goto :goto_2

    .line 11
    :cond_7
    invoke-virtual {v4}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 12
    :cond_8
    new-instance p1, Le/a/d/c0/l1;

    invoke-direct {p1, v0, v1, v2}, Le/a/d/c0/l1;-><init>(IZZ)V

    return-object p1
.end method
