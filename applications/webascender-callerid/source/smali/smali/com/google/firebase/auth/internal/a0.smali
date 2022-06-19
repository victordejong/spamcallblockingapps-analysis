.class final Lcom/google/firebase/auth/internal/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/c$a;


# instance fields
.field final synthetic a:Lcom/google/firebase/auth/internal/b0;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/a0;->a:Lcom/google/firebase/auth/internal/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/auth/internal/a0;->a:Lcom/google/firebase/auth/internal/b0;

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/b0;->c(Lcom/google/firebase/auth/internal/b0;Z)Z

    iget-object p1, p0, Lcom/google/firebase/auth/internal/a0;->a:Lcom/google/firebase/auth/internal/b0;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/b0;->b()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/a0;->a:Lcom/google/firebase/auth/internal/b0;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/b0;->c(Lcom/google/firebase/auth/internal/b0;Z)Z

    iget-object p1, p0, Lcom/google/firebase/auth/internal/a0;->a:Lcom/google/firebase/auth/internal/b0;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/auth/internal/b0;->d(Lcom/google/firebase/auth/internal/b0;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/auth/internal/a0;->a:Lcom/google/firebase/auth/internal/b0;

    invoke-static {p1}, Lcom/google/firebase/auth/internal/b0;->e(Lcom/google/firebase/auth/internal/b0;)Lcom/google/firebase/auth/internal/m;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/m;->a()V

    :cond_1
    return-void
.end method
