.class public final Le/m/h/b/b/e/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/h/b/b/e/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/h/b/b/e/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_translate/zzhx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/v$a;->a:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    .line 3
    sget v0, Lcom/google/mlkit/nl/translate/R$xml;->rapid_response_client_defaults:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(I)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/h/b/b/e/v$a;->a:Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzhx;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
