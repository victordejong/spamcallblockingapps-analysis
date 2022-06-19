.class public final synthetic Lcom/google/android/libraries/places/internal/zzai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final zza:Le/d/e/x/g;


# direct methods
.method private constructor <init>(Le/d/e/x/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzai;->zza:Le/d/e/x/g;

    return-void
.end method

.method public static zza(Le/d/e/x/g;)Lcom/google/android/gms/tasks/OnTokenCanceledListener;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzai;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzai;-><init>(Le/d/e/x/g;)V

    return-object v0
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzai;->zza:Le/d/e/x/g;

    invoke-virtual {v0}, Le/d/e/x/g;->cancel()V

    return-void
.end method
