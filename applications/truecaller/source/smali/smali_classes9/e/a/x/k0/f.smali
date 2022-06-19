.class public final Le/a/x/k0/f;
.super Le/a/x/c;
.source "SourceFile"

# interfaces
.implements Le/a/x/k0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/x/c<",
        "Le/a/x/k0/e;",
        ">;",
        "Le/a/x/k0/d;"
    }
.end annotation


# instance fields
.field public final f:Le/a/x/w;

.field public final g:Le/a/x/l;

.field public final h:Le/a/p5/c;

.field public final i:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/x/w;Le/a/x/l;Le/a/p5/c;Ls1/w/f;)V
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

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4, p1}, Le/a/x/c;-><init>(Ls1/w/f;Le/a/x/w;)V

    iput-object p1, p0, Le/a/x/k0/f;->f:Le/a/x/w;

    iput-object p2, p0, Le/a/x/k0/f;->g:Le/a/x/l;

    iput-object p3, p0, Le/a/x/k0/f;->h:Le/a/p5/c;

    iput-object p4, p0, Le/a/x/k0/f;->i:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public Jj()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/x/k0/e;->cc()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/x/k0/e;->r1()V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/x/k0/e;->s1()V

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/x/g;->C5()V

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Le/a/x/k0/f;->h:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->a()J

    move-result-wide v3

    iget-object v5, p0, Le/a/x/k0/f;->h:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long/2addr v3, v5

    .line 7
    invoke-interface {v0, v3, v4}, Le/a/x/k0/e;->t5(J)V

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_5

    sget v1, Lcom/truecaller/incallui/R$dimen;->incallui_ongoing_name_font_size:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->S0(I)V

    .line 9
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-interface {v0, v1}, Le/a/x/k0/e;->setProfileName(Ljava/lang/String;)V

    .line 10
    :cond_6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/x/k0/e;->P2()V

    .line 11
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_8

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_gray_text_color:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->U0(I)V

    .line 12
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le/a/x/g;->T1()V

    .line 13
    :cond_9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Le/a/x/k0/e;->z()V

    .line 14
    :cond_a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Le/a/x/k0/e;->M1()V

    .line 15
    :cond_b
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_c

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_title_text_color:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->p0(I)V

    .line 16
    :cond_c
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_d

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_identified_color:I

    sget v2, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1, v2}, Le/a/x/k0/e;->Mj(II)V

    .line 17
    :cond_d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_e

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->L4(I)V

    .line 18
    :cond_e
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_f

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->D3(I)V

    .line 19
    :cond_f
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_10

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->i4(I)V

    .line 20
    :cond_10
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_11

    sget v1, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    invoke-interface {v0, v1}, Le/a/x/k0/e;->i1(I)V

    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, p0

    .line 21
    invoke-static/range {v2 .. v7}, Le/a/x/c;->Ij(Le/a/x/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_12

    iget-object v1, p0, Le/a/x/k0/f;->f:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->V0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/x/k0/e;->setProfileName(Ljava/lang/String;)V

    .line 23
    :cond_12
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Le/a/x/k0/e;->r1()V

    .line 24
    :cond_13
    iget-object v0, p0, Le/a/x/k0/f;->f:Le/a/x/w;

    invoke-interface {v0}, Le/a/x/w;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    goto :goto_1

    :cond_15
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_17

    .line 26
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Le/a/x/k0/e;->J()V

    .line 27
    :cond_16
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Le/a/x/k0/e;->Z()V

    goto :goto_2

    .line 28
    :cond_17
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/x/k0/e;

    if-eqz v1, :cond_18

    invoke-interface {v1, v0}, Le/a/x/k0/e;->setPhoneNumber(Ljava/lang/String;)V

    .line 29
    :cond_18
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Le/a/x/k0/e;->Z()V

    .line 30
    :cond_19
    :goto_2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Le/a/x/k0/e;->X5()V

    .line 31
    :cond_1a
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/x/k0/e;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Le/a/x/k0/e;->M1()V

    :cond_1b
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
