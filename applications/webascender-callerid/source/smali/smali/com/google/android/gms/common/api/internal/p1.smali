.class public final Lcom/google/android/gms/common/api/internal/p1;
.super Lg/f/a/d/f/b/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d$b;
.implements Lcom/google/android/gms/common/api/d$c;


# static fields
.field private static h:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lg/f/a/d/f/f;",
            "Lg/f/a/d/f/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lg/f/a/d/f/f;",
            "Lg/f/a/d/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/common/internal/e;

.field private f:Lg/f/a/d/f/f;

.field private g:Lcom/google/android/gms/common/api/internal/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lg/f/a/d/f/c;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/p1;->h:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/p1;->h:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/p1;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/a$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/e;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lg/f/a/d/f/f;",
            "Lg/f/a/d/f/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lg/f/a/d/f/b/e;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/p1;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 5
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->e:Lcom/google/android/gms/common/internal/e;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/e;->g()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->d:Ljava/util/Set;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/p1;->c:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static synthetic J2(Lcom/google/android/gms/common/api/internal/p1;)Lcom/google/android/gms/common/api/internal/q1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p1;->g:Lcom/google/android/gms/common/api/internal/q1;

    return-object p0
.end method

.method static synthetic L2(Lcom/google/android/gms/common/api/internal/p1;Lg/f/a/d/f/b/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/p1;->N2(Lg/f/a/d/f/b/n;)V

    return-void
.end method

.method private final N2(Lg/f/a/d/f/b/n;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg/f/a/d/f/b/n;->y1()Lcom/google/android/gms/common/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->C1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lg/f/a/d/f/b/n;->z1()Lcom/google/android/gms/common/internal/k0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/k0;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k0;->z1()Lcom/google/android/gms/common/b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->C1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->g:Lcom/google/android/gms/common/api/internal/q1;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/q1;->a(Lcom/google/android/gms/common/b;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->m()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->g:Lcom/google/android/gms/common/api/internal/q1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k0;->y1()Lcom/google/android/gms/common/internal/k;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/p1;->d:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/q1;->c(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->g:Lcom/google/android/gms/common/api/internal/q1;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/q1;->a(Lcom/google/android/gms/common/b;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->m()V

    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/common/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->g:Lcom/google/android/gms/common/api/internal/q1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/q1;->a(Lcom/google/android/gms/common/b;)V

    return-void
.end method

.method public final F(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    invoke-interface {p1, p0}, Lg/f/a/d/f/f;->h(Lg/f/a/d/f/b/d;)V

    return-void
.end method

.method public final K2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->m()V

    :cond_0
    return-void
.end method

.method public final M2(Lcom/google/android/gms/common/api/internal/q1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->m()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->i(Ljava/lang/Integer;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/p1;->c:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/p1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->b:Landroid/os/Handler;

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/p1;->e:Lcom/google/android/gms/common/internal/e;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/e;->k()Lg/f/a/d/f/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 7
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$b;Lcom/google/android/gms/common/api/d$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lg/f/a/d/f/f;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->g:Lcom/google/android/gms/common/api/internal/q1;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->d:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    invoke-interface {p1}, Lg/f/a/d/f/f;->C()V

    return-void

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/o1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/o1;-><init>(Lcom/google/android/gms/common/api/internal/p1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j2(Lg/f/a/d/f/b/n;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p1;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/r1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/r1;-><init>(Lcom/google/android/gms/common/api/internal/p1;Lg/f/a/d/f/b/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final w(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/p1;->f:Lg/f/a/d/f/f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->m()V

    return-void
.end method
