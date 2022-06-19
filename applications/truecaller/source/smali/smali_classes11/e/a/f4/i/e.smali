.class public abstract Le/a/f4/i/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f4/i/e$a;,
        Le/a/f4/i/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;",
        "Le/a/f4/i/e$b<",
        "TResult;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/j4/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Le/a/j4/a/d;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Le/a/f4/i/e;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Le/a/f4/i/e;->b:Z

    .line 4
    iput-boolean p3, p0, Le/a/f4/i/e;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Le/a/j4/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/i/e;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j4/a/d;

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/f4/i/e;->a()Le/a/j4/a/d;

    move-result-object v0

    .line 2
    instance-of v1, p1, Le/a/f4/i/e$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Le/a/f4/i/e$a;

    iget v1, v1, Le/a/f4/i/e$a;->a:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0x1ad

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    .line 4
    :goto_1
    iget-boolean v5, p0, Le/a/f4/i/e;->c:Z

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    .line 5
    sget-boolean v3, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    if-eqz v1, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, v1}, Le/a/j4/a/d;->jf(I)V

    goto :goto_3

    :cond_3
    const v0, 0x7f12027e

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0}, Le/a/j4/a/d;->zr()V

    goto :goto_3

    :cond_5
    const v0, 0x7f12027d

    .line 9
    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v1}, Le/a/f4/i/e;->d(Ljava/lang/Exception;I)V

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract d(Ljava/lang/Exception;I)V
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Le/a/f4/i/e$b;

    invoke-virtual {p0, p1}, Le/a/f4/i/e;->e([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/f4/i/e$b;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Le/a/f4/i/e$b;

    invoke-direct {v0, p1}, Le/a/f4/i/e$b;-><init>(Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public abstract e([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/f4/i/e$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Le/a/f4/i/e$b;->a:Ljava/lang/Object;

    iget-object p1, p1, Le/a/f4/i/e$b;->b:Ljava/lang/Exception;

    invoke-virtual {p0, v0, p1}, Le/a/f4/i/e;->c(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Le/a/f4/i/e;->c(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/f4/i/e$b;

    .line 2
    invoke-virtual {p0}, Le/a/f4/i/e;->a()Le/a/j4/a/d;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/f4/i/e;->a:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Le/a/j4/a/d;->li()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-interface {v0}, Le/a/j4/a/d;->b0()V

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v0, 0x0

    if-eqz v2, :cond_5

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Le/a/f4/i/e;->b(Ljava/lang/Exception;)V

    goto :goto_3

    .line 7
    :cond_2
    iget-object v0, p1, Le/a/f4/i/e$b;->b:Ljava/lang/Exception;

    if-nez v0, :cond_4

    iget-object p1, p1, Le/a/f4/i/e$b;->a:Ljava/lang/Object;

    if-nez p1, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Le/a/f4/i/e;->f(Ljava/lang/Object;)V

    goto :goto_3

    .line 9
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Le/a/f4/i/e;->b(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 10
    iget-object v0, p1, Le/a/f4/i/e$b;->a:Ljava/lang/Object;

    iget-object p1, p1, Le/a/f4/i/e$b;->b:Ljava/lang/Exception;

    invoke-virtual {p0, v0, p1}, Le/a/f4/i/e;->c(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_3

    .line 11
    :cond_6
    invoke-virtual {p0, v0, v0}, Le/a/f4/i/e;->c(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/f4/i/e;->a()Le/a/j4/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/j4/a/d;->li()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-boolean v1, p0, Le/a/f4/i/e;->b:Z

    invoke-interface {v0, v1}, Le/a/j4/a/d;->E(Z)V

    :cond_0
    return-void
.end method
