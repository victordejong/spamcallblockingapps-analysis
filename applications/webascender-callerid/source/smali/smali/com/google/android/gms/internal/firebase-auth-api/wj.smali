.class final Lcom/google/android/gms/internal/firebase-auth-api/wj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/firebase-auth-api/gi<",
        "Lcom/google/android/gms/internal/firebase-auth-api/tk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/internal/firebase-auth-api/tk;

.field private final g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/tk;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/wj;->f:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/wj;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/e;->r()Lcom/google/android/gms/common/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/wj;->g:Landroid/content/Context;

    const v2, 0xbdfcb8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/e;->j(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/xj;->b(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/wj;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/wj;->f:Lcom/google/android/gms/internal/firebase-auth-api/tk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/tk;->b()Lcom/google/android/gms/internal/firebase-auth-api/tk;

    move-result-object v2

    iput-boolean v1, v2, Lcom/google/android/gms/internal/firebase-auth-api/ii;->f:Z

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/ji;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/uk;->c:Lcom/google/android/gms/common/api/a;

    new-instance v4, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    new-instance v5, Lcom/google/firebase/h;

    invoke-direct {v5}, Lcom/google/firebase/h;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/c$a$a;->b(Lcom/google/android/gms/common/api/internal/p;)Lcom/google/android/gms/common/api/c$a$a;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object v4

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/ji;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/gi;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/gi;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-object v0
.end method
