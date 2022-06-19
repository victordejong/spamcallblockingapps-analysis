.class public final synthetic Lcom/google/android/gms/internal/mlkit_translate/zzia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final zza:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzia;->zza:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzia;->zza:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Lorg/json/JSONObject;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
