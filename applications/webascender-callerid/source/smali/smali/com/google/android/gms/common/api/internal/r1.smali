.class final Lcom/google/android/gms/common/api/internal/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f:Lg/f/a/d/f/b/n;

.field private final synthetic g:Lcom/google/android/gms/common/api/internal/p1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/p1;Lg/f/a/d/f/b/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r1;->g:Lcom/google/android/gms/common/api/internal/p1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/r1;->f:Lg/f/a/d/f/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r1;->g:Lcom/google/android/gms/common/api/internal/p1;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r1;->f:Lg/f/a/d/f/b/n;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/p1;->L2(Lcom/google/android/gms/common/api/internal/p1;Lg/f/a/d/f/b/n;)V

    return-void
.end method
