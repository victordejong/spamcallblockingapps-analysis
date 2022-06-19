.class public final Lcom/google/android/gms/internal/consent_sdk/zzax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/i/g;
.implements Le/m/a/i/h;


# instance fields
.field private final zza:Le/m/a/i/h;

.field private final zzb:Le/m/a/i/g;


# direct methods
.method private constructor <init>(Le/m/a/i/h;Le/m/a/i/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zza:Le/m/a/i/h;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zzb:Le/m/a/i/g;

    return-void
.end method

.method public synthetic constructor <init>(Le/m/a/i/h;Le/m/a/i/g;Lcom/google/android/gms/internal/consent_sdk/zzav;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzax;-><init>(Le/m/a/i/h;Le/m/a/i/g;)V

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadFailure(Le/m/a/i/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zzb:Le/m/a/i/g;

    invoke-interface {v0, p1}, Le/m/a/i/g;->onConsentFormLoadFailure(Le/m/a/i/f;)V

    return-void
.end method

.method public final onConsentFormLoadSuccess(Le/m/a/i/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzax;->zza:Le/m/a/i/h;

    invoke-interface {v0, p1}, Le/m/a/i/h;->onConsentFormLoadSuccess(Le/m/a/i/b;)V

    return-void
.end method
