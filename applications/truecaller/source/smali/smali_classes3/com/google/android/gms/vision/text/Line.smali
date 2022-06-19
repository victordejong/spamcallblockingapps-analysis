.class public Lcom/google/android/gms/vision/text/Line;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/vision/text/Text;


# instance fields
.field public a:Lcom/google/android/gms/internal/vision/zzac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/vision/text/Line;->a:Lcom/google/android/gms/internal/vision/zzac;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/Line;->a:Lcom/google/android/gms/internal/vision/zzac;

    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzac;->zzel:Ljava/lang/String;

    return-object v0
.end method
