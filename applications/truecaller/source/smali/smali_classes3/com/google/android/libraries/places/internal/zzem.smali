.class public final synthetic Lcom/google/android/libraries/places/internal/zzem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzem;->zza:Lcom/google/android/libraries/places/internal/zzer;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzem;->zza:Lcom/google/android/libraries/places/internal/zzer;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzen;->zza(Lcom/google/android/libraries/places/internal/zzer;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
