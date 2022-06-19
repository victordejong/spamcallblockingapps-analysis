.class public final Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
.super Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;)V

    .line 3
    sput-object v1, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;->d:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;-><init>(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;)V

    return-void
.end method
