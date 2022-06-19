.class public final Le/a/f/a/a/j;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/w/f;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$listenToCallersInfoChannel$1"
    f = "IncomingCallPresenter.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f/a/a/i;


# direct methods
.method public constructor <init>(Le/a/f/a/a/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/a/j;

    iget-object v1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    invoke-direct {v0, v1, p2}, Le/a/f/a/a/j;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/a/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/a/j;

    iget-object v1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    invoke-direct {v0, v1, p2}, Le/a/f/a/a/j;-><init>(Le/a/f/a/a/i;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/a/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f/a/a/j;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/a/j;->e:Ljava/lang/Object;

    check-cast p1, Le/a/f/w/f;

    .line 4
    iget-object v1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    .line 5
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Le/a/f/a/e;->Xc()V

    .line 6
    :cond_2
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Le/a/f/a/a/g;->M0()V

    .line 7
    :cond_3
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Le/a/f/a/e;->P2()V

    .line 8
    :cond_4
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Le/a/f/a/e;->G()V

    .line 9
    :cond_5
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Le/a/f/a/e;->re()V

    .line 10
    :cond_6
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Le/a/f/a/a/g;->w5()V

    .line 11
    :cond_7
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Le/a/f/a/a/g;->b9()V

    .line 12
    :cond_8
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Le/a/f/a/a/g;->P0()V

    .line 13
    :cond_9
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Le/a/f/a/a/g;->b5()V

    .line 14
    :cond_a
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Le/a/f/a/e;->z()V

    .line 15
    :cond_b
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Le/a/f/a/e;->n()V

    .line 16
    :cond_c
    invoke-virtual {v1}, Le/a/f/a/a/i;->ck()Le/a/f/w/f$b;

    move-result-object v3

    .line 17
    instance-of v4, v3, Le/a/f/w/f$b;

    if-eqz v4, :cond_18

    .line 18
    iget-object v3, v3, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 19
    iget-boolean v3, v3, Le/a/f/a/g;->p:Z

    if-eqz v3, :cond_17

    .line 20
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_d

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v3, v4}, Le/a/f/a/e;->p0(I)V

    .line 21
    :cond_d
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_e

    sget v4, Lcom/truecaller/incallui/R$dimen;->incallui_name_font_size:I

    invoke-interface {v3, v4}, Le/a/f/a/e;->S0(I)V

    .line 22
    :cond_e
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_f

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_gray_text_color:I

    invoke-interface {v3, v4}, Le/a/f/a/e;->U0(I)V

    .line 23
    :cond_f
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_10

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_gray_text_color:I

    invoke-interface {v3, v4}, Le/a/f/a/a/g;->s4(I)V

    .line 24
    :cond_10
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_11

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_gray_text_color:I

    invoke-interface {v3, v4}, Le/a/f/a/a/g;->Wg(I)V

    .line 25
    :cond_11
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_12

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    sget v5, Lcom/truecaller/incallui/R$drawable;->background_tcx_tag_dark:I

    invoke-interface {v3, v4, v5}, Le/a/f/a/a/g;->Zq(II)V

    .line 26
    :cond_12
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_13

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    sget v5, Lcom/truecaller/incallui/R$drawable;->background_tcx_tag_dark:I

    invoke-interface {v3, v4, v5}, Le/a/f/a/a/g;->Cp(II)V

    .line 27
    :cond_13
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_14

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v3, v4}, Le/a/f/a/a/g;->Y6(I)V

    .line 28
    :cond_14
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_15

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    invoke-interface {v3, v4}, Le/a/f/a/e;->i4(I)V

    .line 29
    :cond_15
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/a/g;

    if-eqz v3, :cond_16

    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_color:I

    invoke-interface {v3, v4}, Le/a/f/a/e;->i1(I)V

    .line 30
    :cond_16
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/g;

    if-eqz v1, :cond_19

    sget v3, Lcom/truecaller/incallui/R$color;->incallui_white_color:I

    invoke-interface {v1, v3}, Le/a/f/a/e;->Hy(I)V

    goto :goto_0

    .line 31
    :cond_17
    invoke-virtual {v1}, Le/a/f/a/a/i;->bk()V

    goto :goto_0

    .line 32
    :cond_18
    invoke-virtual {v1}, Le/a/f/a/a/i;->bk()V

    .line 33
    :cond_19
    :goto_0
    instance-of v1, p1, Le/a/f/w/f$c;

    if-eqz v1, :cond_1b

    iget-object p1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    .line 34
    invoke-virtual {p1}, Le/a/f/a/a/i;->dk()V

    .line 35
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Le/a/f/a/e;->Oz()V

    .line 36
    :cond_1a
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Le/a/f/a/e;->n()V

    goto :goto_2

    .line 37
    :cond_1b
    instance-of v1, p1, Le/a/f/w/f$b;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    check-cast p1, Le/a/f/w/f$b;

    .line 38
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 39
    iput v2, p0, Le/a/f/a/a/j;->f:I

    invoke-virtual {v1, p1, p0}, Le/a/f/a/a/i;->ek(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20

    return-object v0

    .line 40
    :cond_1c
    instance-of p1, p1, Le/a/f/w/f$a;

    if-eqz p1, :cond_20

    iget-object p1, p0, Le/a/f/a/a/j;->g:Le/a/f/a/a/i;

    .line 41
    iget-object v0, p1, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    invoke-interface {v0}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 42
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1e

    sget v1, Lcom/truecaller/incallui/R$string;->incallui_hidden_number:I

    invoke-interface {v0, v1}, Le/a/f/a/e;->i3(I)V

    goto :goto_1

    .line 43
    :cond_1d
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Le/a/f/a/e;->ic()V

    .line 44
    :cond_1e
    :goto_1
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/a/g;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Le/a/f/a/e;->n()V

    .line 45
    :cond_1f
    invoke-virtual {p1}, Le/a/f/a/a/i;->dk()V

    .line 46
    invoke-virtual {p1}, Le/a/f/a/a/i;->Rj()V

    .line 47
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_20

    invoke-interface {p1}, Le/a/f/a/e;->r1()V

    .line 48
    :cond_20
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
