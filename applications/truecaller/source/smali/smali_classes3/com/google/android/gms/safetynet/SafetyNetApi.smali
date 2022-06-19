.class public interface abstract Lcom/google/android/gms/safetynet/SafetyNetApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdkWithMembers;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResult;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zzc;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;,
        Lcom/google/android/gms/safetynet/SafetyNetApi$zza;
    }
.end annotation


# virtual methods
.method public abstract verifyWithRecaptcha(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$RecaptchaTokenResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
