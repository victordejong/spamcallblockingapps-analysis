.class public final synthetic Lcom/google/android/gms/internal/firebase_messaging/zzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/e;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/firebase_messaging/zzv;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase_messaging/zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_messaging/zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_messaging/zzv;->zza:Lcom/google/android/gms/internal/firebase_messaging/zzv;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Le/m/d/r/f;

    sget p2, Lcom/google/android/gms/internal/firebase_messaging/zzw;->zza:I

    new-instance p2, Le/m/d/r/c;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Couldn\'t find encoder for type "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p1}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
