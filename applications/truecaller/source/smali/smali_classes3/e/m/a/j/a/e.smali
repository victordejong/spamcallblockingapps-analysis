.class public final Le/m/a/j/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/h/m$a;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Le/m/a/j/a/g;


# direct methods
.method public constructor <init>(Le/m/a/j/a/g;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    iput-object p2, p0, Le/m/a/j/a/e;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    .line 1
    iget-object v1, v0, Le/m/a/j/a/g;->d:Le/m/a/j/a/h/c;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Le/m/a/j/a/e;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Le/m/a/j/a/g;->c(Le/m/a/j/a/g;Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/m/a/j/a/g;->d:Le/m/a/j/a/h/c;

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    .line 1
    iget-boolean v1, v0, Le/m/a/j/a/g;->l:Z

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0}, Le/m/a/j/a/h/e;->A()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Le/m/a/j/a/h/j;

    invoke-direct {v1, v0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    .line 5
    iget-object v0, v0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    .line 6
    iget-object v1, v0, Le/m/a/j/a/h/h;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Le/m/a/j/a/h/h;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    .line 8
    iget-object v1, v0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    .line 10
    iget-object v1, v0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    .line 11
    invoke-virtual {v0, v1}, Le/m/a/j/a/g;->addView(Landroid/view/View;)V

    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    .line 12
    iget-object v1, v0, Le/m/a/j/a/g;->f:Landroid/view/View;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Le/m/a/j/a/e;->b:Le/m/a/j/a/g;

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Le/m/a/j/a/g;->f:Landroid/view/View;

    .line 15
    iput-object v1, v0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    .line 16
    iput-object v1, v0, Le/m/a/j/a/g;->d:Le/m/a/j/a/h/c;

    return-void
.end method
