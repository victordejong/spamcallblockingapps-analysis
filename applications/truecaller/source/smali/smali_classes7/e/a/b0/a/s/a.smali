.class public Le/a/b0/a/s/a;
.super Le/a/b0/a/s/c;
.source "SourceFile"


# instance fields
.field public b:Le/a/b0/a/s/b;

.field public c:Z

.field public final d:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/p5/h0;)V
    .locals 1

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/b0/a/s/c;-><init>()V

    iput-object p1, p0, Le/a/b0/a/s/a;->d:Le/a/p5/h0;

    return-void
.end method


# virtual methods
.method public Hj(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/b0/a/s/a;->c:Z

    .line 2
    iget-object p1, p0, Le/a/b0/a/s/a;->b:Le/a/b0/a/s/b;

    invoke-virtual {p0, p1}, Le/a/b0/a/s/a;->Ij(Le/a/b0/a/s/b;)V

    return-void
.end method

.method public final Ij(Le/a/b0/a/s/b;)V
    .locals 5

    .line 1
    iput-object p1, p0, Le/a/b0/a/s/a;->b:Le/a/b0/a/s/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2
    iget-boolean v1, p0, Le/a/b0/a/s/a;->c:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/s/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1, v2}, Le/a/b0/a/s/d;->c(Z)V

    .line 5
    iget-object v3, p0, Le/a/b0/a/s/a;->d:Le/a/p5/h0;

    .line 6
    iget-boolean v4, p1, Le/a/b0/a/s/b;->c:Z

    if-eqz v4, :cond_1

    .line 7
    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_availabilityOnCallBackgroundColor:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_availabilityNormalBackgroundColor:I

    :goto_0
    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v3

    .line 8
    invoke-interface {v1, v3}, Le/a/b0/a/s/d;->setBackgroundColor(I)V

    .line 9
    :cond_2
    iget-boolean v1, p1, Le/a/b0/a/s/b;->c:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b0/a/s/d;

    if-eqz p1, :cond_6

    .line 11
    invoke-interface {p1, v2}, Le/a/b0/a/s/d;->setOnCallIconVisibility(Z)V

    .line 12
    invoke-interface {p1, v0}, Le/a/b0/a/s/d;->setTextVisibility(Z)V

    .line 13
    invoke-interface {p1, v0}, Le/a/b0/a/s/d;->setSilentIconVisibility(Z)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v1, p1, Le/a/b0/a/s/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/s/d;

    if-eqz v1, :cond_6

    .line 16
    iget-boolean v3, p1, Le/a/b0/a/s/b;->b:Z

    xor-int/2addr v3, v2

    .line 17
    invoke-interface {v1, v3}, Le/a/b0/a/s/d;->f(Z)V

    .line 18
    iget-object v3, p1, Le/a/b0/a/s/b;->a:Ljava/lang/String;

    .line 19
    invoke-interface {v1, v3}, Le/a/b0/a/s/d;->setText(Ljava/lang/String;)V

    .line 20
    invoke-interface {v1, v2}, Le/a/b0/a/s/d;->setTextVisibility(Z)V

    .line 21
    invoke-interface {v1, v0}, Le/a/b0/a/s/d;->setOnCallIconVisibility(Z)V

    .line 22
    iget-boolean p1, p1, Le/a/b0/a/s/b;->b:Z

    .line 23
    invoke-interface {v1, p1}, Le/a/b0/a/s/d;->setSilentIconVisibility(Z)V

    goto :goto_2

    .line 24
    :cond_4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b0/a/s/d;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Le/a/b0/a/s/d;->c(Z)V

    goto :goto_2

    .line 25
    :cond_5
    :goto_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b0/a/s/d;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Le/a/b0/a/s/d;->c(Z)V

    :cond_6
    :goto_2
    return-void
.end method
