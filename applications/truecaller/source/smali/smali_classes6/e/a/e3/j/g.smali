.class public final Le/a/e3/j/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/j/f;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Le/a/e3/k/b;

.field public final e:Le/a/p5/c0;

.field public final f:Landroid/content/Context;

.field public final g:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/e3/k/e;

.field public final i:Le/a/e3/k/i;

.field public final j:Le/a/e3/k/d;

.field public final k:Le/a/o/c;

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/e3/k/c;

.field public final n:Le/a/e3/k/p;

.field public final o:Le/a/u3/g;

.field public final p:Ls1/w/f;

.field public final q:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/e3/k/b;Le/a/p5/c0;Landroid/content/Context;Le/a/r2/f;Le/a/e3/k/e;Le/a/e3/k/i;Le/a/e3/k/d;Le/a/o/c;Lo3/a;Le/a/e3/k/c;Le/a/e3/k/p;Le/a/u3/g;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p12    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .param p13    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .param p14    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e3/k/b;",
            "Le/a/p5/c0;",
            "Landroid/content/Context;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/e3/k/e;",
            "Le/a/e3/k/i;",
            "Le/a/e3/k/d;",
            "Le/a/o/c;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Le/a/e3/k/c;",
            "Le/a/e3/k/p;",
            "Le/a/u3/g;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analyticsNotificationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertNotificationHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertSimSupport"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertAvatarUtils"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callSilenceHelper"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuCoroutine"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/j/g;->d:Le/a/e3/k/b;

    iput-object p2, p0, Le/a/e3/j/g;->e:Le/a/p5/c0;

    iput-object p3, p0, Le/a/e3/j/g;->f:Landroid/content/Context;

    iput-object p4, p0, Le/a/e3/j/g;->g:Le/a/r2/f;

    iput-object p5, p0, Le/a/e3/j/g;->h:Le/a/e3/k/e;

    iput-object p6, p0, Le/a/e3/j/g;->i:Le/a/e3/k/i;

    iput-object p7, p0, Le/a/e3/j/g;->j:Le/a/e3/k/d;

    iput-object p8, p0, Le/a/e3/j/g;->k:Le/a/o/c;

    iput-object p9, p0, Le/a/e3/j/g;->l:Lo3/a;

    iput-object p10, p0, Le/a/e3/j/g;->m:Le/a/e3/k/c;

    iput-object p11, p0, Le/a/e3/j/g;->n:Le/a/e3/k/p;

    iput-object p12, p0, Le/a/e3/j/g;->o:Le/a/u3/g;

    iput-object p13, p0, Le/a/e3/j/g;->p:Ls1/w/f;

    iput-object p14, p0, Le/a/e3/j/g;->q:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/e3/j/g$c;

    invoke-direct {p1, p0}, Le/a/e3/j/g$c;-><init>(Le/a/e3/j/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e3/j/g;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/e3/j/g$f;

    invoke-direct {p1, p0}, Le/a/e3/j/g$f;-><init>(Le/a/e3/j/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e3/j/g;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/e3/j/g$a;

    invoke-direct {p1, p0}, Le/a/e3/j/g$a;-><init>(Le/a/e3/j/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/e3/j/g;->c:Ls1/g;

    return-void
.end method

.method public static final c(Le/a/e3/j/g;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/e3/j/g;->c:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/e3/j/g;->q:Ls1/w/f;

    new-instance v4, Le/a/e3/j/g$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/e3/j/g$b;-><init>(Le/a/e3/j/g;Ljava/lang/String;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)V
    .locals 9

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizedNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/e3/j/g;->p:Ls1/w/f;

    new-instance v0, Le/a/e3/j/g$e;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Le/a/e3/j/g$e;-><init>(Le/a/e3/j/g;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ljava/lang/String;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final d(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/e3/j/g$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/e3/j/g$d;

    iget v1, v0, Le/a/e3/j/g$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e3/j/g$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e3/j/g$d;

    invoke-direct {v0, p0, p3}, Le/a/e3/j/g$d;-><init>(Le/a/e3/j/g;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/e3/j/g$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e3/j/g$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Le/a/e3/j/g$d;->g:I

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/e3/j/g;->k:Le/a/o/c;

    invoke-interface {p3}, Le/a/o/c;->isSupported()Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v3

    :goto_3
    xor-int/2addr v4, v3

    and-int/2addr p3, v4

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getNumber()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v2

    :goto_4
    const/4 v4, 0x2

    invoke-static {p1, p2, v5, v4}, Ls1/f0/r;->o(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    and-int/2addr p1, p3

    iput p1, v0, Le/a/e3/j/g$d;->g:I

    iput v3, v0, Le/a/e3/j/g$d;->e:I

    .line 7
    iget-object p3, p0, Le/a/e3/j/g;->p:Ls1/w/f;

    new-instance v4, Le/a/e3/j/h;

    invoke-direct {v4, p0, p2, v2}, Le/a/e3/j/h;-><init>(Le/a/e3/j/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    .line 8
    :cond_7
    :goto_5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v3

    and-int/2addr p1, p2

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/j/g;->q:Ls1/w/f;

    return-object v0
.end method
