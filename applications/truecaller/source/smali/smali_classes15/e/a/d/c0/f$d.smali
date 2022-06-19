.class public final Le/a/d/c0/f$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/f;->c(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d/b0/a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.CallUserResolverImpl$resolveById$2"
    f = "CallUserResolver.kt"
    l = {
        0x3a,
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/c0/f;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/truecaller/voip/groupcall/call/CallDirection;


# direct methods
.method public constructor <init>(Le/a/d/c0/f;Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/f$d;->f:Le/a/d/c0/f;

    iput-object p2, p0, Le/a/d/c0/f$d;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/c0/f$d;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/f$d;

    iget-object v0, p0, Le/a/d/c0/f$d;->f:Le/a/d/c0/f;

    iget-object v1, p0, Le/a/d/c0/f$d;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/f$d;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/f$d;-><init>(Le/a/d/c0/f;Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/f$d;

    iget-object v0, p0, Le/a/d/c0/f$d;->f:Le/a/d/c0/f;

    iget-object v1, p0, Le/a/d/c0/f$d;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/c0/f$d;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/f$d;-><init>(Le/a/d/c0/f;Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/f$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/f$d;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/f$d;->g:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/a/d/c0/f$d;->f:Le/a/d/c0/f;

    .line 6
    iget-object v1, v1, Le/a/d/c0/f;->c:Le/a/d/c0/y0;

    .line 7
    iput v3, p0, Le/a/d/c0/f$d;->e:I

    invoke-interface {v1, p1, p0}, Le/a/d/c0/y0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return-object v1

    .line 9
    :cond_4
    iget-object v3, p0, Le/a/d/c0/f$d;->f:Le/a/d/c0/f;

    iget-object v4, p0, Le/a/d/c0/f$d;->h:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput v2, p0, Le/a/d/c0/f$d;->e:I

    .line 10
    iget-object v2, v3, Le/a/d/c0/f;->b:Ls1/w/f;

    new-instance v5, Le/a/d/c0/f$e;

    invoke-direct {v5, v3, v4, p1, v1}, Le/a/d/c0/f$e;-><init>(Le/a/d/c0/f;Lcom/truecaller/voip/groupcall/call/CallDirection;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v2, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object p1
.end method
