.class public final Le/a/b/j/b;
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
.field public static final synthetic n:[Ls1/a/l;


# instance fields
.field public d:Le/a/b/j/a;

.field public e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

.field public f:Z

.field public final g:I

.field public final h:Ls1/b0/c;

.field public final i:Ls1/w/f;

.field public final j:Le/a/x4/g;

.field public final k:Le/a/x4/a;

.field public final l:Le/a/b/j/c;

.field public final m:Le/a/u3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/b/j/b;

    const-string v2, "loggedCallReason"

    const-string v3, "getLoggedCallReason()Ljava/lang/String;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/b/j/b;->n:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/a;Le/a/b/j/c;Le/a/u3/g;)V
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

    const-string v0, "featureRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/j/b;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/b/j/b;->j:Le/a/x4/g;

    iput-object p3, p0, Le/a/b/j/b;->k:Le/a/x4/a;

    iput-object p4, p0, Le/a/b/j/b;->l:Le/a/b/j/c;

    iput-object p5, p0, Le/a/b/j/b;->m:Le/a/u3/g;

    .line 2
    sget-object p1, Lcom/truecaller/bizmon/callReason/BusinessContactType;->UNKNOWN:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    iput-object p1, p0, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    const/16 p1, 0x50

    .line 3
    iput p1, p0, Le/a/b/j/b;->g:I

    .line 4
    new-instance p1, Le/a/b/j/b$a;

    const-string p2, ""

    invoke-direct {p1, p2, p2, p0}, Le/a/b/j/b$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/b/j/b;)V

    .line 5
    iput-object p1, p0, Le/a/b/j/b;->h:Ls1/b0/c;

    return-void
.end method

.method public static final synthetic Ij(Le/a/b/j/b;)Le/a/b/j/a;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/b/j/b;->d:Le/a/b/j/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "config"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final Jj(Le/a/b/j/a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/j/b;->d:Le/a/b/j/a;

    .line 2
    iget-object v0, p1, Le/a/b/j/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/truecaller/bizmon/callReason/BusinessContactType;->VERIFIED:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    iput-object p1, p0, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Le/a/b/j/a;->b:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/truecaller/bizmon/callReason/BusinessContactType;->PRIORITY:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    iput-object p1, p0, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    :cond_1
    :goto_0
    return-void
.end method

.method public final Kj()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/b/j/b$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/b/j/b$b;-><init>(Le/a/b/j/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public final Lj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/j/b;->e:Lcom/truecaller/bizmon/callReason/BusinessContactType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v0}, Le/a/b/j/c;->d()Le/a/m5/e;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v0}, Le/a/b/j/c;->e()Le/a/m5/e;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/b/j/b;->l:Le/a/b/j/c;

    invoke-interface {v0}, Le/a/b/j/c;->f()Le/a/m5/e;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Le/a/m5/d;->P(Le/a/m5/e;)V

    :cond_2
    return-void
.end method

.method public V4()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/b/j/b;->Kj()Lq3/a/p1;

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
    invoke-virtual {p0}, Le/a/b/j/b;->Kj()Lq3/a/p1;

    return-void
.end method

.method public g4()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/b/j/b;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Le/a/b/j/b;->f:Z

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/m5/d;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/m5/d;->setIsExpanded(Z)V

    :cond_0
    return-void
.end method
