.class public final Le/m/a/f/e/a/a/j;
.super Le/m/a/f/e/a/a/q;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaar;

.field public final synthetic c:Lcom/google/android/gms/signin/internal/zak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p2, p0, Le/m/a/f/e/a/a/j;->b:Lcom/google/android/gms/common/api/internal/zaar;

    iput-object p3, p0, Le/m/a/f/e/a/a/j;->c:Lcom/google/android/gms/signin/internal/zak;

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/e/a/a/q;-><init>(Lcom/google/android/gms/common/api/internal/zaba;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Le/m/a/f/e/a/a/j;->b:Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v1, p0, Le/m/a/f/e/a/a/j;->c:Lcom/google/android/gms/signin/internal/zak;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zaar;->p(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/signin/internal/zak;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/signin/internal/zak;->c:Lcom/google/android/gms/common/internal/zav;

    const-string v2, "null reference"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v3, v1, Lcom/google/android/gms/common/internal/zav;->c:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->p2()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x30

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-static {v4, v2, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GACConnecting"

    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iput-boolean v5, v0, Lcom/google/android/gms/common/api/internal/zaar;->n:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->o2()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v3

    .line 8
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->o:Lcom/google/android/gms/common/internal/IAccountAccessor;

    .line 10
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/zav;->d:Z

    .line 11
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zaar;->p:Z

    .line 12
    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/zav;->e:Z

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->q:Z

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->l:Z

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v5

    :cond_3
    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->l()V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->i()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/internal/zaar;->m(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_2
    return-void
.end method
