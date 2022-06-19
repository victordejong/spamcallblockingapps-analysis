.class public final Le/a/d/v/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/v/k/j;
.implements Le/a/d/v/k/a0;
.implements Le/a/d/v/k/e;
.implements Le/a/d/v/k/a;
.implements Le/a/d/v/k/w0;
.implements Le/a/d/v/k/m;
.implements Le/a/d/v/k/d0;
.implements Le/a/d/v/k/i0;
.implements Le/a/d/v/k/p;
.implements Le/a/d/v/k/g;
.implements Le/a/d/v/k/v;
.implements Le/a/d/v/k/r;
.implements Le/a/d/v/b;


# instance fields
.field public final a:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/d/v/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Lcom/truecaller/voip/groupcall/call/CallDirection;

.field public final d:Le/a/d/c0/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "Le/a/d/c0/x1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/d/v/g;

.field public final f:Le/a/d/c0/z1/i;

.field public final synthetic g:Le/a/d/v/k/j;

.field public final synthetic h:Le/a/d/v/k/a0;

.field public final synthetic i:Le/a/d/v/k/e;

.field public final synthetic j:Le/a/d/v/k/a;

.field public final synthetic k:Le/a/d/v/k/w0;

.field public final synthetic l:Le/a/d/v/k/m;

.field public final synthetic m:Le/a/d/v/k/d0;

.field public final synthetic n:Le/a/d/v/k/i0;

.field public final synthetic o:Le/a/d/v/k/p;

.field public final synthetic p:Le/a/d/v/k/g;

.field public final synthetic q:Le/a/d/v/k/v;

.field public final synthetic r:Le/a/d/v/k/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Le/a/d/c0/r;Le/a/d/v/g;Le/a/d/c0/z1/i;Le/a/d/v/i;Le/a/d/v/k/j;Le/a/d/v/k/a0;Le/a/d/v/k/e;Le/a/d/v/k/a;Le/a/d/v/k/w0;Le/a/d/v/k/m;Le/a/d/v/k/d0;Le/a/d/v/k/i0;Le/a/d/v/k/p;Le/a/d/v/k/g;Le/a/d/v/k/v;Le/a/d/v/k/r;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/groupcall/call/CallDirection;",
            "Le/a/d/c0/r<",
            "Le/a/d/c0/x1/b;",
            ">;",
            "Le/a/d/v/g;",
            "Le/a/d/c0/z1/i;",
            "Le/a/d/v/i;",
            "Le/a/d/v/k/j;",
            "Le/a/d/v/k/a0;",
            "Le/a/d/v/k/e;",
            "Le/a/d/v/k/a;",
            "Le/a/d/v/k/w0;",
            "Le/a/d/v/k/m;",
            "Le/a/d/v/k/d0;",
            "Le/a/d/v/k/i0;",
            "Le/a/d/v/k/p;",
            "Le/a/d/v/k/g;",
            "Le/a/d/v/k/v;",
            "Le/a/d/v/k/r;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "channelId"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callDirection"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioState"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfo"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connect"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invite"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeAudioRoute"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeCallSetting"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provideConnectedTime"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deleteUserOnRemote"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logCallFinishedEvent"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logStateChangedEvent"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectPeerHistory"

    move-object/from16 v6, p16

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endWhenDeletedOnRemote"

    move-object/from16 v6, p17

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endWhenConnectionLost"

    move-object/from16 v5, p18

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v4, p16

    .line 2
    iput-object v7, v0, Le/a/d/v/c;->g:Le/a/d/v/k/j;

    .line 3
    iput-object v8, v0, Le/a/d/v/c;->h:Le/a/d/v/k/a0;

    .line 4
    iput-object v9, v0, Le/a/d/v/c;->i:Le/a/d/v/k/e;

    .line 5
    iput-object v10, v0, Le/a/d/v/c;->j:Le/a/d/v/k/a;

    .line 6
    iput-object v11, v0, Le/a/d/v/c;->k:Le/a/d/v/k/w0;

    .line 7
    iput-object v12, v0, Le/a/d/v/c;->l:Le/a/d/v/k/m;

    .line 8
    iput-object v13, v0, Le/a/d/v/c;->m:Le/a/d/v/k/d0;

    .line 9
    iput-object v14, v0, Le/a/d/v/c;->n:Le/a/d/v/k/i0;

    .line 10
    iput-object v15, v0, Le/a/d/v/c;->o:Le/a/d/v/k/p;

    .line 11
    iput-object v4, v0, Le/a/d/v/c;->p:Le/a/d/v/k/g;

    .line 12
    iput-object v6, v0, Le/a/d/v/c;->q:Le/a/d/v/k/v;

    .line 13
    iput-object v5, v0, Le/a/d/v/c;->r:Le/a/d/v/k/r;

    iput-object v1, v0, Le/a/d/v/c;->b:Ljava/lang/String;

    iput-object v2, v0, Le/a/d/v/c;->c:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput-object v3, v0, Le/a/d/v/c;->d:Le/a/d/c0/r;

    move-object/from16 v1, p4

    iput-object v1, v0, Le/a/d/v/c;->e:Le/a/d/v/g;

    move-object/from16 v1, p5

    iput-object v1, v0, Le/a/d/v/c;->f:Le/a/d/c0/z1/i;

    move-object/from16 v1, p6

    .line 14
    iput-object v1, v0, Le/a/d/v/c;->a:Lq3/a/x2/i1;

    return-void
.end method


# virtual methods
.method public Y()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->d:Le/a/d/c0/r;

    return-object v0
.end method

.method public a()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->e:Le/a/d/v/g;

    return-object v0
.end method

.method public b()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/v/c;->j:Le/a/d/v/k/a;

    invoke-interface {v0}, Le/a/d/v/k/a;->b()Lq3/a/x2/i1;

    move-result-object v0

    return-object v0
.end method

.method public c(Le/a/d/c0/x1/a;)Lq3/a/p1;
    .locals 1

    const-string v0, "route"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/c;->i:Le/a/d/v/k/e;

    invoke-interface {v0, p1}, Le/a/d/v/k/e;->c(Le/a/d/c0/x1/a;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public d()Le/a/d/c0/z1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->f:Le/a/d/c0/z1/i;

    return-object v0
.end method

.method public e(Z)Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/v/c;->j:Le/a/d/v/k/a;

    invoke-interface {v0, p1}, Le/a/d/v/k/a;->e(Z)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Le/a/d/w/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/v/c;->b:Ljava/lang/String;

    .line 3
    check-cast p1, Le/a/d/w/c;

    .line 4
    iget-object p1, p1, Le/a/d/w/c;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/v/c;->k:Le/a/d/v/k/w0;

    invoke-interface {v0}, Le/a/d/v/k/w0;->f()Lq3/a/x2/i1;

    move-result-object v0

    return-object v0
.end method

.method public g()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/v/c;->j:Le/a/d/v/k/a;

    invoke-interface {v0}, Le/a/d/v/k/a;->g()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/d/v/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->a:Lq3/a/x2/i1;

    return-object v0
.end method

.method public h(Z)Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/v/c;->j:Le/a/d/v/k/a;

    invoke-interface {v0, p1}, Le/a/d/v/k/a;->h(Z)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/d/v/k/z;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/v/c;->h:Le/a/d/v/k/a0;

    invoke-interface {v0}, Le/a/d/v/k/a0;->i()Lq3/a/x2/i1;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/util/Set;)Lq3/a/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    const-string v0, "inviteNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/c;->g:Le/a/d/v/k/j;

    invoke-interface {v0, p1}, Le/a/d/v/k/j;->j(Ljava/util/Set;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public k(Le/a/d/v/h$b;)Lq3/a/p1;
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/c;->o:Le/a/d/v/k/p;

    invoke-interface {v0, p1}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Le/a/d/v/c;->m:Le/a/d/v/k/d0;

    invoke-interface {v0, p1}, Le/a/d/v/k/d0;->l(Ljava/lang/Long;)V

    return-void
.end method

.method public m()Lcom/truecaller/voip/groupcall/call/CallDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/c;->c:Lcom/truecaller/voip/groupcall/call/CallDirection;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/v/c;->p:Le/a/d/v/k/g;

    invoke-interface {v0}, Le/a/d/v/k/g;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/util/Set;)Lq3/a/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/n0<",
            "Lcom/truecaller/voip/groupcall/action/InviteResult;",
            ">;"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/c;->h:Le/a/d/v/k/a0;

    invoke-interface {v0, p1}, Le/a/d/v/k/a0;->o(Ljava/util/Set;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public p(Le/a/d/v/h$b;)V
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/c;->n:Le/a/d/v/k/i0;

    invoke-interface {v0, p1}, Le/a/d/v/k/i0;->p(Le/a/d/v/h$b;)V

    return-void
.end method

.method public q()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/v/c;->i:Le/a/d/v/k/e;

    invoke-interface {v0}, Le/a/d/v/k/e;->q()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method
