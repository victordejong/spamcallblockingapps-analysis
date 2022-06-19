.class public final Le/a/s/q/g/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/q/g/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/q/g/h;",
        ">;",
        "Le/a/s/q/g/g;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public final h:Ls1/w/f;

.field public final i:Le/a/s/s/i;

.field public final j:Le/a/s/s/a;

.field public final k:Le/a/p5/j0;

.field public final l:Le/a/s/s/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/s/s/i;Le/a/s/s/a;Le/a/p5/j0;Le/a/s/s/c;)V
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

    const-string v0, "voiceRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAssistantSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/s/q/g/j;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/s/q/g/j;->i:Le/a/s/s/i;

    iput-object p3, p0, Le/a/s/q/g/j;->j:Le/a/s/s/a;

    iput-object p4, p0, Le/a/s/q/g/j;->k:Le/a/p5/j0;

    iput-object p5, p0, Le/a/s/q/g/j;->l:Le/a/s/s/c;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/s/q/g/j;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public E0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/q/g/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public E1(Lcom/truecaller/callhero_assistant/data/Voice;)V
    .locals 2

    const-string v0, "voice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/s/q/g/j;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/s/q/g/j;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/g/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/s/q/g/h;->H1()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/g/h;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/s/q/g/h;->T4(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/s/q/g/j;->e:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/g/h;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/s/q/g/h;->c0()V

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/q/g/h;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/s/q/g/h;->Qe(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/g/h;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/s/q/g/h;->mb(Z)V

    :cond_4
    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/s/q/g/j;->f:Z

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/g/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/s/q/g/h;->c0()V

    :cond_0
    return-void
.end method

.method public S7()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/s/q/g/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/s/q/g/h;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Le/a/s/q/g/h;->mb(Z)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    new-instance v6, Le/a/s/q/g/j$a;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Le/a/s/q/g/j$a;-><init>(Le/a/s/q/g/j;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method

.method public T0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/s/q/g/j;->g:Z

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/g/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/s/q/g/h;->c0()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/s/q/g/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/s/q/g/i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/s/q/g/i;-><init>(Le/a/s/q/g/j;Le/a/s/q/g/h;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public s0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/s/q/g/j;->f:Z

    return v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/s/q/g/j;->g:Z

    return v0
.end method

.method public x1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/s/q/g/j;->d:Ljava/util/List;

    return-object v0
.end method
