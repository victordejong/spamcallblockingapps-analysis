.class public final Le/a/c0/k$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c0/k;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.abtest.QaABTestFragment$addFirebaseInstanceIdView$1$1"
    f = "QaABTestFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c0/k$a;->e:Ls1/z/c/c0;

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

    new-instance p1, Le/a/c0/k$a;

    iget-object v0, p0, Le/a/c0/k$a;->e:Ls1/z/c/c0;

    invoke-direct {p1, v0, p2}, Le/a/c0/k$a;-><init>(Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c0/k$a;

    iget-object v0, p0, Le/a/c0/k$a;->e:Ls1/z/c/c0;

    invoke-direct {p1, v0, p2}, Le/a/c0/k$a;-><init>(Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c0/k$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "Unable to get firebase token"

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c0/k$a;->e:Ls1/z/c/c0;

    .line 3
    :try_start_0
    invoke-static {}, Le/m/d/w/h;->g()Le/m/d/w/h;

    move-result-object v1

    const-string v2, "FirebaseInstallations.getInstance()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Le/m/d/w/h;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const-string v2, "FirebaseInstallations.getInstance().id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v2

    const-string v3, "FirebaseMessaging.getInstance()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->f()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    const-string v3, "FirebaseMessaging.getInstance().token"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/m/d/w/h;->g()Le/m/d/w/h;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Le/m/d/w/h;->a(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    const-string v5, "FirebaseInstallations.ge\u2026nstance().getToken(false)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 6
    invoke-static {v1, v6, v5}, Le/a/e/a2;->h(Lcom/google/android/gms/tasks/Task;Ls1/z/b/l;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-static {v2, v6, v5}, Le/a/e/a2;->h(Lcom/google/android/gms/tasks/Task;Ls1/z/b/l;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v3, v6, v5}, Le/a/e/a2;->h(Lcom/google/android/gms/tasks/Task;Ls1/z/b/l;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/d/w/m;

    const-string v7, "id:\n%s\n\n token:\n%s\n\n authToken:\n%s\n\n%s "

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v1, v9, v4

    aput-object v2, v9, v5

    const/4 v1, 0x2

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Le/m/d/w/m;->a()Ljava/lang/String;

    move-result-object v6

    :cond_0
    aput-object v6, v9, v1

    const/4 v1, 0x3

    const-string v2, "Tap here to send"

    aput-object v2, v9, v1

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 12
    :goto_0
    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
