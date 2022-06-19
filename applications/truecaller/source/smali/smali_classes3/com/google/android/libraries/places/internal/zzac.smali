.class public final synthetic Lcom/google/android/libraries/places/internal/zzac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final zza:Le/d/e/x/h;


# direct methods
.method private constructor <init>(Le/d/e/x/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzac;->zza:Le/d/e/x/h;

    return-void
.end method

.method public static zza(Le/d/e/x/h;)Lcom/google/android/gms/tasks/OnTokenCanceledListener;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzac;-><init>(Le/d/e/x/h;)V

    return-object v0
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzac;->zza:Le/d/e/x/h;

    invoke-virtual {v0}, Le/d/e/x/i;->cancel()V

    return-void
.end method
