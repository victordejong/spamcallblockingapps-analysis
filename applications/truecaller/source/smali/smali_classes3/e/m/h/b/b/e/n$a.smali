.class public Le/m/h/b/b/e/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/b/b/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/n$a;->a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Le/m/h/b/b/e/n;
    .locals 3

    .line 1
    new-instance v0, Le/m/h/b/b/e/n;

    iget-object v1, p0, Le/m/h/b/b/e/n$a;->a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Le/m/h/b/b/e/n;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;Le/m/h/b/b/e/m;)V

    return-object v0
.end method
