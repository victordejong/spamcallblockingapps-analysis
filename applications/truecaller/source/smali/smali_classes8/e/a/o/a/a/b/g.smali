.class public final Le/a/o/a/a/b/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/a/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/o/a/a/b/e;",
        ">;",
        "Le/a/o/a/a/b/d;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/o/f;

.field public final f:Le/a/o/b/b;

.field public final g:Le/a/o/p/e/g/c;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/f;Le/a/o/b/b;Le/a/o/p/e/g/c;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/o/f;",
            "Le/a/o/b/b;",
            "Le/a/o/p/e/g/c;",
            "Lo3/a<",
            "Le/a/o/b/d;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predefinedCallReasonRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/a/b/g;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/o/a/a/b/g;->e:Le/a/o/f;

    iput-object p3, p0, Le/a/o/a/a/b/g;->f:Le/a/o/b/b;

    iput-object p4, p0, Le/a/o/a/a/b/g;->g:Le/a/o/p/e/g/c;

    iput-object p5, p0, Le/a/o/a/a/b/g;->h:Lo3/a;

    iput-object p6, p0, Le/a/o/a/a/b/g;->i:Lo3/a;

    return-void
.end method


# virtual methods
.method public W()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/a/b/e;->R7()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/b/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/o/a/a/b/e;->uv()V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/o/a/a/b/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const-string p1, "OnDemandReasonPicker"

    const-string v0, "viewId"

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, p1, v1, v1}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/o/a/a/b/g;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "analytics.get()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 6
    new-instance v5, Le/a/o/a/a/b/f;

    invoke-direct {v5, p0, v1}, Le/a/o/a/a/b/f;-><init>(Le/a/o/a/a/b/g;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c1(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/b/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/o/a/a/b/e;->uv()V

    :cond_0
    return-void
.end method

.method public oh()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/o/a/a/b/e;->s()V

    :cond_0
    return-void
.end method

.method public p1(Le/a/o/n/a;)V
    .locals 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/a/b/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/o/a/a/b/e;->r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3
    iget-object v1, p0, Le/a/o/a/a/b/g;->f:Le/a/o/b/b;

    const/4 v2, 0x0

    .line 4
    iget-object v4, p1, Le/a/o/n/a;->c:Ljava/lang/String;

    .line 5
    sget-object v5, Lcom/truecaller/data/entity/FeatureType;->ON_DEMAND:Lcom/truecaller/data/entity/FeatureType;

    .line 6
    new-instance v6, Lcom/truecaller/data/entity/MessageType$Preset;

    .line 7
    iget v7, p1, Le/a/o/n/a;->a:I

    .line 8
    invoke-direct {v6, v7}, Lcom/truecaller/data/entity/MessageType$Preset;-><init>(I)V

    .line 9
    iget-object v7, v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 10
    invoke-static/range {v1 .. v9}, Le/a/m0/a1$k;->r(Le/a/o/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 11
    sget-object v1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;

    invoke-direct {v2, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Set;-><init>(Lcom/truecaller/data/entity/CallContextMessage;)V

    move-object v1, v2

    .line 13
    :goto_0
    iget-object v2, p0, Le/a/o/a/a/b/g;->h:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/o/b/d;

    .line 14
    iget p1, p1, Le/a/o/n/a;->a:I

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v3, Ls1/k;

    const-string v4, "ContextId"

    invoke-direct {v3, v4, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    const-string v3, "OnDemandReasonPicked"

    invoke-interface {v2, v3, p1}, Le/a/o/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    new-instance p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    invoke-direct {p1, v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;-><init>(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 19
    invoke-virtual {p1, v1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;

    .line 20
    invoke-virtual {p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;->a()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    move-result-object p1

    .line 21
    iget-object v0, p0, Le/a/o/a/a/b/g;->e:Le/a/o/f;

    check-cast v0, Le/a/o/h;

    invoke-virtual {v0, p1}, Le/a/o/h;->a(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    .line 22
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/a/b/e;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/o/a/a/b/e;->s()V

    :cond_1
    return-void
.end method
