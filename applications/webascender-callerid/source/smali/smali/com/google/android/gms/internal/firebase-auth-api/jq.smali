.class public Lcom/google/android/gms/internal/firebase-auth-api/jq;
.super Lcom/google/android/gms/internal/firebase-auth-api/to;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/e<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/jq<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase-auth-api/to<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/internal/firebase-auth-api/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected g:Lcom/google/android/gms/internal/firebase-auth-api/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected h:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/to;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->f:Lcom/google/android/gms/internal/firebase-auth-api/e;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/e;->n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/e;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    return-void
.end method

.method private static final b(Lcom/google/android/gms/internal/firebase-auth-api/e;Lcom/google/android/gms/internal/firebase-auth-api/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/n0;->a()Lcom/google/android/gms/internal/firebase-auth-api/n0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n0;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/r0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/internal/firebase-auth-api/uo;)Lcom/google/android/gms/internal/firebase-auth-api/to;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->e()Lcom/google/android/gms/internal/firebase-auth-api/jq;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/e;->n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->b(Lcom/google/android/gms/internal/firebase-auth-api/e;Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    return-void
.end method

.method public final e()Lcom/google/android/gms/internal/firebase-auth-api/jq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->f:Lcom/google/android/gms/internal/firebase-auth-api/e;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/e;->n(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/jq;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->f()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    return-object v0
.end method

.method public f()Lcom/google/android/gms/internal/firebase-auth-api/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/n0;->a()Lcom/google/android/gms/internal/firebase-auth-api/n0;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/n0;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/r0;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/r0;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/firebase-auth-api/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->f()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V

    .line 4
    throw v1
.end method

.method public final i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->g:Lcom/google/android/gms/internal/firebase-auth-api/e;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->b(Lcom/google/android/gms/internal/firebase-auth-api/e;Lcom/google/android/gms/internal/firebase-auth-api/e;)V

    return-object p0
.end method

.method public bridge synthetic j()Lcom/google/android/gms/internal/firebase-auth-api/f0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->f()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/internal/firebase-auth-api/f0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/jq;->f:Lcom/google/android/gms/internal/firebase-auth-api/e;

    return-object v0
.end method
