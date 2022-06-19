.class public final Le/a/o/a/j/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/m5/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/m5/d;",
        ">;",
        "Le/a/m5/c;"
    }
.end annotation


# instance fields
.field public d:Le/a/o/a/j/a;

.field public e:Z

.field public final f:Z

.field public final g:I

.field public h:Z

.field public final i:Ls1/w/f;

.field public final j:Le/a/o/c;

.field public final k:Le/a/o/a/j/c;

.field public final l:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o/c;Le/a/o/a/j/c;Le/a/p5/c0;)V
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

    const-string v0, "contextCall"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/j/b;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/o/a/j/b;->j:Le/a/o/c;

    iput-object p3, p0, Le/a/o/a/j/b;->k:Le/a/o/a/j/c;

    iput-object p4, p0, Le/a/o/a/j/b;->l:Le/a/p5/c0;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/o/a/j/b;->e:Z

    .line 3
    iput-boolean p1, p0, Le/a/o/a/j/b;->f:Z

    const/16 p1, 0x50

    .line 4
    iput p1, p0, Le/a/o/a/j/b;->g:I

    return-void
.end method

.method public static final synthetic Ij(Le/a/o/a/j/b;)Le/a/o/a/j/a;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/o/a/j/b;->d:Le/a/o/a/j/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "config"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final Jj(Le/a/o/a/j/a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/o/a/j/b;->d:Le/a/o/a/j/a;

    return-void
.end method

.method public final Kj()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/o/a/j/b$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/o/a/j/b$a;-><init>(Le/a/o/a/j/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Lj(Lcom/truecaller/data/entity/Contact;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public V4()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/o/a/j/b;->Kj()Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/m5/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/o/a/j/b;->Kj()Lq3/a/p1;

    return-void
.end method

.method public g4()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/o/a/j/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Le/a/o/a/j/b;->e:Z

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/m5/d;->setIsExpanded(Z)V

    :cond_0
    return-void
.end method
