.class final Lcom/google/firebase/auth/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/c<",
        "Lcom/google/firebase/auth/internal/i0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/TimeUnit;

.field final synthetic d:Lcom/google/firebase/auth/s$b;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Ljava/util/concurrent/Executor;

.field final synthetic g:Z

.field final synthetic h:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/p0;->h:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/p0;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/firebase/auth/p0;->b:J

    iput-object p5, p0, Lcom/google/firebase/auth/p0;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lcom/google/firebase/auth/p0;->d:Lcom/google/firebase/auth/s$b;

    iput-object p7, p0, Lcom/google/firebase/auth/p0;->e:Landroid/app/Activity;

    iput-object p8, p0, Lcom/google/firebase/auth/p0;->f:Ljava/util/concurrent/Executor;

    iput-boolean p9, p0, Lcom/google/firebase/auth/p0;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/auth/internal/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->n()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error while validating application identity: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "FirebaseAuth"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Proceeding without any application identifier."

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v1

    move-object v12, v11

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/i0;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/i0;->a()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/i0;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/i0;->b()Ljava/lang/String;

    move-result-object p1

    move-object v11, p1

    move-object v12, v1

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/auth/p0;->h:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v3, p0, Lcom/google/firebase/auth/p0;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/firebase/auth/p0;->b:J

    iget-object v6, p0, Lcom/google/firebase/auth/p0;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/google/firebase/auth/p0;->d:Lcom/google/firebase/auth/s$b;

    iget-object v8, p0, Lcom/google/firebase/auth/p0;->e:Landroid/app/Activity;

    iget-object v9, p0, Lcom/google/firebase/auth/p0;->f:Ljava/util/concurrent/Executor;

    iget-boolean v10, p0, Lcom/google/firebase/auth/p0;->g:Z

    .line 10
    invoke-virtual/range {v2 .. v12}, Lcom/google/firebase/auth/FirebaseAuth;->B(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
