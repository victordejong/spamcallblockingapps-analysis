.class public final Le/a/x/a/f;
.super Le/a/x/c;
.source "SourceFile"

# interfaces
.implements Le/a/x/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/x/c<",
        "Le/a/x/a/h;",
        ">;",
        "Le/a/x/a/g;"
    }
.end annotation


# instance fields
.field public final f:Le/a/x/w;

.field public final g:Le/a/x/l;

.field public final h:Le/a/x/h0/a;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/x/w;Le/a/x/l;Le/a/x/h0/a;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ghostCallSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallEventLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4, p1}, Le/a/x/c;-><init>(Ls1/w/f;Le/a/x/w;)V

    iput-object p1, p0, Le/a/x/a/f;->f:Le/a/x/w;

    iput-object p2, p0, Le/a/x/a/f;->g:Le/a/x/l;

    iput-object p3, p0, Le/a/x/a/f;->h:Le/a/x/h0/a;

    iput-object p4, p0, Le/a/x/a/f;->i:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public Jj()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/x/g;->C5()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/x/a/f;->f:Le/a/x/w;

    invoke-interface {v0}, Le/a/x/w;->w()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/x/a/h;->J()V

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/x/a/h;->Z()V

    goto :goto_1

    .line 6
    :cond_3
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/x/a/h;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Le/a/x/a/h;->setPhoneNumber(Ljava/lang/String;)V

    .line 7
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/x/a/h;->Z()V

    :cond_5
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p0

    .line 8
    invoke-static/range {v1 .. v6}, Le/a/x/c;->Ij(Le/a/x/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_6

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_identified_color:I

    invoke-interface {v0, v1}, Le/a/x/a/h;->L0(I)V

    .line 10
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_7

    iget-object v1, p0, Le/a/x/a/f;->f:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/x/a/h;->setProfileName(Ljava/lang/String;)V

    .line 11
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/x/a/h;->r1()V

    :cond_8
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/x/a/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/x/a/h;->M2()V

    return-void
.end method

.method public Z7(Le/a/f/z/d0;)V
    .locals 1

    const-string v0, "inCallUiAcsData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/x/a/h;->M0()V

    .line 2
    :cond_0
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method

.method public od()V
    .locals 0

    return-void
.end method

.method public sc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zj(Le/a/f/y/a;)V
    .locals 0

    return-void
.end method
