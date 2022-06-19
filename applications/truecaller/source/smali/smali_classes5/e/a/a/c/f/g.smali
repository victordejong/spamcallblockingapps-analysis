.class public final Le/a/a/c/f/g;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/a/c/f/h;",
        ">;",
        "Le/a/a/c/f/f;"
    }
.end annotation


# instance fields
.field public b:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

.field public final c:Ljava/lang/Long;

.field public final d:Le/a/p5/c0;

.field public final e:Le/a/o5/b0;

.field public final f:Le/a/a/c/f/c;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Le/a/p5/c0;Le/a/o5/b0;Le/a/a/c/f/c;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/inject/Named;
            value = "DefaultDate"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calendar"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/a/c/f/g;->c:Ljava/lang/Long;

    iput-object p2, p0, Le/a/a/c/f/g;->d:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    iput-object p4, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    .line 2
    sget-object p1, Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;->PICK_DATE:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

    iput-object p1, p0, Le/a/a/c/f/g;->b:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

    return-void
.end method


# virtual methods
.method public A7()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/f/h;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/a/c/f/g;->b:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

    sget-object v2, Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;->PICK_DATE:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    iget-object v2, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v2}, Le/a/a/c/f/c;->a()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Le/a/a/c/f/h;->Zp(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v1}, Le/a/a/c/f/c;->f()I

    move-result v1

    iget-object v2, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v2}, Le/a/a/c/f/c;->k()I

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/a/c/f/h;->Fi(II)V

    .line 6
    iget-object v1, p0, Le/a/a/c/f/g;->d:Le/a/p5/c0;

    const v2, 0x7f120ef2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026.string.schedule_message)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/a/c/f/h;->lt(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;->PICK_TIME:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

    iput-object v0, p0, Le/a/a/c/f/g;->b:Lcom/truecaller/messaging/conversation/scheduleDatePicker/Mode;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    invoke-interface {v1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v1

    new-instance v2, Lw3/b/a/b;

    iget-object v4, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v4}, Le/a/a/c/f/c;->a()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v1, v2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    invoke-interface {v0}, Le/a/a/c/f/h;->Aj()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Le/a/a/c/f/h;->dismiss()V

    .line 11
    iget-object v1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v1, v3}, Le/a/a/c/f/c;->n(I)V

    .line 12
    iget-object v1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v1, v3}, Le/a/a/c/f/c;->m(I)V

    .line 13
    iget-object v1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v1}, Le/a/a/c/f/c;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/a/c/f/h;->HA(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Qf(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v0, p1}, Le/a/a/c/f/c;->j(I)V

    .line 2
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p1, p2}, Le/a/a/c/f/c;->g(I)V

    .line 3
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p1, p3}, Le/a/a/c/f/c;->b(I)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/f/h;

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    iget-object p3, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p3}, Le/a/a/c/f/c;->a()J

    move-result-wide v0

    const-string p3, "MMMM dd, YYYY"

    invoke-interface {p2, v0, v1, p3}, Le/a/o5/b0;->t(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-interface {p1, p2}, Le/a/a/c/f/h;->Zp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Rg(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v0, p1}, Le/a/a/c/f/c;->h(I)V

    .line 2
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p1, p2}, Le/a/a/c/f/c;->i(I)V

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/f/h;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    iget-object v0, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v0}, Le/a/a/c/f/c;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Le/a/a/c/f/h;->Zp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/c/f/h;

    const-string p1, "presenterView"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    invoke-interface {p1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object p1

    .line 5
    iget-wide v4, p1, Lw3/b/a/e0/e;->a:J

    .line 6
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    iget-object v1, p0, Le/a/a/c/f/g;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, v4

    :goto_0
    invoke-interface {p1, v1, v2}, Le/a/a/c/f/c;->e(J)V

    .line 7
    iget-object p1, p0, Le/a/a/c/f/g;->e:Le/a/o5/b0;

    iget-object v1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {v1}, Le/a/a/c/f/c;->a()J

    move-result-wide v1

    const-string v3, "MMMM dd, YYYY"

    invoke-interface {p1, v1, v2, v3}, Le/a/o5/b0;->t(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Le/a/a/c/f/h;->Zp(Ljava/lang/String;)V

    .line 9
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1, v4, v5}, Lw3/b/a/b;-><init>(J)V

    const/4 v1, 0x1

    .line 10
    iget-object v2, p1, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 11
    invoke-virtual {v2}, Lw3/b/a/a;->V()Lw3/b/a/j;

    move-result-object v2

    .line 12
    iget-wide v6, p1, Lw3/b/a/e0/e;->a:J

    .line 13
    invoke-virtual {v2, v6, v7, v1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v1

    .line 14
    invoke-virtual {p1, v1, v2}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "DateTime(now).plusYears(1)"

    .line 15
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-wide v6, p1, Lw3/b/a/e0/e;->a:J

    .line 17
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p1}, Le/a/a/c/f/c;->c()I

    move-result v1

    .line 18
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p1}, Le/a/a/c/f/c;->l()I

    move-result v2

    .line 19
    iget-object p1, p0, Le/a/a/c/f/g;->f:Le/a/a/c/f/c;

    invoke-interface {p1}, Le/a/a/c/f/c;->d()I

    move-result v3

    .line 20
    invoke-interface/range {v0 .. v7}, Le/a/a/c/f/h;->Bi(IIIJJ)V

    return-void
.end method

.method public s9()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/f/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/f/h;->dismiss()V

    :cond_0
    return-void
.end method
