.class public final Le/m/a/f/e/a/a/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final c:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field public final synthetic d:Lcom/google/android/gms/common/api/internal/zak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zak;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/o0;->d:Lcom/google/android/gms/common/api/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le/m/a/f/e/a/a/o0;->a:I

    iput-object p3, p0, Le/m/a/f/e/a/a/o0;->b:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Le/m/a/f/e/a/a/o0;->c:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    iget-object v0, p0, Le/m/a/f/e/a/a/o0;->d:Lcom/google/android/gms/common/api/internal/zak;

    iget v1, p0, Le/m/a/f/e/a/a/o0;->a:I

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zap;->o(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
