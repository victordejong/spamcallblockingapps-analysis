.class public final Lcom/google/firebase/auth/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/auth/FirebaseAuth;

.field private b:Ljava/lang/Long;

.field private c:Lcom/google/firebase/auth/s$b;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Activity;

.field private g:Lcom/google/firebase/auth/s$a;

.field private h:Lcom/google/firebase/auth/o;

.field private i:Lcom/google/firebase/auth/t;

.field private j:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/s$b;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/s$a;Lcom/google/firebase/auth/o;Lcom/google/firebase/auth/t;ZLcom/google/firebase/auth/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/r;->a:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p5, p0, Lcom/google/firebase/auth/r;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/r;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/firebase/auth/r;->c:Lcom/google/firebase/auth/s$b;

    iput-object p6, p0, Lcom/google/firebase/auth/r;->f:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/firebase/auth/r;->d:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/firebase/auth/r;->g:Lcom/google/firebase/auth/s$a;

    iput-object p8, p0, Lcom/google/firebase/auth/r;->h:Lcom/google/firebase/auth/o;

    iput-object p9, p0, Lcom/google/firebase/auth/r;->i:Lcom/google/firebase/auth/t;

    iput-boolean p10, p0, Lcom/google/firebase/auth/r;->j:Z

    return-void
.end method

.method public static a(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/r$a;
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/r$a;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/r$a;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->a:Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public final e()Lcom/google/firebase/auth/s$b;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->c:Lcom/google/firebase/auth/s$b;

    return-object v0
.end method

.method public final f()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final g()Lcom/google/firebase/auth/s$a;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->g:Lcom/google/firebase/auth/s$a;

    return-object v0
.end method

.method public final h()Lcom/google/firebase/auth/o;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->h:Lcom/google/firebase/auth/o;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/r;->j:Z

    return v0
.end method

.method public final j()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->f:Landroid/app/Activity;

    return-object v0
.end method

.method public final k()Lcom/google/firebase/auth/t;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->i:Lcom/google/firebase/auth/t;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/r;->h:Lcom/google/firebase/auth/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
