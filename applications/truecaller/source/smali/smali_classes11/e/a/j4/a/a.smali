.class public abstract Le/a/j4/a/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/j4/a/d;

.field public b:Z

.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v2, v0, v1}, Le/a/j4/a/a;-><init>(Le/a/j4/a/d;ZZ[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Le/a/j4/a/d;ZZ[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/j4/a/a;->a:Le/a/j4/a/d;

    .line 3
    iput-boolean p2, p0, Le/a/j4/a/a;->b:Z

    .line 4
    iput-object p4, p0, Le/a/j4/a/a;->c:[Ljava/lang/Object;

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    .line 5
    sget-object p3, Le/a/j4/a/b;->a:Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object p4, Le/a/j4/a/b;->a:Landroid/os/Handler;

    .line 10
    :goto_1
    new-instance p3, Le/a/j4/a/c;

    invoke-direct {p3, p1, p0, p2}, Le/a/j4/a/c;-><init>(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/j4/a/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/j4/a/a;->a:Le/a/j4/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/j4/a/d;->li()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/j4/a/a;->a:Le/a/j4/a/d;

    invoke-interface {v0}, Le/a/j4/a/d;->b0()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/j4/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/j4/a/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/j4/a/a;->a:Le/a/j4/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/j4/a/d;->li()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/j4/a/a;->a:Le/a/j4/a/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/j4/a/d;->E(Z)V

    :cond_0
    return-void
.end method
