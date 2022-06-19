.class public final Le/a/n/c1$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c1;->d(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.DriveManagerImpl$signOut$2"
    f = "DriveManagerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/n/c1;


# direct methods
.method public constructor <init>(Le/a/n/c1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/c1$e;->e:Le/a/n/c1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/n/c1$e;

    iget-object v0, p0, Le/a/n/c1$e;->e:Le/a/n/c1;

    invoke-direct {p1, v0, p2}, Le/a/n/c1$e;-><init>(Le/a/n/c1;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/n/c1$e;->e:Le/a/n/c1;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/n/c1;->g:Le/a/n/g1;

    .line 5
    iget-object v1, v0, Le/a/n/c1;->e:Landroid/content/Context;

    .line 6
    invoke-virtual {p2, v1}, Le/a/n/g1;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, v0, Le/a/n/c1;->e:Landroid/content/Context;

    .line 8
    invoke-virtual {v0, p2}, Le/a/n/c1;->j(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/a/n/b1;

    invoke-direct {v1, v0}, Le/a/n/b1;-><init>(Le/a/n/c1;)V

    const-string v0, "$this$await"

    .line 12
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptionCallback"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {v1, p2}, Le/a/n/b1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/n/c1$e;->e:Le/a/n/c1;

    .line 3
    iget-object v0, p1, Le/a/n/c1;->g:Le/a/n/g1;

    .line 4
    iget-object p1, p1, Le/a/n/c1;->e:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p1}, Le/a/n/g1;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Le/a/n/c1$e;->e:Le/a/n/c1;

    .line 7
    iget-object v0, p1, Le/a/n/c1;->e:Landroid/content/Context;

    .line 8
    invoke-virtual {p1, v0}, Le/a/n/c1;->j(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/n/c1$e;->e:Le/a/n/c1;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/a/n/b1;

    invoke-direct {v1, v0}, Le/a/n/b1;-><init>(Le/a/n/c1;)V

    const-string v0, "$this$await"

    .line 12
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptionCallback"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {v1, p1}, Le/a/n/b1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
