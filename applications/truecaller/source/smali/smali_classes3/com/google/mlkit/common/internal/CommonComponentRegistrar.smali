.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
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
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/m/h/a/d/a;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza:Le/m/d/m/o;

    sget-object v2, Le/m/h/a/d/l;->b:Le/m/d/m/o;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza:Le/m/d/m/o;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zza:Le/m/d/m/o;

    sget-object v5, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza:Le/m/d/m/o;

    const-class v6, Le/m/h/a/d/n/c;

    .line 2
    invoke-static {v6}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v6

    const-class v7, Le/m/h/a/d/g;

    .line 3
    new-instance v8, Le/m/d/m/x;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v6, v8}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v7, Le/m/h/a/b/c;->a:Le/m/d/m/r;

    .line 5
    invoke-virtual {v6, v7}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 6
    invoke-virtual {v6}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v6

    const-class v7, Le/m/h/a/d/h;

    .line 7
    invoke-static {v7}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v7

    sget-object v8, Le/m/h/a/b/b;->a:Le/m/d/m/r;

    .line 8
    invoke-virtual {v7, v8}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 9
    invoke-virtual {v7}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v7

    const-class v8, Le/m/h/a/c/c;

    .line 10
    invoke-static {v8}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v8

    const-class v11, Le/m/h/a/c/c$a;

    .line 11
    new-instance v12, Le/m/d/m/x;

    const/4 v13, 0x2

    invoke-direct {v12, v11, v13, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v8, v12}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v11, Le/m/h/a/b/e;->a:Le/m/d/m/r;

    .line 13
    invoke-virtual {v8, v11}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 14
    invoke-virtual {v8}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v8

    const-class v11, Le/m/h/a/d/d;

    .line 15
    invoke-static {v11}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v11

    const-class v12, Le/m/h/a/d/h;

    .line 16
    new-instance v13, Le/m/d/m/x;

    invoke-direct {v13, v12, v9, v9}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 17
    invoke-virtual {v11, v13}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v12, Le/m/h/a/b/d;->a:Le/m/d/m/r;

    .line 18
    invoke-virtual {v11, v12}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 19
    invoke-virtual {v11}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v11

    .line 20
    invoke-static {v0}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v12

    sget-object v13, Le/m/h/a/b/g;->a:Le/m/d/m/r;

    invoke-virtual {v12, v13}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    invoke-virtual {v12}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v12

    const-class v13, Le/m/h/a/d/b$a;

    .line 21
    invoke-static {v13}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v13

    .line 22
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v0, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 23
    invoke-virtual {v13, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 24
    new-instance v14, Le/m/d/m/x;

    invoke-direct {v14, v0, v9, v10}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 25
    invoke-virtual {v13, v14}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v0, Le/m/h/a/b/f;->a:Le/m/d/m/r;

    .line 26
    invoke-virtual {v13, v0}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 27
    invoke-virtual {v13}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    move-object v9, v11

    move-object v10, v12

    move-object v11, v0

    .line 28
    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/mlkit_common/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/zzad;

    move-result-object v0

    return-object v0
.end method
