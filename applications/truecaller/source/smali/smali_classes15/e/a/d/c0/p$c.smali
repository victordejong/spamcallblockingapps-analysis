.class public final Le/a/d/c0/p$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p;->c(Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$playTone$2"
    f = "HapticFeedbackUtil.kt"
    l = {
        0xeb,
        0x6e,
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/p;

.field public final synthetic h:Lcom/truecaller/voip/util/VoipTone;


# direct methods
.method public constructor <init>(Le/a/d/c0/p;Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    iput-object p2, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

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

    new-instance p1, Le/a/d/c0/p$c;

    iget-object v0, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    iget-object v1, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/p$c;-><init>(Le/a/d/c0/p;Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/p$c;

    iget-object v0, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    iget-object v1, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/p$c;-><init>(Le/a/d/c0/p;Lcom/truecaller/voip/util/VoipTone;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/p$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c0/p$c;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Le/a/d/c0/p$c;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    iget-object v2, p0, Le/a/d/c0/p$c;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    .line 5
    iget-object v2, p1, Le/a/d/c0/p;->e:Lq3/a/b3/c;

    .line 6
    iput-object v2, p0, Le/a/d/c0/p$c;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/d/c0/p$c;->f:I

    invoke-interface {v2, v6, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 7
    :cond_4
    :goto_1
    :try_start_1
    iget-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    .line 8
    iget-object p1, p1, Le/a/d/c0/p;->c:Lcom/truecaller/voip/util/VoipTone;

    .line 9
    iget-object v5, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    if-ne p1, v5, :cond_6

    iget-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    .line 10
    iget-object p1, p1, Le/a/d/c0/p;->c:Lcom/truecaller/voip/util/VoipTone;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/voip/util/VoipTone;->getPlaysInLoop()Z

    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v6

    .line 13
    :goto_2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_6

    .line 14
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 15
    :cond_6
    :try_start_2
    iget-object p1, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    sget-object v5, Lcom/truecaller/voip/util/VoipTone;->NO_TONE:Lcom/truecaller/voip/util/VoipTone;

    if-ne p1, v5, :cond_7

    .line 16
    iget-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    sget-object v3, Le/a/d/c0/p$c$a;->b:Le/a/d/c0/p$c$a;

    iput-object v2, p0, Le/a/d/c0/p$c;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/d/c0/p$c;->f:I

    invoke-virtual {p1, v3, p0}, Le/a/d/c0/p;->h(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing tone: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    iget-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    new-instance v4, Le/a/d/c0/p$c$b;

    invoke-direct {v4, p0}, Le/a/d/c0/p$c$b;-><init>(Le/a/d/c0/p$c;)V

    iput-object v2, p0, Le/a/d/c0/p$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/c0/p$c;->f:I

    invoke-virtual {p1, v4, p0}, Le/a/d/c0/p;->h(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, v2

    .line 19
    :goto_3
    :try_start_3
    iget-object p1, p0, Le/a/d/c0/p$c;->g:Le/a/d/c0/p;

    iget-object v2, p0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    .line 20
    iput-object v2, p1, Le/a/d/c0/p;->c:Lcom/truecaller/voip/util/VoipTone;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    invoke-interface {v1, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :goto_4
    move-object v2, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    invoke-interface {v2, v6}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
