.class public final Le/a/l/g/o;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/l/g/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/l/g/m;",
        ">;",
        "Le/a/l/g/k;"
    }
.end annotation


# instance fields
.field public d:Le/a/l/g/l;

.field public e:Le/a/l/g/b;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Le/a/p5/c0;

.field public final j:Le/a/l/g/d;

.field public final k:Le/a/l/g/u;

.field public final l:Le/a/l/c2;

.field public final m:Le/a/l/p2/e0;

.field public final n:Z

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/l/g/d;Le/a/l/g/u;Le/a/l/c2;Le/a/l/p2/e0;ZLjava/lang/String;Ljava/lang/String;Ls1/w/f;)V
    .locals 1
    .param p6    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "GoldGiftDialogModule.skipIntro"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "GoldGiftDialogModule.senderName"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "GoldGiftDialogModule.senderNumber"
        .end annotation
    .end param
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactReader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumExpireDateFormatter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p9}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/l/g/o;->i:Le/a/p5/c0;

    iput-object p2, p0, Le/a/l/g/o;->j:Le/a/l/g/d;

    iput-object p3, p0, Le/a/l/g/o;->k:Le/a/l/g/u;

    iput-object p4, p0, Le/a/l/g/o;->l:Le/a/l/c2;

    iput-object p5, p0, Le/a/l/g/o;->m:Le/a/l/p2/e0;

    iput-boolean p6, p0, Le/a/l/g/o;->n:Z

    iput-object p7, p0, Le/a/l/g/o;->o:Ljava/lang/String;

    iput-object p8, p0, Le/a/l/g/o;->p:Ljava/lang/String;

    iput-object p9, p0, Le/a/l/g/o;->q:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/l/g/o$c;

    invoke-direct {p1, p0}, Le/a/l/g/o$c;-><init>(Le/a/l/g/o;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/g/o;->f:Ls1/g;

    .line 3
    new-instance p1, Le/a/l/g/o$a;

    invoke-direct {p1, p0}, Le/a/l/g/o$a;-><init>(Le/a/l/g/o;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/g/o;->g:Ls1/g;

    .line 4
    new-instance p1, Le/a/l/g/o$b;

    invoke-direct {p1, p0}, Le/a/l/g/o$b;-><init>(Le/a/l/g/o;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/g/o;->h:Ls1/g;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/g/m;->dismiss()V

    :cond_0
    return-void
.end method

.method public final Jj()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/l/g/o;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/g/o;->d:Le/a/l/g/l;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/l/g/o;->Ij()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/l/g/m;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/l/g/o;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/l/g/o;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    new-instance p1, Le/a/l/g/l$c;

    .line 6
    iget-object v1, p0, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v2, 0x7f1202be

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026edSenderInfo, senderName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/a/l/g/o;->i:Le/a/p5/c0;

    const v2, 0x7f1202ba

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Le/a/l/g/o;->m:Le/a/l/p2/e0;

    .line 8
    iget-object v6, v4, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v6}, Le/a/l/p2/v0;->R1()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v6}, Le/a/l/p2/v0;->G1()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Le/a/l/p2/e0;->b(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 9
    :cond_0
    iget-object v6, v4, Le/a/l/p2/e0;->c:Le/a/l/p2/v0;

    invoke-interface {v6}, Le/a/l/p2/v0;->w0()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Le/a/l/p2/e0;->b(J)Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v3, v5

    .line 10
    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026Formatter.simpleFormat())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Le/a/l/g/o;->h:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 12
    invoke-direct {p1, v0, v1, v2}, Le/a/l/g/l$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 13
    iput-object p1, p0, Le/a/l/g/o;->d:Le/a/l/g/l;

    .line 14
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g/m;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/l/g/m;->du(Le/a/l/g/l;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-boolean v0, p0, Le/a/l/g/o;->n:Z

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {p1}, Le/a/l/g/m;->q1()V

    goto :goto_1

    .line 17
    :cond_2
    new-instance p1, Le/a/l/g/l$d;

    .line 18
    iget-object v0, p0, Le/a/l/g/o;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 19
    invoke-direct {p1, v0}, Le/a/l/g/l$d;-><init>(Ljava/util/List;)V

    .line 20
    iput-object p1, p0, Le/a/l/g/o;->d:Le/a/l/g/l;

    .line 21
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/g/m;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Le/a/l/g/m;->du(Le/a/l/g/l;)V

    :cond_3
    :goto_1
    return-void
.end method
