.class public final Le/a/a/c/b/a;
.super Ln3/b/a/p;
.source "SourceFile"


# instance fields
.field public c:Le/a/o5/b0;

.field public d:Lw3/b/a/b;

.field public final e:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lw3/b/a/b;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/z/b/l<",
            "-",
            "Lw3/b/a/b;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1301f7

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/b/a/p;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Le/a/a/c/b/a;->e:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public final d(Lw3/b/a/b;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/b/a;->c:Le/a/o5/b0;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const-string p1, "MMMM dd, YYYY"

    .line 3
    invoke-interface {v0, v1, v2, p1}, Le/a/o5/b0;->t(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "dateHelper"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0137

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/a/p;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v0

    const-string v2, "(context.applicationCont\u2026objectsGraph.dateHelper()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/c/b/a;->c:Le/a/o5/b0;

    const v0, 0x7f0a1245

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "title"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/a/c/b/a;->c:Le/a/o5/b0;

    const-string v3, "dateHelper"

    if-eqz v2, :cond_1

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/a/a/c/b/a;->d(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a04da

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .line 8
    iget-object v4, p0, Le/a/a/c/b/a;->c:Le/a/o5/b0;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v1

    const-string v3, "datePicker"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v3, v1, Lw3/b/a/e0/e;->a:J

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 14
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 15
    new-instance v4, Lw3/b/a/b;

    const-string v6, "calendar"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-direct {v4, v6}, Lw3/b/a/b;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Le/a/a/c/b/a;->d:Lw3/b/a/b;

    .line 16
    invoke-virtual {v1}, Lw3/b/a/e0/a;->u()I

    move-result v4

    invoke-virtual {v1}, Lw3/b/a/e0/a;->t()I

    move-result v6

    invoke-virtual {v1}, Lw3/b/a/e0/a;->q()I

    move-result v1

    new-instance v7, Le/a/a/c/b/a$b;

    invoke-direct {v7, p0, v3, v0}, Le/a/a/c/b/a$b;-><init>(Le/a/a/c/b/a;Ljava/util/Calendar;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4, v6, v1, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    const v0, 0x7f0a0c24

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 18
    new-instance v1, Le/a/a/c/b/a$a;

    invoke-direct {v1, v5, p0}, Le/a/a/c/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0d4a

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 20
    new-instance v0, Le/a/a/c/b/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/a/c/b/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 21
    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
