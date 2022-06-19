.class public final Le/a/a/d/a/m;
.super Le/a/a/d/a/f;
.source "SourceFile"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Landroid/net/Uri;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;

.field public final k:Le/a/r2/j;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/p5/a0;

.field public final n:Le/a/a/k/a/z0;

.field public final o:Le/a/o5/m;

.field public final p:Le/a/p5/a;

.field public final q:Le/a/p5/u;

.field public final r:Le/a/a/d/a/e;

.field public final s:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/r2/j;Le/a/r2/f;Le/a/p5/a0;Le/a/a/k/a/z0;Le/a/o5/m;Le/a/p5/a;Le/a/p5/u;Le/a/a/d/a/e;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "ui_thread"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/r2/j;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/a/m;",
            ">;",
            "Le/a/p5/a0;",
            "Le/a/a/k/a/z0;",
            "Le/a/o5/m;",
            "Le/a/p5/a;",
            "Le/a/p5/u;",
            "Le/a/a/d/a/e;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiThread"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUploadFileManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConverter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupParticipantPresenter"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/a/d/a/f;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/d/a/m;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/a/d/a/m;->j:Ls1/w/f;

    iput-object p3, p0, Le/a/a/d/a/m;->k:Le/a/r2/j;

    iput-object p4, p0, Le/a/a/d/a/m;->l:Le/a/r2/f;

    iput-object p5, p0, Le/a/a/d/a/m;->m:Le/a/p5/a0;

    iput-object p6, p0, Le/a/a/d/a/m;->n:Le/a/a/k/a/z0;

    iput-object p7, p0, Le/a/a/d/a/m;->o:Le/a/o5/m;

    iput-object p8, p0, Le/a/a/d/a/m;->p:Le/a/p5/a;

    iput-object p9, p0, Le/a/a/d/a/m;->q:Le/a/p5/u;

    iput-object p10, p0, Le/a/a/d/a/m;->r:Le/a/a/d/a/e;

    iput-object p11, p0, Le/a/a/d/a/m;->s:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public Ij()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/a/d/a/m;->m:Le/a/p5/a0;

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Le/a/a/d/a/g;->Q0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, v2}, Le/a/a/d/a/g;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120444

    const v2, 0x7f120442

    invoke-interface {v0, v1, v2}, Le/a/a/d/a/g;->Z0(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v2, v1}, Le/a/a/d/a/g;->M5(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Jj()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le/a/a/d/a/m;->Xj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f1203fd

    .line 3
    invoke-interface {v0, v1}, Le/a/a/d/a/g;->To(I)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x54e1cbb5

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x59bbdafd

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "im_group_mode_create"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    new-instance v8, Le/a/a/d/a/m$c;

    invoke-direct {v8, p0, v0, v4}, Le/a/a/d/a/m$c;-><init>(Le/a/a/d/a/m;Le/a/a/d/a/g;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    :cond_3
    const-string v2, "im_group_mode_edit"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    iget-object v1, p0, Le/a/a/d/a/m;->q:Le/a/p5/u;

    invoke-interface {v1}, Le/a/p5/u;->d()Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f12027d

    .line 10
    invoke-interface {v0, v1}, Le/a/a/d/a/g;->To(I)V

    return-void

    :cond_4
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Le/a/a/d/a/g;->f(Z)V

    .line 12
    invoke-virtual {p0}, Le/a/a/d/a/m;->Vj()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Le/a/a/d/a/m;->Wj()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Le/a/a/d/a/m;->Zj(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 15
    iget-object v1, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_6

    .line 16
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 17
    new-instance v8, Le/a/a/d/a/k;

    invoke-direct {v8, p0, v1, v0, v4}, Le/a/a/d/a/k;-><init>(Le/a/a/d/a/m;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_6
    :goto_0
    return-void
.end method

.method public Kj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/a/d/a/m;->m:Le/a/p5/a0;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Le/a/a/d/a/g;->N0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, v2}, Le/a/a/d/a/g;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f12044a

    const v2, 0x7f120449

    invoke-interface {v0, v1, v2}, Le/a/a/d/a/g;->Z0(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v2, v1}, Le/a/a/d/a/g;->M5(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Lj(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/d/a/g;->cq(Landroid/net/Uri;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/a/g;

    if-eqz p1, :cond_2

    const v0, 0x7f120612

    invoke-interface {p1, v0}, Le/a/a/d/a/g;->To(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public Mj(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/d/a/g;->Ks(Landroid/net/Uri;)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/a/g;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/a/a/d/a/m;->Uj()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/d/a/g;->fp(Z)V

    :cond_1
    return-void
.end method

.method public Nj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/d/a/g;->C()V

    :cond_0
    return-void
.end method

.method public Oj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/a/d/a/g;->Kp(Z)V

    :cond_1
    return-void
.end method

.method public Pj(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/a/g;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Le/a/a/d/a/m;->Uj()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/d/a/g;->fp(Z)V

    :cond_0
    return-void
.end method

.method public Qj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x54e1cbb5

    if-eq v1, v2, :cond_2

    const v2, 0x59bbdafd

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "im_group_mode_create"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/a/d/a/g;->d0()V

    goto :goto_0

    :cond_2
    const-string v1, "im_group_mode_edit"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/a/d/a/g;->C()V

    :cond_3
    :goto_0
    return-void
.end method

.method public Rj(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "grantResults"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    array-length p1, p3

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    xor-int/2addr p1, v0

    if-eqz p1, :cond_4

    aget p1, p3, p2

    if-nez p1, :cond_4

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/a/g;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/d/a/g;->N0()V

    goto :goto_2

    .line 3
    :cond_2
    array-length p1, p3

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    xor-int/2addr p1, v0

    if-eqz p1, :cond_4

    aget p1, p3, p2

    if-nez p1, :cond_4

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/a/g;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a/d/a/g;->Q0()V

    :cond_4
    :goto_2
    return-void
.end method

.method public Sj(Landroid/net/Uri;)V
    .locals 7

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/a/d/a/m$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/d/a/m$d;-><init>(Le/a/a/d/a/m;Landroid/net/Uri;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Tj(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a/d/a/m$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a/d/a/m$a;

    iget v1, v0, Le/a/a/d/a/m$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/d/a/m$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/d/a/m$a;

    invoke-direct {v0, p0, p2}, Le/a/a/d/a/m$a;-><init>(Le/a/a/d/a/m;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a/d/a/m$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/d/a/m$a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/a/d/a/m$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/d/a/m;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p2

    if-eqz p1, :cond_7

    .line 4
    iput-object p1, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/a/a/d/a/m;->i:Ls1/w/f;

    new-instance v2, Le/a/a/d/a/m$b;

    invoke-direct {v2, p0, p2, v4}, Le/a/a/d/a/m$b;-><init>(Le/a/a/d/a/m;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object p0, v0, Le/a/a/d/a/m$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/a/d/a/m$a;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 6
    :goto_1
    check-cast p2, Le/a/a/k/a/d2;

    .line 7
    iget-boolean v0, p2, Le/a/a/k/a/d2;->a:Z

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p2, Le/a/a/k/a/d2;->b:Ljava/lang/String;

    return-object p1

    .line 9
    :cond_4
    iget-object p2, p2, Le/a/a/k/a/d2;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    .line 10
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p2}, Le/a/a/d/a/g;->To(I)V

    .line 11
    :cond_5
    iget-object p1, p1, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_6

    .line 12
    iget-object v4, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    :cond_6
    return-object v4

    .line 13
    :cond_7
    iget-object p1, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_8

    .line 14
    iget-object v4, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    :cond_8
    return-object v4
.end method

.method public final Uj()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x54e1cbb5

    if-eq v2, v3, :cond_2

    const v3, 0x59bbdafd

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "im_group_mode_create"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/a/d/a/m;->Xj(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    const-string v2, "im_group_mode_edit"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Le/a/a/d/a/m;->Wj()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Le/a/a/d/a/m;->Vj()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/a/d/a/m;->Xj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public final Vj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    iget-object v0, p0, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final Wj()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/a/d/a/m;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Le/a/a/d/a/m;->Xj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final Xj(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x19

    if-gt p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/a/d/a/g;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    const-string v1, "im_group_mode_create"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1203f0

    goto :goto_0

    :cond_0
    const v0, 0x7f1203ff

    :goto_0
    invoke-interface {p1, v0}, Le/a/a/d/a/g;->Ij(I)V

    .line 6
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0806c1

    goto :goto_1

    :cond_1
    const v0, 0x7f080696

    :goto_1
    invoke-interface {p1, v0}, Le/a/a/d/a/g;->Yr(I)V

    .line 8
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-interface {p1, v0}, Le/a/a/d/a/g;->by(Z)V

    .line 10
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/a/d/a/g;->vo(Z)V

    .line 12
    iget-object v0, p0, Le/a/a/d/a/f;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x54e1cbb5

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    const v2, 0x59bbdafd

    if-eq v3, v2, :cond_3

    goto :goto_5

    .line 14
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15
    iget-object v0, p0, Le/a/a/d/a/f;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_4

    .line 16
    array-length v5, v0

    :cond_4
    invoke-interface {p1, v5}, Le/a/a/d/a/g;->F3(I)V

    goto :goto_5

    :cond_5
    const-string v1, "im_group_mode_edit"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 19
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    move v2, v5

    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Le/a/a/d/a/m;->h:Landroid/net/Uri;

    .line 21
    invoke-interface {p1, v0}, Le/a/a/d/a/g;->Ks(Landroid/net/Uri;)V

    .line 22
    iget-object v0, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_9

    .line 23
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    .line 24
    :cond_9
    invoke-interface {p1, v1}, Le/a/a/d/a/g;->ud(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Le/a/a/d/a/f;->e:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_a

    .line 26
    iget-object v0, p0, Le/a/a/d/a/m;->l:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    .line 27
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 28
    invoke-interface {v0, p1}, Le/a/a/k/a/a/m;->b(Ljava/lang/String;)Le/a/r2/x;

    move-result-object p1

    .line 29
    iget-object v0, p0, Le/a/a/d/a/m;->k:Le/a/r2/j;

    new-instance v1, Le/a/a/d/a/n;

    invoke-direct {v1, p0}, Le/a/a/d/a/n;-><init>(Le/a/a/d/a/m;)V

    invoke-virtual {p1, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    :cond_a
    :goto_5
    return-void
.end method

.method public final Yj(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/d/a/m;->s:Le/a/q2/a;

    const-string v1, "ImGroupInfoEdit"

    const-string v7, "type"

    .line 2
    invoke-static {v1, v7}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    const-string v3, "name"

    const-string v5, "value"

    move-object v2, v7

    move-object v4, p1

    move-object v6, v9

    move-object v8, p1

    .line 3
    invoke-static/range {v2 .. v8}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, p1, v9, v2, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final Zj(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Le/a/a/d/a/g;->f(Z)V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Le/a/a/d/a/g;->C()V

    .line 5
    invoke-virtual {p0}, Le/a/a/d/a/m;->Wj()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "name"

    .line 6
    invoke-virtual {p0, p1}, Le/a/a/d/a/m;->Yj(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/a/a/d/a/m;->Vj()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "picture"

    .line 8
    invoke-virtual {p0, p1}, Le/a/a/d/a/m;->Yj(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f120400

    .line 9
    invoke-interface {v0, p1}, Le/a/a/d/a/g;->To(I)V

    :cond_2
    :goto_0
    return-void
.end method
