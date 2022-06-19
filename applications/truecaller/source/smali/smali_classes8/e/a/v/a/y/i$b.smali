.class public final Le/a/v/a/y/i$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/y/i;-><init>(Le/a/v/a/y/j;Le/a/u3/g;Le/a/b0/e/r/a;Le/a/i/f0/j/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/y/i;


# direct methods
.method public constructor <init>(Le/a/v/a/y/i;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/y/i$b;->b:Le/a/v/a/y/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/v/a/y/i$b;->b:Le/a/v/a/y/i;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Le/a/i/s$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le/a/i/s$a;-><init>(Le/a/i/s;I)V

    .line 4
    iget-object v4, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v4}, Le/a/v/a/y/j;->d()Le/a/i/f0/j/c;

    move-result-object v4

    const-string v5, "callDetailsLargeUnifiedAdUnitId"

    invoke-interface {v4, v5}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Le/a/i/s$a;->c(Ljava/lang/String;)Le/a/i/s$b;

    .line 5
    iget-object v4, v0, Le/a/v/a/y/i;->h:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    const-string v5, "it"

    const-string v6, "profileNumber"

    const-string v7, "DETAILS"

    if-eqz v4, :cond_2

    .line 6
    sget-object v4, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 7
    new-instance v4, Le/a/i/b0/d/a$a;

    invoke-direct {v4}, Le/a/i/b0/d/a$a;-><init>()V

    .line 8
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 9
    iget-object v0, v0, Le/a/v/a/y/i;->i:Le/a/b0/e/r/a;

    invoke-interface {v0, v6}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_0

    move-object v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 10
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Le/a/i/b0/d/a$a;->b(Ljava/lang/String;)Le/a/i/b0/d/a$a;

    .line 11
    :cond_1
    invoke-virtual {v4}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object v0

    .line 12
    invoke-virtual {v1, v0}, Le/a/i/s$a;->a(Le/a/i/b0/d/a;)Le/a/i/s$a;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v4, Le/a/i/o$b;

    invoke-direct {v4, v7}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Le/a/v/a/y/i;->i:Le/a/b0/e/r/a;

    invoke-interface {v0, v6}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_3

    move-object v2, v0

    :cond_3
    if-eqz v2, :cond_4

    .line 15
    iput-object v2, v4, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 16
    :cond_4
    invoke-virtual {v4}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object v0

    const-string v2, "CampaignConfig.Builder(A\u2026      }\n        }.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Le/a/i/s$a;->d(Le/a/i/o;)Le/a/i/s$a;

    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    .line 18
    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v4, "AdSize.BANNER"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    const-string v5, "AdSize.LARGE_BANNER"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v3

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    const-string v5, "AdSize.MEDIUM_RECTANGLE"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 19
    sget-object v2, Le/a/i/f0/f;->c:Le/a/i/f0/f;

    .line 20
    sget-object v2, Le/a/i/f0/f;->a:Lcom/google/android/gms/ads/AdSize;

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const/4 v2, 0x4

    .line 21
    sget-object v7, Le/a/i/f0/f;->b:Lcom/google/android/gms/ads/AdSize;

    aput-object v7, v0, v2

    .line 22
    invoke-virtual {v1, v0}, Le/a/i/s$a;->e([Lcom/google/android/gms/ads/AdSize;)Le/a/i/s$a;

    .line 23
    iput v6, v1, Le/a/i/s$a;->p:I

    .line 24
    iput-boolean v3, v1, Le/a/i/s$a;->m:Z

    const-string v0, "detailView"

    .line 25
    iput-object v0, v1, Le/a/i/s$a;->i:Ljava/lang/String;

    new-array v0, v6, [Lcom/truecaller/ads/CustomTemplate;

    .line 26
    sget-object v2, Lcom/truecaller/ads/CustomTemplate;->NATIVE_BANNER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v2, v0, v4

    .line 27
    sget-object v2, Lcom/truecaller/ads/CustomTemplate;->MEGA_NATIVE_BANNER_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v2, v0, v3

    .line 28
    sget-object v2, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v2, v0, v5

    .line 29
    invoke-virtual {v1, v0}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 30
    iput-boolean v4, v1, Le/a/i/s$a;->n:Z

    .line 31
    new-instance v0, Le/a/i/s;

    invoke-direct {v0, v1}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    return-object v0
.end method
