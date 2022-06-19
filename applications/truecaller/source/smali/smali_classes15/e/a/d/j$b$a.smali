.class public final Le/a/d/j$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/j$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Le/a/d/i;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipImpl$getGroupCallState$2$1"
    f = "Voip.kt"
    l = {
        0x193,
        0x2c9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ls1/k;

.field public final synthetic i:Le/a/d/j$b;


# direct methods
.method public constructor <init>(Ls1/k;Ls1/w/d;Le/a/d/j$b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/j$b$a;->h:Ls1/k;

    iput-object p3, p0, Le/a/d/j$b$a;->i:Le/a/d/j$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance v0, Le/a/d/j$b$a;

    iget-object v1, p0, Le/a/d/j$b$a;->h:Ls1/k;

    iget-object v2, p0, Le/a/d/j$b$a;->i:Le/a/d/j$b;

    invoke-direct {v0, v1, p2, v2}, Le/a/d/j$b$a;-><init>(Ls1/k;Ls1/w/d;Le/a/d/j$b;)V

    iput-object p1, v0, Le/a/d/j$b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/j$b$a;

    iget-object v1, p0, Le/a/d/j$b$a;->h:Ls1/k;

    iget-object v2, p0, Le/a/d/j$b$a;->i:Le/a/d/j$b;

    invoke-direct {v0, v1, p2, v2}, Le/a/d/j$b$a;-><init>(Ls1/k;Ls1/w/d;Le/a/d/j$b;)V

    iput-object p1, v0, Le/a/d/j$b$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/j$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/j$b$a;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/j$b$a;->f:Ljava/lang/Object;

    check-cast v1, Le/a/d/v/b;

    iget-object v3, p0, Le/a/d/j$b$a;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/j$b$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v1, p0, Le/a/d/j$b$a;->h:Ls1/k;

    .line 5
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    const-string v4, "null cannot be cast to non-null type com.truecaller.voip.groupcall.GroupCallManagerState.Active"

    .line 6
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/d/v/f$a;

    .line 7
    iget-object v1, v1, Le/a/d/v/f$a;->a:Le/a/d/v/b;

    .line 8
    new-instance v4, Le/a/d/i$a;

    invoke-interface {v1}, Le/a/d/v/b;->m()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v5

    sget-object v6, Lcom/truecaller/voip/groupcall/call/CallDirection;->OUTGOING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-ne v5, v6, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v4, v5}, Le/a/d/i$a;-><init>(Z)V

    iput-object p1, p0, Le/a/d/j$b$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/j$b$a;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/j$b$a;->g:I

    invoke-interface {p1, v4, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, p1

    .line 9
    :goto_1
    invoke-interface {v1}, Le/a/d/v/b;->getState()Lq3/a/x2/i1;

    move-result-object p1

    .line 10
    new-instance v4, Le/a/d/j$b$a$a;

    invoke-direct {v4, p0, v3, v1}, Le/a/d/j$b$a$a;-><init>(Le/a/d/j$b$a;Lq3/a/x2/g;Le/a/d/v/b;)V

    const/4 v1, 0x0

    iput-object v1, p0, Le/a/d/j$b$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/j$b$a;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/j$b$a;->g:I

    invoke-interface {p1, v4, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
