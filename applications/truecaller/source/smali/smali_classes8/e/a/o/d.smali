.class public final Le/a/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/c;


# instance fields
.field public final a:Ls1/a/j;

.field public final b:Ls1/w/f;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/v;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/a/h/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/p/e/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/p/e/g/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/p/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/o;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/o/b/d;

.field public final l:Le/a/o/b/l0;

.field public final m:Le/a/o/b/f0;

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/t;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Le/a/o/b/z;

.field public final p:Le/a/o/b/d;

.field public final q:Le/a/o/b/i0;


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o/b/d;Le/a/o/b/l0;Le/a/o/b/f0;Lo3/a;Le/a/o/b/z;Le/a/o/b/d;Le/a/o/b/i0;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/o/b/f;",
            ">;",
            "Lo3/a<",
            "Le/a/o/b/v;",
            ">;",
            "Lo3/a<",
            "Le/a/o/a/h/a;",
            ">;",
            "Lo3/a<",
            "Le/a/o/p/e/e;",
            ">;",
            "Lo3/a<",
            "Le/a/o/p/e/g/c;",
            ">;",
            "Lo3/a<",
            "Le/a/o/p/b/d;",
            ">;",
            "Lo3/a<",
            "Le/a/o/b/o;",
            ">;",
            "Lo3/a<",
            "Le/a/o/b/k;",
            ">;",
            "Le/a/o/b/d;",
            "Le/a/o/b/l0;",
            "Le/a/o/b/f0;",
            "Lo3/a<",
            "Le/a/o/b/t;",
            ">;",
            "Le/a/o/b/z;",
            "Le/a/o/b/d;",
            "Le/a/o/b/i0;",
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

    const-string v0, "asyncContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingCallContextRepository"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communityGuideline"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reasonRepository"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predefinedCallReasonRepository"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberRepository"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallPromoManager"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallAnalytics"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingMessageHandler"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midCallReasonManager"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentCallStateHolder"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingMidCallReasonNotificationManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "midCallReasonNotificationStateHolder"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/o/d;->b:Ls1/w/f;

    iput-object v2, v0, Le/a/o/d;->c:Lo3/a;

    iput-object v3, v0, Le/a/o/d;->d:Lo3/a;

    iput-object v4, v0, Le/a/o/d;->e:Lo3/a;

    iput-object v5, v0, Le/a/o/d;->f:Lo3/a;

    iput-object v6, v0, Le/a/o/d;->g:Lo3/a;

    iput-object v7, v0, Le/a/o/d;->h:Lo3/a;

    iput-object v8, v0, Le/a/o/d;->i:Lo3/a;

    iput-object v9, v0, Le/a/o/d;->j:Lo3/a;

    iput-object v10, v0, Le/a/o/d;->k:Le/a/o/b/d;

    iput-object v11, v0, Le/a/o/d;->l:Le/a/o/b/l0;

    iput-object v12, v0, Le/a/o/d;->m:Le/a/o/b/f0;

    iput-object v13, v0, Le/a/o/d;->n:Lo3/a;

    iput-object v14, v0, Le/a/o/d;->o:Le/a/o/b/z;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/o/d;->p:Le/a/o/b/d;

    iput-object v15, v0, Le/a/o/d;->q:Le/a/o/b/i0;

    .line 2
    new-instance v1, Le/a/o/e;

    invoke-direct {v1, v11}, Le/a/o/e;-><init>(Le/a/o/b/l0;)V

    iput-object v1, v0, Le/a/o/d;->a:Ls1/a/j;

    return-void
.end method


# virtual methods
.method public A(Lcom/truecaller/contextcall/utils/SecondCallContext;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/utils/SecondCallContext;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->m:Le/a/o/b/f0;

    check-cast v0, Le/a/o/b/g0;

    invoke-virtual {v0, p1, p2}, Le/a/o/b/g0;->d(Lcom/truecaller/contextcall/utils/SecondCallContext;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;Lcom/truecaller/contextcall/utils/SecondCallContext$Context;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/contextcall/utils/SecondCallContext$Context;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->m:Le/a/o/b/f0;

    check-cast v0, Le/a/o/b/g0;

    invoke-virtual {v0, p1, p2, p3}, Le/a/o/b/g0;->c(Ljava/lang/String;Lcom/truecaller/contextcall/utils/SecondCallContext$Context;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public C(Lcom/truecaller/contextcall/utils/ContextCallState;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/utils/ContextCallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/t;

    invoke-interface {v0, p1, p2}, Le/a/o/b/t;->a(Lcom/truecaller/contextcall/utils/ContextCallState;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/o/b/v;

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v9}, Le/a/m0/a1$k;->q(Le/a/o/b/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/data/entity/FeatureType;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/p/e/e;

    invoke-interface {v0}, Le/a/o/p/e/e;->f()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public F(Le/a/o/b/h0;)V
    .locals 8

    const-string v0, "midCallReasonNotification"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/o/d;->o:Le/a/o/b/z;

    move-object v2, v1

    check-cast v2, Le/a/o/b/b0;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v5, Le/a/o/b/a0;

    const/4 v0, 0x0

    invoke-direct {v5, v2, p1, v0}, Le/a/o/b/a0;-><init>(Le/a/o/b/b0;Le/a/o/b/h0;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public G()Lcom/truecaller/contextcall/utils/ContextCallPromoType;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/d;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/k;

    invoke-virtual {p0}, Le/a/o/d;->isSupported()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/o/b/k;->e(Z)Lcom/truecaller/contextcall/utils/ContextCallPromoType;

    move-result-object v0

    return-object v0
.end method

.method public H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/v;

    invoke-interface {v0, p1, p2}, Le/a/o/b/v;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/d;->m:Le/a/o/b/f0;

    check-cast p1, Le/a/o/b/g0;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Le/a/o/b/g0;->f(Z)V

    return-void
.end method

.method public J()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/t;

    invoke-interface {v0}, Le/a/o/b/t;->b()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/k;

    invoke-interface {v0}, Le/a/o/b/k;->c()V

    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/d;->k:Le/a/o/b/d;

    invoke-interface {v0, p1, p2}, Le/a/o/b/d;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/o/b/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0, p1}, Le/a/o/b/f;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "messageId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/d;->p:Le/a/o/b/d;

    invoke-interface {v0, p1, p2}, Le/a/o/b/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0}, Le/a/o/b/f;->getVersion()I

    move-result v0

    return v0
.end method

.method public h(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "contextCallMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o/d;->p:Le/a/o/b/d;

    invoke-interface {v0, p1, p2}, Le/a/o/b/d;->h(Lcom/truecaller/data/entity/CallContextMessage;Ljava/lang/String;)V

    return-void
.end method

.method public i()Lq3/a/x2/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/data/entity/CallContextMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/o/d;->a:Ls1/a/j;

    invoke-interface {v0}, Ls1/a/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/x2/a1;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0}, Le/a/o/b/f;->isSupported()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/k;

    invoke-interface {v0}, Le/a/o/b/k;->j()V

    return-void
.end method

.method public k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/CallContextMessage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->l:Le/a/o/b/l0;

    invoke-interface {v0, p1, p2}, Le/a/o/b/l0;->k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0}, Le/a/o/b/f;->l()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/k;

    invoke-interface {v0}, Le/a/o/b/k;->m()V

    return-void
.end method

.method public n(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0, p1, p2}, Le/a/o/b/f;->n(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0, p1}, Le/a/o/b/f;->d(Z)V

    return-void
.end method

.method public p(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/o/b/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0, p1, p2}, Le/a/o/b/f;->p(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0}, Le/a/o/b/f;->q()Z

    move-result v0

    return v0
.end method

.method public r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contextCallAvailability"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;

    .line 2
    iget-object v1, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o/b/f;

    invoke-interface {v1, v0}, Le/a/o/b/f;->a(Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->m:Le/a/o/b/f0;

    check-cast v0, Le/a/o/b/g0;

    invoke-virtual {v0}, Le/a/o/b/g0;->b()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/a/h/a;

    invoke-interface {v0}, Le/a/o/a/h/a;->a()V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/d;->q:Le/a/o/b/i0;

    invoke-interface {v0}, Le/a/o/b/i0;->reset()V

    return-void
.end method

.method public v()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/o/d;->b:Ls1/w/f;

    new-instance v3, Le/a/o/d$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/o/d$a;-><init>(Le/a/o/d;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public w()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->q:Le/a/o/b/i0;

    invoke-interface {v0}, Le/a/o/b/i0;->a()Lq3/a/x2/a1;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/f;

    invoke-interface {v0, p1, p2}, Le/a/o/b/f;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/b/v;

    invoke-interface {v0, p1, p2}, Le/a/o/b/v;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public z(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/d;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/p/b/d;

    invoke-interface {v0, p1}, Le/a/o/p/b/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
