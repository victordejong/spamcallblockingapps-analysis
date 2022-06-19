.class public final Le/a/d/w/e$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/w/e;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.invitation.InvitationManagerImpl$rejectBusy$2$1"
    f = "InvitationManager.kt"
    l = {
        0x9c,
        0xa2,
        0xac,
        0xb3,
        0xb6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/w/e;

.field public final synthetic i:Ls1/w/d;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/w/e;Ls1/w/d;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    iput-object p3, p0, Le/a/d/w/e$e;->i:Ls1/w/d;

    iput-object p4, p0, Le/a/d/w/e$e;->j:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/d/w/e$e;

    iget-object v0, p0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    iget-object v1, p0, Le/a/d/w/e$e;->i:Ls1/w/d;

    iget-object v2, p0, Le/a/d/w/e$e;->j:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1, v2}, Le/a/d/w/e$e;-><init>(Ls1/w/d;Le/a/d/w/e;Ls1/w/d;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/w/e$e;

    iget-object v0, p0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    iget-object v1, p0, Le/a/d/w/e$e;->i:Ls1/w/d;

    iget-object v2, p0, Le/a/d/w/e$e;->j:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1, v2}, Le/a/d/w/e$e;-><init>(Ls1/w/d;Le/a/d/w/e;Ls1/w/d;Ljava/lang/String;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/w/e$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/w/e$e;->g:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    check-cast v2, Le/a/d/x/r/h;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Le/a/d/w/e$e;->f:Ljava/lang/Object;

    check-cast v2, Le/a/d/x/r/h;

    iget-object v5, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Le/a/d/w/e$e;->f:Ljava/lang/Object;

    check-cast v2, Le/a/d/x/r/h;

    iget-object v6, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    .line 5
    iget-object p1, p1, Le/a/d/w/e;->h:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/y0;

    iput v7, p0, Le/a/d/w/e$e;->g:I

    invoke-interface {p1, p0}, Le/a/d/c0/y0;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 7
    iget-object v2, p0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    .line 8
    iget-object v2, v2, Le/a/d/w/e;->j:Lo3/a;

    .line 9
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/x/r/o;

    iget-object v7, p0, Le/a/d/w/e$e;->h:Le/a/d/w/e;

    iget-object v9, p0, Le/a/d/w/e$e;->j:Ljava/lang/String;

    new-instance v10, Le/a/d/w/e$e$a;

    invoke-direct {v10, p0}, Le/a/d/w/e$e$a;-><init>(Le/a/d/w/e$e;)V

    invoke-interface {v2, v7, v9, v10}, Le/a/d/x/r/o;->g(Lq3/a/i0;Ljava/lang/String;Ls1/z/b/a;)Le/a/d/x/r/h;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 10
    iput-object p1, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/d/w/e$e;->f:Ljava/lang/Object;

    iput v6, p0, Le/a/d/w/e$e;->g:I

    invoke-interface {v2, p0}, Le/a/d/x/r/h;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    move-object v11, v6

    move-object v6, p1

    move-object p1, v11

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    return-object v0

    .line 11
    :cond_8
    invoke-interface {v2}, Le/a/d/x/r/h;->a()Lq3/a/x2/i1;

    move-result-object p1

    .line 12
    new-instance v7, Le/a/d/w/e$e$b;

    invoke-direct {v7, p1, v6}, Le/a/d/w/e$e$b;-><init>(Lq3/a/x2/f;Ljava/lang/String;)V

    .line 13
    invoke-static {v7}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 14
    new-instance v7, Le/a/d/w/e$e$c;

    invoke-direct {v7, v8}, Le/a/d/w/e$e$c;-><init>(Ls1/w/d;)V

    iput-object v6, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/d/w/e$e;->f:Ljava/lang/Object;

    iput v5, p0, Le/a/d/w/e$e;->g:I

    invoke-static {p1, v7, p0}, Ls1/a/a/a/v0/f/d;->N0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v5, v6

    .line 15
    :goto_2
    new-instance p1, Le/a/d/x/r/j;

    .line 16
    sget-object v6, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Busy:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    .line 17
    invoke-direct {p1, v5, v6}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object v2, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    iput-object v8, p0, Le/a/d/w/e$e;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/d/w/e$e;->g:I

    invoke-interface {v2, p1, p0}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 20
    :cond_a
    :goto_3
    iput-object v8, p0, Le/a/d/w/e$e;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/w/e$e;->g:I

    invoke-interface {v2, p0}, Le/a/d/x/r/h;->m(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_c
    return-object v0
.end method
