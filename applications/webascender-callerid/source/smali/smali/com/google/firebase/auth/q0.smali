.class final Lcom/google/firebase/auth/q0;
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
.field final synthetic a:Lcom/google/firebase/auth/r;

.field final synthetic b:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/q0;->b:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/g;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/auth/internal/i0;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/g;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/g;->n()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Error while validating application identity: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 4
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "FirebaseAuth"

    .line 5
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Proceeding without any application identifier."

    .line 6
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v2

    move-object v12, v11

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/i0;

    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/i0;->a()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/i0;

    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/i0;->b()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v11, v2

    .line 9
    :goto_1
    iget-object v1, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/auth/r;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/firebase/auth/q0;->b:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 11
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    invoke-virtual {v3}, Lcom/google/firebase/auth/r;->e()Lcom/google/firebase/auth/s$b;

    move-result-object v3

    .line 12
    invoke-static {v1, v2, v3}, Lcom/google/firebase/auth/FirebaseAuth;->n(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/s$b;)Lcom/google/firebase/auth/s$b;

    move-result-object v14

    iget-object v1, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 13
    invoke-virtual {v1}, Lcom/google/firebase/auth/r;->h()Lcom/google/firebase/auth/o;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/firebase/auth/internal/h;

    .line 14
    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/h;->B1()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/firebase/auth/q0;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->p(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/vj;

    move-result-object v1

    iget-object v5, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 15
    invoke-virtual {v5}, Lcom/google/firebase/auth/r;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/google/firebase/auth/q0;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v6}, Lcom/google/firebase/auth/FirebaseAuth;->o(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 16
    invoke-virtual {v9}, Lcom/google/firebase/auth/r;->g()Lcom/google/firebase/auth/s$a;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 17
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->i()Z

    move-result v10

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/xj;->a()Z

    move-result v13

    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 18
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->f()Ljava/util/concurrent/Executor;

    move-result-object v15

    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 19
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->j()Landroid/app/Activity;

    move-result-object v16

    move-object v3, v1

    .line 20
    invoke-virtual/range {v3 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->f(Lcom/google/firebase/auth/internal/h;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/s$b;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/g;

    return-void

    :cond_3
    iget-object v1, v0, Lcom/google/firebase/auth/q0;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->p(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/vj;

    move-result-object v1

    iget-object v5, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 21
    invoke-virtual {v5}, Lcom/google/firebase/auth/r;->k()Lcom/google/firebase/auth/t;

    move-result-object v5

    iget-object v6, v0, Lcom/google/firebase/auth/q0;->b:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v6}, Lcom/google/firebase/auth/FirebaseAuth;->o(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 22
    invoke-virtual {v9}, Lcom/google/firebase/auth/r;->g()Lcom/google/firebase/auth/s$a;

    move-result-object v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 23
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->i()Z

    move-result v10

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/xj;->a()Z

    move-result v13

    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 24
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->f()Ljava/util/concurrent/Executor;

    move-result-object v15

    iget-object v2, v0, Lcom/google/firebase/auth/q0;->a:Lcom/google/firebase/auth/r;

    .line 25
    invoke-virtual {v2}, Lcom/google/firebase/auth/r;->j()Landroid/app/Activity;

    move-result-object v16

    move-object v3, v1

    .line 26
    invoke-virtual/range {v3 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->g(Lcom/google/firebase/auth/internal/h;Lcom/google/firebase/auth/t;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/s$b;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/g;

    return-void
.end method
