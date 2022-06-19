.class final Lcom/google/android/gms/measurement/internal/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/measurement/internal/q3;

.field private final g:I

.field private final h:Ljava/lang/Throwable;

.field private final i:[B

.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/q3;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/r3;->f:Lcom/google/android/gms/measurement/internal/q3;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/r3;->g:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/r3;->h:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/r3;->i:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r3;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/r3;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r3;->f:Lcom/google/android/gms/measurement/internal/q3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r3;->j:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/r3;->g:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/r3;->h:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/r3;->i:[B

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/r3;->k:Ljava/util/Map;

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/q3;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
