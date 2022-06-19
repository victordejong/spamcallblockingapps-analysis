.class public final Le/a/r/x/u;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/x/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/x/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/r/x/t;",
        ">;",
        "Le/a/r/x/s;"
    }
.end annotation


# instance fields
.field public d:Le/a/r/x/u$a;

.field public e:Z

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Le/a/b0/n/g;

.field public final i:Le/a/b0/o/a;

.field public final j:Le/a/r/x/y/a;

.field public final k:Le/a/r/q/c;

.field public final l:Le/a/b0/n/b;

.field public final m:Le/a/r/c/o;

.field public final n:Le/a/r/g$a;

.field public final o:Le/a/p5/a0;

.field public final p:Le/a/r/x/k;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b0/n/g;Le/a/b0/o/a;Le/a/r/x/y/a;Le/a/r/q/c;Le/a/b0/n/b;Le/a/r/c/o;Le/a/r/g$a;Le/a/p5/a0;Le/a/r/x/k;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorTracker"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returningUserHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessContactsHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsHelper"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/r/x/u;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/r/x/u;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/r/x/u;->h:Le/a/b0/n/g;

    iput-object p4, p0, Le/a/r/x/u;->i:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/r/x/u;->j:Le/a/r/x/y/a;

    iput-object p6, p0, Le/a/r/x/u;->k:Le/a/r/q/c;

    iput-object p7, p0, Le/a/r/x/u;->l:Le/a/b0/n/b;

    iput-object p8, p0, Le/a/r/x/u;->m:Le/a/r/c/o;

    iput-object p9, p0, Le/a/r/x/u;->n:Le/a/r/g$a;

    iput-object p10, p0, Le/a/r/x/u;->o:Le/a/p5/a0;

    iput-object p11, p0, Le/a/r/x/u;->p:Le/a/r/x/k;

    .line 2
    new-instance p1, Le/a/r/x/u$a$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/a/r/x/u$a$c;-><init>(Z)V

    iput-object p1, p0, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/r/x/u;->i:Le/a/b0/o/a;

    const-string v2, "profileFirstName"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/r/x/u;->i:Le/a/b0/o/a;

    const-string v3, "profileLastName"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/r/x/u;->i:Le/a/b0/o/a;

    const-string v4, "profileEmail"

    invoke-interface {v3, v4}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v0, v1, v2, v3}, Le/a/r/x/t;->ig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/r/x/u;->i:Le/a/b0/o/a;

    const-string v1, "profileAvatar"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "it"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    new-instance v1, Le/a/r/x/u$a$b;

    invoke-direct {v1, v0, v3}, Le/a/r/x/u$a$b;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Le/a/r/x/t;->u(Landroid/net/Uri;)V

    :cond_4
    return-void
.end method

.method public final Jj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r/x/t;->Zo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/r/x/t;->cs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final Kj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/r/x/t;->Ma()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/r/x/t;->Bw()V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/r/x/t;->e0()V

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/x/t;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/r/x/t;->a0()V

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/r/x/u;->j:Le/a/r/x/y/a;

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v1

    :goto_1
    xor-int/2addr v1, v2

    .line 6
    iget-object v0, v0, Le/a/r/x/y/a;->a:Le/a/q2/a;

    new-instance v2, Le/a/r/x/y/c;

    invoke-direct {v2, v1}, Le/a/r/x/y/c;-><init>(Z)V

    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 7
    iget-object v0, p0, Le/a/r/x/u;->j:Le/a/r/x/y/a;

    const-string v1, "ManualEntry"

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Le/a/r/x/y/a;->a:Le/a/q2/a;

    new-instance v2, Le/a/r/x/y/b;

    invoke-direct {v2, v1}, Le/a/r/x/y/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    new-instance v0, Le/a/r/x/u$b;

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v6 .. v11}, Le/a/r/x/u$b;-><init>(Le/a/r/x/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/r/x/t;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/r/x/u;->Ij()V

    .line 5
    new-instance v4, Le/a/r/x/w;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/r/x/w;-><init>(Le/a/r/x/u;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    const/16 v0, 0x12c

    .line 6
    invoke-interface {p1, v0}, Le/a/r/x/t;->Bc(I)V

    return-void
.end method
