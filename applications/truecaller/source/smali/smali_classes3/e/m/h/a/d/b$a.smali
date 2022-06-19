.class public Le/m/h/a/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/h/a/d/a;

.field public final b:Lcom/google/android/gms/internal/mlkit_common/zzds;


# direct methods
.method public constructor <init>(Le/m/h/a/d/a;Lcom/google/android/gms/internal/mlkit_common/zzds;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/a/d/b$a;->a:Le/m/h/a/d/a;

    .line 3
    iput-object p2, p0, Le/m/h/a/d/b$a;->b:Lcom/google/android/gms/internal/mlkit_common/zzds;

    return-void
.end method
