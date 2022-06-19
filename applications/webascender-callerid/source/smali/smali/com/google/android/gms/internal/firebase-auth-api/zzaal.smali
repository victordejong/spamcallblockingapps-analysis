.class public Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private f:Lcom/google/android/gms/internal/firebase-auth-api/f0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static b()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "CodedInputStream encountered a malformed varint."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/google/android/gms/internal/firebase-auth-api/zzaak;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    const-string v1, "Protocol message tag had invalid wire type."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaak;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static h()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "Failed to parse the message."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static i()Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    const-string v1, "Protocol message had invalid UTF-8."

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/f0;)Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->f:Lcom/google/android/gms/internal/firebase-auth-api/f0;

    return-object p0
.end method
