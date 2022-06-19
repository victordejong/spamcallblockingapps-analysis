.class final synthetic Lcom/google/android/gms/common/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/common/r;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/s;->f:Z

    iput-object p2, p0, Lcom/google/android/gms/common/s;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/s;->h:Lcom/google/android/gms/common/r;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/s;->f:Z

    iget-object v1, p0, Lcom/google/android/gms/common/s;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/s;->h:Lcom/google/android/gms/common/r;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/q;->b(ZLjava/lang/String;Lcom/google/android/gms/common/r;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
