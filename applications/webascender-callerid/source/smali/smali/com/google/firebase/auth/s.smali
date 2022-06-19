.class public Lcom/google/firebase/auth/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/s$a;,
        Lcom/google/firebase/auth/s$b;
    }
.end annotation


# instance fields
.field private a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/s;->a:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/auth/q;->B1(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/q;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/firebase/auth/s;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/firebase/auth/s;

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->i()Lcom/google/firebase/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/s;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static c(Lcom/google/firebase/auth/r;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/auth/r;->b()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->C(Lcom/google/firebase/auth/r;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/s$b;Lcom/google/firebase/auth/s$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/s;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/auth/r;->a(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/r$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/r$a;->e(Ljava/lang/String;)Lcom/google/firebase/auth/r$a;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/google/firebase/auth/r$a;->f(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/r$a;

    .line 4
    invoke-virtual {v0, p5}, Lcom/google/firebase/auth/r$a;->b(Landroid/app/Activity;)Lcom/google/firebase/auth/r$a;

    .line 5
    invoke-virtual {v0, p6}, Lcom/google/firebase/auth/r$a;->c(Lcom/google/firebase/auth/s$b;)Lcom/google/firebase/auth/r$a;

    .line 6
    invoke-virtual {v0, p7}, Lcom/google/firebase/auth/r$a;->d(Lcom/google/firebase/auth/s$a;)Lcom/google/firebase/auth/r$a;

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/auth/r$a;->a()Lcom/google/firebase/auth/r;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/firebase/auth/s;->c(Lcom/google/firebase/auth/r;)V

    return-void
.end method
