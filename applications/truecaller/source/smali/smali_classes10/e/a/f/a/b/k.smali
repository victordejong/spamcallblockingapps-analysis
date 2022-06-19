.class public final Le/a/f/a/b/k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/z/n0/a;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$listenToCallAudioStateChanges$1"
    f = "OngoingCallPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/a/b/j;


# direct methods
.method public constructor <init>(Le/a/f/a/b/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

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

    new-instance v0, Le/a/f/a/b/k;

    iget-object v1, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

    invoke-direct {v0, v1, p2}, Le/a/f/a/b/k;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/b/k;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/b/k;

    iget-object v1, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

    invoke-direct {v0, v1, p2}, Le/a/f/a/b/k;-><init>(Le/a/f/a/b/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/b/k;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/b/k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/b/k;->e:Ljava/lang/Object;

    check-cast p1, Le/a/f/z/n0/a;

    .line 2
    iget-object v0, p1, Le/a/f/z/n0/a;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, p1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_0

    if-eq v3, v1, :cond_0

    .line 8
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/f/a/b/i;->jq()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/f/a/b/i;->La()V

    .line 10
    :cond_1
    :goto_0
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_2

    sget v3, Lcom/truecaller/incallui/R$drawable;->ic_toggle_button_incallui_speaker:I

    invoke-interface {v1, v3}, Le/a/f/a/b/i;->lc(I)V

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/b/i;

    if-eqz v1, :cond_a

    iget-object v0, v0, Le/a/f/a/b/j;->s:Le/a/p5/c0;

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_button_speaker:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "resourceProvider.getStri\u2026.incallui_button_speaker)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/f/a/b/i;->sy(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 12
    :cond_3
    iget-object v0, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v3, p1, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_7

    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    .line 16
    sget v1, Lcom/truecaller/incallui/R$drawable;->ic_toggle_button_incallui_speaker:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v0, Le/a/f/a/b/j;->s:Le/a/p5/c0;

    sget v4, Lcom/truecaller/incallui/R$string;->incallui_button_speaker:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 19
    :cond_5
    iget-object v1, p1, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    if-eqz v1, :cond_6

    .line 20
    iget-object v1, v1, Le/a/p5/r0/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_1

    .line 21
    :cond_6
    iget-object v1, v0, Le/a/f/a/b/j;->s:Le/a/p5/c0;

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_button_bluetooth:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026ncallui_button_bluetooth)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :goto_1
    sget v2, Lcom/truecaller/incallui/R$drawable;->ic_toggle_button_incallui_bluetooth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 23
    new-instance v3, Ls1/k;

    invoke-direct {v3, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_7
    sget v1, Lcom/truecaller/incallui/R$drawable;->ic_toggle_button_incallui_phone:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v0, Le/a/f/a/b/j;->s:Le/a/p5/c0;

    sget v4, Lcom/truecaller/incallui/R$string;->incallui_button_phone:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :goto_2
    iget-object v1, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 27
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 28
    iget-object v2, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/i;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Le/a/f/a/b/i;->jq()V

    .line 31
    :cond_8
    iget-object v3, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/i;

    if-eqz v3, :cond_9

    invoke-interface {v3, v1}, Le/a/f/a/b/i;->lc(I)V

    .line 32
    :cond_9
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_a

    const-string v1, "text"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/f/a/b/i;->sy(Ljava/lang/String;)V

    .line 33
    :cond_a
    :goto_3
    iget-boolean p1, p1, Le/a/f/z/n0/a;->d:Z

    if-eqz p1, :cond_b

    .line 34
    iget-object p1, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

    .line 35
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_c

    .line 36
    invoke-interface {p1}, Le/a/f/a/b/i;->G6()V

    goto :goto_4

    .line 37
    :cond_b
    iget-object p1, p0, Le/a/f/a/b/k;->f:Le/a/f/a/b/j;

    .line 38
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_c

    .line 39
    invoke-interface {p1}, Le/a/f/a/b/i;->le()V

    .line 40
    :cond_c
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
