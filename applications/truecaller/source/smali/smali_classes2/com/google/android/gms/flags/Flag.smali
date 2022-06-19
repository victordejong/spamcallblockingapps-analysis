.class public abstract Lcom/google/android/gms/flags/Flag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/flags/Flag$StringFlag;,
        Lcom/google/android/gms/flags/Flag$LongFlag;,
        Lcom/google/android/gms/flags/Flag$IntegerFlag;,
        Lcom/google/android/gms/flags/Flag$BooleanFlag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Le/m/a/f/h/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/flags/Flag;->a:Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/google/android/gms/flags/Singletons;->b:Lcom/google/android/gms/flags/Singletons;

    const-class p1, Lcom/google/android/gms/flags/Singletons;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object p2, Lcom/google/android/gms/flags/Singletons;->b:Lcom/google/android/gms/flags/Singletons;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p2, Lcom/google/android/gms/flags/Singletons;->a:Lcom/google/android/gms/flags/FlagRegistry;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/flags/FlagRegistry;->a:Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
