.class public final Lz0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lz0;->a:I

    iput-object p2, p0, Lz0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lz0;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lz0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 2
    sget v0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->g:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->qa()Le/a/c/a/d/a/a;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/c/a/d/a/a;->m:Le/a/c/a/i/j;

    sget-object v0, Le/a/c/a/d/e/a;->e:Le/a/c/a/d/e/a;

    .line 5
    sget-object v0, Le/a/c/a/d/e/a;->d:Le/a/c/r/d/b;

    .line 6
    invoke-virtual {p1, v0}, Le/a/c/a/i/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Le/a/c/a/d/g/h;->j:Le/a/c/a/d/g/h$b;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Le/a/c/a/d/g/h;

    invoke-direct {p1}, Le/a/c/a/d/g/h;-><init>()V

    .line 10
    iget-object v0, p0, Lz0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 11
    sget-object v1, Le/a/c/a/d/g/h;->i:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_1
    iget-object p1, p0, Lz0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
