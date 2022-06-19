.class public final Le/a/a/c/g/g;
.super Le/a/a/c/g/e;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Lq3/a/p1;

.field public f:Lq3/a/p1;

.field public final g:Landroid/database/ContentObserver;

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Ljava/lang/String;

.field public final k:Le/a/a/k/a/a/d;

.field public final l:Landroid/os/Handler;

.field public final m:Landroid/content/ContentResolver;

.field public final n:Le/a/p5/h0;

.field public final o:Le/a/a/i0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Ljava/lang/String;Le/a/a/k/a/a/d;Landroid/os/Handler;Landroid/content/ContentResolver;Le/a/p5/h0;Le/a/a/i0;)V
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
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "name_invite_key"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inviteKey"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/a/c/g/e;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/g/g;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/a/c/g/g;->i:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/g/g;->j:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/c/g/g;->k:Le/a/a/k/a/a/d;

    iput-object p5, p0, Le/a/a/c/g/g;->l:Landroid/os/Handler;

    iput-object p6, p0, Le/a/a/c/g/g;->m:Landroid/content/ContentResolver;

    iput-object p7, p0, Le/a/a/c/g/g;->n:Le/a/p5/h0;

    iput-object p8, p0, Le/a/a/c/g/g;->o:Le/a/a/i0;

    .line 2
    new-instance p1, Le/a/a/c/g/g$a;

    invoke-direct {p1, p0, p5}, Le/a/a/c/g/g$a;-><init>(Le/a/a/c/g/g;Landroid/os/Handler;)V

    iput-object p1, p0, Le/a/a/c/g/g;->g:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public Ij()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/c/g/g$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/c/g/g$b;-><init>(Le/a/a/c/g/g;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Jj()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/c/g/g$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/c/g/g$c;-><init>(Le/a/a/c/g/g;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final synthetic Kj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/a/c/g/g$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/a/c/g/g$d;

    iget v1, v0, Le/a/a/c/g/g$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/c/g/g$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/c/g/g$d;

    invoke-direct {v0, p0, p2}, Le/a/a/c/g/g$d;-><init>(Le/a/a/c/g/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/a/c/g/g$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/c/g/g$d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/a/c/g/g$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/g/g;

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
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 4
    iget-object p2, p0, Le/a/a/c/g/g;->h:Ls1/w/f;

    new-instance v2, Le/a/a/c/g/g$e;

    invoke-direct {v2, p0, p1, v3}, Le/a/a/c/g/g$e;-><init>(Le/a/a/c/g/g;Ljava/lang/String;Ls1/w/d;)V

    iput-object p0, v0, Le/a/a/c/g/g$d;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/a/c/g/g$d;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v3}, Le/a/a/c/g/g;->Mj(ZLjava/lang/String;)V

    .line 7
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/g/f;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/a/c/g/f;->T2(J)V

    .line 8
    :cond_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/g/f;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/a/c/g/f;->finish()V

    .line 9
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Lj(Ljava/lang/String;)V
    .locals 12

    const-string v0, "expiredLink"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "crossDc"

    if-nez v1, :cond_1

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f08073f

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f08073e

    .line 2
    :goto_1
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const v3, 0x7f04056e

    goto :goto_3

    :cond_3
    :goto_2
    const v3, 0x7f0405a1

    .line 3
    :goto_3
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const v4, 0x7f04057e

    goto :goto_5

    :cond_5
    :goto_4
    const v4, 0x7f04057a

    :goto_5
    if-nez p1, :cond_6

    goto :goto_6

    .line 4
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x5874f41

    if-eq v5, v6, :cond_8

    const v6, 0x3de390df

    if-eq v5, v6, :cond_7

    goto :goto_6

    .line 5
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f1202c9

    goto :goto_7

    .line 6
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f1202ca

    goto :goto_7

    :cond_9
    :goto_6
    const v5, 0x7f1202c8

    :goto_7
    if-nez p1, :cond_a

    goto :goto_9

    .line 7
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_9

    .line 8
    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_8

    :sswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :goto_8
    const p1, 0x7f1202c5

    goto :goto_a

    :sswitch_2
    const-string v0, "noRole"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f1202c7

    goto :goto_a

    :sswitch_3
    const-string v0, "exceedSize"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f1202c6

    goto :goto_a

    :cond_b
    :goto_9
    const p1, 0x7f12027f

    .line 11
    :goto_a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Le/a/a/c/g/f;

    if-eqz v6, :cond_c

    .line 12
    iget-object v0, p0, Le/a/a/c/g/g;->n:Le/a/p5/h0;

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v0, "resourceProvider.getDrawable(iconId)"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/a/a/c/g/g;->n:Le/a/p5/h0;

    invoke-interface {v0, v3}, Le/a/p5/h0;->l(I)I

    move-result v8

    .line 14
    iget-object v0, p0, Le/a/a/c/g/g;->n:Le/a/p5/h0;

    invoke-interface {v0, v4}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 15
    iget-object v0, p0, Le/a/a/c/g/g;->n:Le/a/p5/h0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v5, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "resourceProvider.getString(title)"

    invoke-static {v10, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Le/a/a/c/g/g;->n:Le/a/p5/h0;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string p1, "resourceProvider.getString(description)"

    invoke-static {v11, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface/range {v6 .. v11}, Le/a/a/c/g/f;->Np(Landroid/graphics/drawable/Drawable;IILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6206a22b -> :sswitch_3
        -0x3e07c629 -> :sswitch_2
        -0x5874f41 -> :sswitch_1
        0x3de390df -> :sswitch_0
    .end sparse-switch
.end method

.method public final Mj(ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/g/g;->f:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/g/g;->e:Lq3/a/p1;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/g/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/c/g/f;->f(Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0, p2}, Le/a/a/c/g/g;->Lj(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/c/g/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/c/g/g;->m:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/g/g;->g:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/g/g;->m:Landroid/content/ContentResolver;

    iget-object v1, p0, Le/a/a/c/g/g;->g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
