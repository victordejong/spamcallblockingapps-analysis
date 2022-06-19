.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Le/m/a/i/d;


# direct methods
.method private constructor <init>(Le/m/a/i/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->zza:Le/m/a/i/d;

    return-void
.end method

.method public static zza(Le/m/a/i/d;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzu;-><init>(Le/m/a/i/d;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->zza:Le/m/a/i/d;

    invoke-interface {v0}, Le/m/a/i/d;->a()V

    return-void
.end method
