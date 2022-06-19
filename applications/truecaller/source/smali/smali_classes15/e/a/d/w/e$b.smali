.class public final Le/a/d/w/e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/w/e;->c(Lcom/truecaller/voip/debug/VoipAssistantPushNotification;)Lq3/a/n0;
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
        "Le/a/d/a/n;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.invitation.InvitationManagerImpl$initiateAssistantDebugInvitation$1"
    f = "InvitationManager.kt"
    l = {
        0xe3,
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/w/e;

.field public final synthetic j:Lcom/truecaller/voip/debug/VoipAssistantPushNotification;


# direct methods
.method public constructor <init>(Le/a/d/w/e;Lcom/truecaller/voip/debug/VoipAssistantPushNotification;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    iput-object p2, p0, Le/a/d/w/e$b;->j:Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

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

    new-instance p1, Le/a/d/w/e$b;

    iget-object v0, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    iget-object v1, p0, Le/a/d/w/e$b;->j:Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/w/e$b;-><init>(Le/a/d/w/e;Lcom/truecaller/voip/debug/VoipAssistantPushNotification;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/w/e$b;

    iget-object v0, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    iget-object v1, p0, Le/a/d/w/e$b;->j:Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/w/e$b;-><init>(Le/a/d/w/e;Lcom/truecaller/voip/debug/VoipAssistantPushNotification;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/w/e$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/w/e$b;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/w/e$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/a/p;

    iget-object v1, p0, Le/a/d/w/e$b;->f:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/d0;

    iget-object v2, p0, Le/a/d/w/e$b;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/w/e$b;->f:Ljava/lang/Object;

    check-cast v1, Lq3/a/b3/c;

    iget-object v5, p0, Le/a/d/w/e$b;->e:Ljava/lang/Object;

    check-cast v5, Le/a/d/c0/r;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    .line 5
    iget-object v5, p1, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 6
    iget-object v1, v5, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 7
    iput-object v5, p0, Le/a/d/w/e$b;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/w/e$b;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/w/e$b;->h:I

    invoke-interface {v1, v4, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p1

    .line 9
    iget-object v5, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    .line 10
    iget-object v5, v5, Le/a/d/w/e;->b:Le/a/d/w/e$a;

    .line 11
    invoke-virtual {v5}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/w/g;

    sget-object v6, Le/a/d/w/g$b;->a:Le/a/d/w/g$b;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_4

    .line 12
    invoke-interface {v1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v4

    .line 13
    :cond_4
    :try_start_2
    new-instance v3, Le/a/d/a/p;

    iget-object v5, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    .line 14
    iget-object v5, v5, Le/a/d/w/e;->g:Lo3/a;

    .line 15
    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "callUserResolver.get()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Le/a/d/c0/e;

    invoke-direct {v3, v5}, Le/a/d/a/p;-><init>(Le/a/d/c0/e;)V

    .line 16
    iget-object v5, p0, Le/a/d/w/e$b;->j:Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    .line 17
    iget-object v5, v5, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v5}, Le/a/d/a/p;->w(Ljava/lang/String;)I

    move-result v5

    .line 19
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    invoke-static {v6}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v6}, Le/a/d/a/p;->u(Ljava/util/Set;)V

    .line 21
    iput-object v1, p0, Le/a/d/w/e$b;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/w/e$b;->f:Ljava/lang/Object;

    iput-object v3, p0, Le/a/d/w/e$b;->g:Ljava/lang/Object;

    iput v2, p0, Le/a/d/w/e$b;->h:I

    invoke-virtual {v3, v5, p0}, Le/a/d/a/p;->y(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v2, v1

    move-object v0, v3

    move-object v1, p1

    .line 22
    :goto_1
    :try_start_3
    new-instance p1, Le/a/d/a/n;

    .line 23
    iget-object v3, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    .line 24
    iget-object v7, v3, Le/a/d/w/e;->e:Le/a/d/v/d;

    .line 25
    iget-object v3, v3, Le/a/d/w/e;->h:Lo3/a;

    .line 26
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "idProvider.get()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v3

    check-cast v8, Le/a/d/c0/y0;

    .line 27
    iget-object v3, p0, Le/a/d/w/e$b;->j:Lcom/truecaller/voip/debug/VoipAssistantPushNotification;

    .line 28
    iget-object v9, v3, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;->b:Ljava/lang/String;

    .line 29
    iget-object v10, v3, Lcom/truecaller/voip/debug/VoipAssistantPushNotification;->c:Ljava/lang/String;

    move-object v5, p1

    move-object v6, v0

    .line 30
    invoke-direct/range {v5 .. v10}, Le/a/d/a/n;-><init>(Le/a/d/a/p;Le/a/d/v/d;Le/a/d/c0/y0;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Le/a/d/w/e$b;->i:Le/a/d/w/e;

    invoke-static {v3, p1}, Le/a/d/w/e;->h(Le/a/d/w/e;Le/a/d/w/b;)Lq3/a/p1;

    .line 32
    new-instance v3, Le/a/d/w/g$a;

    invoke-direct {v3, p1, v0}, Le/a/d/w/g$a;-><init>(Le/a/d/w/b;Le/a/d/c0/z1/d;)V

    invoke-interface {v1, v3}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    invoke-interface {v2, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    invoke-interface {v1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
