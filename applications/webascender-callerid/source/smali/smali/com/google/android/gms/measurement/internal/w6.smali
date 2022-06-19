.class final synthetic Lcom/google/android/gms/measurement/internal/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/measurement/internal/x6;

.field private final g:I

.field private final h:Ljava/lang/Exception;

.field private final i:[B

.field private final j:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/x6;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/x6;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/w6;->g:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/w6;->h:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/w6;->i:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/w6;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w6;->f:Lcom/google/android/gms/measurement/internal/x6;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/w6;->g:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w6;->h:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w6;->i:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/w6;->j:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/x6;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
