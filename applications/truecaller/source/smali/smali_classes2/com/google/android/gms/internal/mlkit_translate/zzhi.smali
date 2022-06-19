.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final zza:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzhi;->zza:Le/m/d/m/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzhf;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    invoke-interface {p1, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;

    const-class v3, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    .line 3
    invoke-interface {p1, v3}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzhg;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_translate/zzhk$zza;Lcom/google/android/gms/internal/mlkit_translate/zzhg;)V

    return-object v0
.end method
