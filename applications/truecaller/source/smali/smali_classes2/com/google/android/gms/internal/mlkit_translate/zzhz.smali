.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhz;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
