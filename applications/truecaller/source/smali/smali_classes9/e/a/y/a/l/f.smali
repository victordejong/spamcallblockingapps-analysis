.class public final Le/a/y/a/l/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/l/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/y/a/l/b;",
        ">;",
        "Le/a/y/a/l/a;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;

.field public final k:Le/a/y/c/b;

.field public final l:Le/a/y/b/w;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/y/c/b;Le/a/y/b/w;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/y/a/l/f;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/y/a/l/f;->j:Ls1/w/f;

    iput-object p3, p0, Le/a/y/a/l/f;->k:Le/a/y/c/b;

    iput-object p4, p0, Le/a/y/a/l/f;->l:Le/a/y/b/w;

    return-void
.end method


# virtual methods
.method public Be(I)V
    .locals 1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/y/a/l/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/y/a/l/b;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/y/a/l/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/y/a/l/b;->g0()V

    .line 5
    invoke-interface {p1}, Le/a/y/a/l/b;->A3()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/y/a/l/b;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const-string v2, "mode"

    .line 7
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Le/a/y/a/l/f;->f:Z

    :cond_0
    const-string v1, "image"

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/y/a/l/f;->d:Ljava/lang/String;

    .line 11
    invoke-interface {v0}, Le/a/y/a/l/b;->M1()V

    :cond_1
    const-string v1, "background"

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/y/a/l/f;->h:Ljava/lang/String;

    :cond_2
    const-string v1, "video"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/y/a/l/f;->g:Ljava/lang/String;

    .line 16
    invoke-interface {v0}, Le/a/y/a/l/b;->M1()V

    :cond_3
    const-string v1, "description"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/y/a/l/f;->e:Ljava/lang/String;

    .line 19
    :cond_4
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/y/a/l/f;->j:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/y/a/l/e;

    const/4 p1, 0x0

    invoke-direct {v4, p0, v0, p1}, Le/a/y/a/l/e;-><init>(Le/a/y/a/l/f;Le/a/y/a/l/b;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_5
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/l/f;->l:Le/a/y/b/w;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "first_time_user"

    invoke-interface {v0, v2, v1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public u4(Le/a/y/g/a;)V
    .locals 11

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Le/a/y/a/l/b;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p1, Le/a/y/g/a;->b:Ljava/lang/String;

    const-string v2, "contact.phoneNumber"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    iget-object v4, p1, Le/a/y/g/a;->a:Ljava/lang/String;

    const-string p1, "contact.name"

    .line 5
    invoke-static {v4, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v6, p0, Le/a/y/a/l/f;->d:Ljava/lang/String;

    iget-object v7, p0, Le/a/y/a/l/f;->g:Ljava/lang/String;

    iget-object v8, p0, Le/a/y/a/l/f;->e:Ljava/lang/String;

    iget-boolean v9, p0, Le/a/y/a/l/f;->f:Z

    iget-object v10, p0, Le/a/y/a/l/f;->h:Ljava/lang/String;

    const-string v5, "flashShare"

    .line 7
    invoke-interface/range {v1 .. v10}, Le/a/y/a/l/b;->y(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
