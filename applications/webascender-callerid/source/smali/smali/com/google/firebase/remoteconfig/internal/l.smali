.class final synthetic Lcom/google/firebase/remoteconfig/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/common/util/d;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/firebase/remoteconfig/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/util/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/l;->f:Lcom/google/android/gms/common/util/d;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/l;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/l;->h:Lcom/google/firebase/remoteconfig/internal/f;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/util/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/l;-><init>(Lcom/google/android/gms/common/util/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/l;->f:Lcom/google/android/gms/common/util/d;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/l;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/l;->h:Lcom/google/firebase/remoteconfig/internal/f;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/m;->k(Lcom/google/android/gms/common/util/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-void
.end method
