.class public final synthetic Lcom/google/android/gms/measurement/internal/zzca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/k;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/zzca;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzca;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzca;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzca;->a:Lcom/google/android/gms/measurement/internal/zzca;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdu;->b:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoa;->zze()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
