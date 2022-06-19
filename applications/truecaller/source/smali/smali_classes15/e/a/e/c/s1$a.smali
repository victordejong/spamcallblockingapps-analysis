.class public Le/a/e/c/s1$a;
.super Le/a/f4/g/p$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    invoke-direct {p0}, Le/a/f4/g/p$d;-><init>()V

    return-void
.end method


# virtual methods
.method public Aa(Ljava/lang/Throwable;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 2
    iget-boolean p2, p1, Le/a/e/c/s1;->b1:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1, p2}, Le/a/e/c/s1;->ZA(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 6
    iget-object p1, p1, Le/a/e/c/s1;->r0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public a(Lcom/truecaller/data/entity/Contact;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 3
    iget-object v0, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 8
    iput-boolean v2, p1, Le/a/e/c/s1;->n1:Z

    .line 9
    invoke-virtual {p1}, Le/a/e/c/s1;->qB()V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 11
    iput-object p1, v0, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    iget-object v1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 14
    iget-object v1, v1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    const-string v3, "ARG_CONTACT"

    .line 15
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 17
    iget-object v1, v1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    if-eqz v1, :cond_1

    const/4 v3, -0x1

    .line 18
    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    :cond_1
    iget-object v0, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 20
    iput-boolean v2, v0, Le/a/e/c/s1;->n1:Z

    .line 21
    invoke-virtual {v0}, Le/a/e/c/s1;->UA()V

    .line 22
    iget-object v0, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 23
    iget-boolean v1, v0, Le/a/e/c/s1;->b1:Z

    if-eqz v1, :cond_2

    .line 24
    invoke-static {v0, p1}, Le/a/e/c/s1;->ZA(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;)V

    .line 25
    :cond_2
    iget-object p1, p0, Le/a/e/c/s1$a;->a:Le/a/e/c/s1;

    .line 26
    iget-object p1, p1, Le/a/e/c/s1;->r0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_3
    return-void
.end method
