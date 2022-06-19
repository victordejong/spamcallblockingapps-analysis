.class public final Le/a/s/q/e/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/q/e/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/q/e/f;",
        ">;",
        "Le/a/s/q/e/e;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Carrier;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/truecaller/callhero_assistant/data/Carrier;

.field public f:Ljava/lang/String;

.field public final g:Ls1/w/f;

.field public final h:Le/a/s/q/e/a;

.field public final i:Le/a/p5/j0;

.field public final j:Le/a/s/s/a;

.field public final k:Le/a/s/s/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/s/q/e/a;Le/a/p5/j0;Le/a/s/s/a;Le/a/s/s/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "carrierRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAssistantSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/q/e/h;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/s/q/e/h;->h:Le/a/s/q/e/a;

    iput-object p3, p0, Le/a/s/q/e/h;->i:Le/a/p5/j0;

    iput-object p4, p0, Le/a/s/q/e/h;->j:Le/a/s/s/a;

    iput-object p5, p0, Le/a/s/q/e/h;->k:Le/a/s/s/c;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/s/q/e/h;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Wb()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/q/e/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/s/q/e/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/s/q/e/f;->mg(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/e/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/s/q/e/f;->T()V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/s/q/e/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/s/q/e/g;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/s/q/e/g;-><init>(Le/a/s/q/e/h;Le/a/s/q/e/f;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public l9(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/s/q/e/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/callhero_assistant/data/Carrier;

    .line 2
    iput-object p1, p0, Le/a/s/q/e/h;->e:Lcom/truecaller/callhero_assistant/data/Carrier;

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/s/q/e/f;->vz(Z)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    new-instance v5, Le/a/s/q/e/h$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Le/a/s/q/e/h$a;-><init>(Le/a/s/q/e/h;Lcom/truecaller/callhero_assistant/data/Carrier;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
