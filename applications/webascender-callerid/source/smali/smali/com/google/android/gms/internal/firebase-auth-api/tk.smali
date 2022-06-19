.class public final Lcom/google/android/gms/internal/firebase-auth-api/tk;
.super Lcom/google/android/gms/internal/firebase-auth-api/ii;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d$c;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/rk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/ii;-><init>()V

    const-string p2, "A valid API key must be provided"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/r;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/tk;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tk;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/firebase-auth-api/tk;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/tk;->g:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/tk;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/tk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/rk;)V

    return-object v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/tk;->b()Lcom/google/android/gms/internal/firebase-auth-api/tk;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/tk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/tk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/tk;->g:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/tk;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ii;->f:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/ii;->f:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/tk;->g:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->b([Ljava/lang/Object;)I

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ii;->f:Z

    xor-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method
