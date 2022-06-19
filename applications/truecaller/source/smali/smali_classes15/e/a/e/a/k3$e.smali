.class public Le/a/e/a/k3$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/a/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Le/a/b0/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Le/a/e/a/k3$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/b0/e/l;->s()Le/a/b0/e/d;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/b0/e/d;

    if-eqz p1, :cond_5

    .line 2
    instance-of v0, p1, Le/a/b0/e/d$a$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/b0/e/d$b;

    if-eqz v0, :cond_1

    const-string p1, "Secondary number deleted"

    goto :goto_1

    .line 4
    :cond_1
    instance-of v0, p1, Le/a/b0/e/d$a$a;

    if-eqz v0, :cond_2

    const-string v0, "Error deleting secondary number status:"

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Le/a/b0/e/d$a$a;

    .line 6
    iget p1, p1, Le/a/b0/e/d$a$a;->a:I

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, p1, Le/a/b0/e/d$a$b;

    if-eqz v0, :cond_3

    const-string p1, "No internet connection"

    goto :goto_1

    .line 9
    :cond_3
    instance-of p1, p1, Le/a/b0/e/d$a$d;

    if-eqz p1, :cond_4

    const-string p1, "No secondary number to delete"

    goto :goto_1

    :cond_4
    const-string p1, "Unknown result"

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "Unexpected error"

    .line 10
    :goto_1
    iget-object v0, p0, Le/a/e/a/k3$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 11
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Le/a/e/a/k3$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Deleting secondary number"

    .line 3
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
