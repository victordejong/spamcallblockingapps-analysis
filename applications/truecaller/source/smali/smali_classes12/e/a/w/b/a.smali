.class public Le/a/w/b/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Le/a/w/b/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/w/b/b;

.field public final b:Le/a/w/b/d/a;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/w/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/w/b/b;Le/a/w/b/d/a;Le/a/w/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/w/b/a;->a:Le/a/w/b/b;

    .line 3
    iput-object p2, p0, Le/a/w/b/a;->b:Le/a/w/b/d/a;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/w/b/a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/w/b/a;->b:Le/a/w/b/d/a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->REFERRAL:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v0, Le/a/w/b/d/a$a;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/w/b/d/a$a;

    invoke-interface {p1}, Le/a/w/b/d/a$a;->a()Lx3/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Le/a/w/b/c/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/w/b/c/a;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/w/b/a;->a:Le/a/w/b/b;

    iget-object v1, p1, Le/a/w/b/c/a;->a:Ljava/lang/String;

    const-string v2, "referralCode"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/w/b/a;->a:Le/a/w/b/b;

    iget-object v1, p1, Le/a/w/b/c/a;->b:Ljava/lang/String;

    const-string v2, "referralLink"

    invoke-interface {v0, v2, v1}, Le/a/b0/g/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/w/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/w/b/a$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 5
    invoke-interface {v0}, Le/a/w/b/a$a;->af()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0, p1}, Le/a/w/b/a$a;->e4(Le/a/w/b/c/a;)V

    :goto_0
    return-void
.end method
