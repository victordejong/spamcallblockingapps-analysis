.class public final Le/a/x4/l/b;
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


# static fields
.field public static final synthetic l:[Ls1/a/l;


# instance fields
.field public d:Le/a/x4/l/a;

.field public e:Z

.field public f:Z

.field public final g:Ls1/b0/c;

.field public final h:Ls1/w/f;

.field public final i:Le/a/x4/g;

.field public final j:Le/a/x4/e;

.field public final k:Le/a/x4/l/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/x4/l/b;

    const-string v2, "loggedSearchWarning"

    const-string v3, "getLoggedSearchWarning()Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/x4/l/b;->l:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/e;Le/a/x4/l/c;)V
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

    const-string v0, "searchWarningsHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/x4/l/b;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/x4/l/b;->i:Le/a/x4/g;

    iput-object p3, p0, Le/a/x4/l/b;->j:Le/a/x4/e;

    iput-object p4, p0, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    .line 2
    new-instance p1, Le/a/x4/l/b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p0}, Le/a/x4/l/b$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/x4/l/b;)V

    .line 3
    iput-object p1, p0, Le/a/x4/l/b;->g:Ls1/b0/c;

    return-void
.end method

.method public static final synthetic Ij(Le/a/x4/l/b;)Le/a/x4/l/a;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/x4/l/b;->d:Le/a/x4/l/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "config"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final Jj(Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;Le/a/m5/e;)Le/a/m5/e;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-virtual {p1}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getForegroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/x4/l/c;->k(Ljava/lang/String;)I

    move-result v3

    .line 6
    iget-object v0, p0, Le/a/x4/l/b;->k:Le/a/x4/l/c;

    invoke-virtual {p1}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/x4/l/c;->k(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v8, p1

    .line 8
    iget v5, p2, Le/a/m5/e;->c:I

    iget v6, p2, Le/a/m5/e;->d:I

    iget v7, p2, Le/a/m5/e;->e:I

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Le/a/m5/e;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Le/a/m5/e;-><init>(IIIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    :catch_0
    :cond_1
    return-object p2
.end method

.method public final Kj(Le/a/x4/l/a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/x4/l/b;->d:Le/a/x4/l/a;

    return-void
.end method

.method public final Lj()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/x4/l/b$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/x4/l/b$b;-><init>(Le/a/x4/l/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Mj(Lcom/truecaller/data/entity/Contact;)Z
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
    invoke-virtual {p0}, Le/a/x4/l/b;->Lj()Lq3/a/p1;

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
    invoke-virtual {p0}, Le/a/x4/l/b;->Lj()Lq3/a/p1;

    return-void
.end method

.method public g4()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/x4/l/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Le/a/x4/l/b;->e:Z

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/m5/d;->setIsExpanded(Z)V

    :cond_0
    return-void
.end method
