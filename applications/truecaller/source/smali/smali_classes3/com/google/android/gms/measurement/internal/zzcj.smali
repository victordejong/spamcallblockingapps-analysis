.class public final synthetic Lcom/google/android/gms/measurement/internal/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/k;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/zzcj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzcj;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzcj;->a:Lcom/google/android/gms/measurement/internal/zzcj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzdu;->b:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznf;->zzv()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
