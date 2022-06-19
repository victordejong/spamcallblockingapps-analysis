.class public final synthetic Le/m/h/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/a/c;

    invoke-direct {v0}, Le/m/h/b/a/c;-><init>()V

    sput-object v0, Le/m/h/b/a/c;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    const-class v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    const-class v2, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    .line 3
    invoke-interface {p1, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    const-class v3, Le/m/h/a/d/d;

    .line 4
    invoke-interface {p1, v3}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/a/d/d;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Le/m/h/a/d/d;)V

    return-object v0
.end method
