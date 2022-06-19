.class public final Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field public final b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

.field public final c:Le/m/h/a/d/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Le/m/h/a/d/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->a:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 3
    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->b:Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    .line 4
    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;->c:Le/m/h/a/d/d;

    return-void
.end method
