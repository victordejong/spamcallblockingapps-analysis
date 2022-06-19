.class final Lcom/google/android/gms/common/api/internal/f0;
.super Lcom/google/android/gms/common/api/internal/j0;
.source "SourceFile"


# instance fields
.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic h:Lcom/google/android/gms/common/api/internal/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/z;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f0;->h:Lcom/google/android/gms/common/api/internal/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/j0;-><init>(Lcom/google/android/gms/common/api/internal/z;Lcom/google/android/gms/common/api/internal/y;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f0;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f0;->h:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/z;->t(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/q0;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->m:Lcom/google/android/gms/common/api/internal/l0;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f0;->h:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/z;->z(Lcom/google/android/gms/common/api/internal/z;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l0;->p:Ljava/util/Set;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/f0;->h:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/z;->F(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/internal/k;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/f0;->h:Lcom/google/android/gms/common/api/internal/z;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/z;->t(Lcom/google/android/gms/common/api/internal/z;)Lcom/google/android/gms/common/api/internal/q0;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/q0;->m:Lcom/google/android/gms/common/api/internal/l0;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/l0;->p:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/a$f;->f(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method
