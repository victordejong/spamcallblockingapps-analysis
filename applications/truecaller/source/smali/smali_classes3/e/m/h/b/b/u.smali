.class public final synthetic Le/m/h/b/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lcom/google/mlkit/nl/translate/internal/TranslateJni;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/translate/internal/TranslateJni;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/u;->a:Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    iput-object p2, p0, Le/m/h/b/b/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/m/h/b/b/u;->a:Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    iget-object v1, p0, Le/m/h/b/b/u;->b:Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-wide v3, v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->i:J

    sget-object v5, Lcom/google/android/gms/internal/mlkit_translate/zza;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/mlkit/nl/translate/internal/TranslateJni;->nativeTranslate(J[B)[B

    move-result-object v0

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Lcom/google/mlkit/nl/translate/internal/TranslateJni$b; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Le/m/h/a/a;

    const/4 v2, 0x2

    const-string v3, "Error translating"

    invoke-direct {v1, v3, v2, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
