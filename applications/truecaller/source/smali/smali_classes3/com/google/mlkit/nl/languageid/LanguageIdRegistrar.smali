.class public Lcom/google/mlkit/nl/languageid/LanguageIdRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/s;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;->zza:Le/m/d/m/o;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_language_id/zzcz;->zza:Le/m/d/m/o;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_language_id/zzct;->zza:Le/m/d/m/o;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_language_id/zzcr;->zza:Le/m/d/m/o;

    .line 2
    invoke-static {v1}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v6

    const-class v7, Landroid/content/Context;

    .line 3
    new-instance v8, Le/m/d/m/x;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v6, v8}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 5
    new-instance v7, Le/m/d/m/x;

    invoke-direct {v7, v0, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v6, v7}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v7, Le/m/h/b/a/d;->a:Le/m/d/m/r;

    .line 7
    invoke-virtual {v6, v7}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 8
    invoke-virtual {v6}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;

    .line 9
    invoke-static {v7}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v7

    .line 10
    new-instance v8, Le/m/d/m/x;

    invoke-direct {v8, v0, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 11
    invoke-virtual {v7, v8}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    .line 12
    new-instance v0, Le/m/d/m/x;

    invoke-direct {v0, v1, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 13
    invoke-virtual {v7, v0}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v0, Le/m/h/a/d/d;

    .line 14
    new-instance v1, Le/m/d/m/x;

    invoke-direct {v1, v0, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 15
    invoke-virtual {v7, v1}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v0, Le/m/h/b/a/c;->a:Le/m/d/m/r;

    .line 16
    invoke-virtual {v7, v0}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 17
    invoke-virtual {v7}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v7

    .line 18
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_language_id/zzk;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzk;

    move-result-object v0

    return-object v0
.end method
