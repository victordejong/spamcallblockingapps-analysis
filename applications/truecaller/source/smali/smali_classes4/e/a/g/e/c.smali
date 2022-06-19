.class public final Le/a/g/e/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g/e/d;


# direct methods
.method public constructor <init>(Le/a/g/e/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/e/c;->b:Le/a/g/e/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/g/e/c;->b:Le/a/g/e/d;

    .line 2
    iget-object v2, v1, Le/a/g/e/d;->j:Le/a/g/e/f;

    invoke-virtual {v1}, Le/a/g/e/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, v2, Le/a/g/e/f;->a:Le/a/i/l;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Le/a/g/e/f;->a(Ljava/lang/String;)Le/a/i/l;

    move-result-object v4

    .line 4
    :goto_0
    iget-object v5, v2, Le/a/g/e/f;->c:Le/a/b0/e/r/a;

    const-string v6, "profileNumber"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "accountSettings.getStrin\u2026tings.PROFILE_NUMBER, \"\")"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x4

    new-array v10, v9, [Lcom/google/android/gms/ads/AdSize;

    .line 5
    sget-object v11, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v12, "AdSize.BANNER"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v11, v10, v13

    .line 6
    sget-object v14, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v15, "AdSize.LARGE_BANNER"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x1

    aput-object v14, v10, v16

    .line 7
    sget-object v17, Le/a/i/f0/f;->c:Le/a/i/f0/f;

    .line 8
    sget-object v17, Le/a/i/f0/f;->a:Lcom/google/android/gms/ads/AdSize;

    const/16 v18, 0x2

    aput-object v17, v10, v18

    .line 9
    sget-object v19, Le/a/i/f0/f;->b:Lcom/google/android/gms/ads/AdSize;

    const/16 v20, 0x3

    aput-object v19, v10, v20

    .line 10
    invoke-virtual {v2, v4, v5, v3, v10}, Le/a/g/e/f;->b(Le/a/i/l;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)Le/a/i/s;

    move-result-object v2

    .line 11
    iget-object v3, v1, Le/a/g/e/d;->g:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {v1, v3}, Le/a/g/e/d;->e(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v3

    .line 13
    iget-object v4, v1, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {v1}, Le/a/g/e/d;->b()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Le/a/g/b;

    invoke-virtual {v4, v5}, Le/a/g/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Le/a/g/e/d;->i:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->N()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    move/from16 v4, v16

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    if-nez v4, :cond_4

    .line 14
    iget-object v4, v1, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {v1}, Le/a/g/e/d;->b()Ljava/lang/String;

    move-result-object v5

    check-cast v4, Le/a/g/b;

    invoke-virtual {v4, v5}, Le/a/g/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Le/a/g/e/d;->i:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->K()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    move/from16 v3, v16

    goto :goto_2

    :cond_2
    move v3, v13

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v13

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v3, v16

    :goto_4
    if-eqz v3, :cond_6

    .line 15
    iget-object v2, v1, Le/a/g/e/d;->j:Le/a/g/e/f;

    invoke-virtual {v1}, Le/a/g/e/d;->b()Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v3, v2, Le/a/g/e/f;->a:Le/a/i/l;

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v1}, Le/a/g/e/f;->a(Ljava/lang/String;)Le/a/i/l;

    move-result-object v3

    .line 17
    :goto_5
    iget-object v4, v2, Le/a/g/e/f;->c:Le/a/b0/e/r/a;

    invoke-interface {v4, v6, v7}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/google/android/gms/ads/AdSize;

    .line 18
    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v11, v5, v13

    .line 19
    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v14, v5, v16

    .line 20
    sget-object v6, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    const-string v7, "AdSize.MEDIUM_RECTANGLE"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v18

    aput-object v17, v5, v20

    aput-object v19, v5, v9

    .line 21
    invoke-virtual {v2, v3, v4, v1, v5}, Le/a/g/e/f;->b(Le/a/i/l;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)Le/a/i/s;

    move-result-object v2

    :cond_6
    return-object v2
.end method
