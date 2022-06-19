.class public final Le/a/s/n/b/g/l;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/n/b/g/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/s/n/b/g/j;",
        ">;",
        "Le/a/s/n/b/g/i;"
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

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public final i:Ls1/w/f;

.field public final j:Le/a/s/s/i;

.field public final k:Le/a/s/s/a;

.field public final l:Le/a/p5/j0;

.field public final m:Le/a/s/s/c;


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

    iput-object p1, p0, Le/a/s/n/b/g/l;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/s/n/b/g/l;->j:Le/a/s/s/i;

    iput-object p3, p0, Le/a/s/n/b/g/l;->k:Le/a/s/s/a;

    iput-object p4, p0, Le/a/s/n/b/g/l;->l:Le/a/p5/j0;

    iput-object p5, p0, Le/a/s/n/b/g/l;->m:Le/a/s/s/c;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/s/n/b/g/l;->d:Ljava/util/List;

    .line 3
    invoke-interface {p5}, Le/a/s/s/c;->B0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/s/n/b/g/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public E0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public E1(Lcom/truecaller/callhero_assistant/data/Voice;)V
    .locals 7

    const-string v0, "voice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/s/n/b/g/l;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/b/g/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/s/n/b/g/j;->c0()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/b/g/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/s/n/b/g/j;->kn()V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    new-instance v4, Le/a/s/n/b/g/l$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/s/n/b/g/l$a;-><init>(Le/a/s/n/b/g/l;Lcom/truecaller/callhero_assistant/data/Voice;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/s/n/b/g/l;->g:Z

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/b/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/s/n/b/g/j;->c0()V

    :cond_0
    return-void
.end method

.method public Q7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public S3(Lcom/truecaller/callhero_assistant/data/Voice;)V
    .locals 2

    const-string v0, "voice"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s/n/b/g/l;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/s/n/b/g/l;->f:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/b/g/j;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/s/n/b/g/j;->H1()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/a/s/n/b/g/l;->f:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/s/n/b/g/j;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/callhero_assistant/data/Voice;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/s/n/b/g/j;->T4(Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/b/g/j;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/s/n/b/g/j;->c0()V

    :cond_2
    return-void
.end method

.method public T0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/s/n/b/g/l;->h:Z

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/n/b/g/j;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/s/n/b/g/j;->c0()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/s/n/b/g/j;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/s/n/b/g/k;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/s/n/b/g/k;-><init>(Le/a/s/n/b/g/l;Le/a/s/n/b/g/j;Ls1/w/d;)V

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
    iget-boolean v0, p0, Le/a/s/n/b/g/l;->g:Z

    return v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/s/n/b/g/l;->h:Z

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
    iget-object v0, p0, Le/a/s/n/b/g/l;->d:Ljava/util/List;

    return-object v0
.end method
