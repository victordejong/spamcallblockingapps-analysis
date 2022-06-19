.class public final Le/a/x/t;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/x/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/x/o;",
        ">;",
        "Le/a/x/n;"
    }
.end annotation


# instance fields
.field public final d:Le/a/b0/e/f;

.field public final e:Le/a/l/p2/v0;

.field public final f:Le/a/x/h0/a;

.field public final g:Le/a/x/l;

.field public final h:Le/a/p5/c;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/l/p2/v0;Le/a/x/h0/a;Le/a/x/l;Le/a/p5/c;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallEventLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p6}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/x/t;->d:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/x/t;->e:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/x/t;->f:Le/a/x/h0/a;

    iput-object p4, p0, Le/a/x/t;->g:Le/a/x/l;

    iput-object p5, p0, Le/a/x/t;->h:Le/a/p5/c;

    iput-object p6, p0, Le/a/x/t;->i:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public Ij()V
    .locals 6

    .line 1
    new-instance v3, Le/a/x/s;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/x/s;-><init>(Le/a/x/t;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/x/o;->y0()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_1

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/x/o;->P0(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_2

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/x/o;->e(I)V

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_3

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_divider_partner_color:I

    invoke-interface {v0, v1}, Le/a/x/o;->x0(I)V

    :cond_3
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/x/o;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/x/t;->d:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Lcom/truecaller/incallui/R$drawable;->logo_white_uk:I

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_truecaller_logo_white:I

    .line 7
    :goto_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Le/a/x/o;->w(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/x/t;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Le/a/x/t;->d:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_tc_premium_logo_uk:I

    goto :goto_1

    .line 11
    :cond_2
    sget p1, Lcom/truecaller/incallui/R$drawable;->ic_tc_premium_logo:I

    .line 12
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/x/o;->G0()V

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/o;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Le/a/x/o;->X0(I)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/x/o;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/x/o;->v0()V

    :cond_5
    :goto_2
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
    iget-object v0, p0, Le/a/x/t;->g:Le/a/x/l;

    invoke-interface {v0}, Le/a/x/l;->v()V

    .line 2
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
