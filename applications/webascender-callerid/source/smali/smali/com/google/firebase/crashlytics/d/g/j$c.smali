.class Lcom/google/firebase/crashlytics/d/g/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/g/j;->F(Lcom/google/firebase/crashlytics/d/m/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/g<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/util/Date;

.field final synthetic g:Ljava/lang/Throwable;

.field final synthetic h:Ljava/lang/Thread;

.field final synthetic i:Lcom/google/firebase/crashlytics/d/m/e;

.field final synthetic j:Lcom/google/firebase/crashlytics/d/g/j;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/g/j;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/d/m/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->f:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->g:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->h:Ljava/lang/Thread;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->i:Lcom/google/firebase/crashlytics/d/m/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tasks/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->f:Ljava/util/Date;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/j;->a(Ljava/util/Date;)J

    move-result-wide v5

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/j;->b(Lcom/google/firebase/crashlytics/d/g/j;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Tried to write a fatal exception while no session was open."

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/g/j;->e(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/g/m;->a()Z

    .line 7
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/g/j;->f(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/d0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->g:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->h:Ljava/lang/Thread;

    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/crashlytics/d/g/d0;->l(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 8
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->f:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/firebase/crashlytics/d/g/j;->g(Lcom/google/firebase/crashlytics/d/g/j;J)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/g/j;->p()V

    .line 10
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/g/j;->h(Lcom/google/firebase/crashlytics/d/g/j;)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/g/j;->i(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/g/r;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->j:Lcom/google/firebase/crashlytics/d/g/j;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/j;->j(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/h;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j$c;->i:Lcom/google/firebase/crashlytics/d/m/e;

    .line 15
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/m/e;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/crashlytics/d/g/j$c$a;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/crashlytics/d/g/j$c$a;-><init>(Lcom/google/firebase/crashlytics/d/g/j$c;Ljava/util/concurrent/Executor;)V

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/tasks/g;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j$c;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
