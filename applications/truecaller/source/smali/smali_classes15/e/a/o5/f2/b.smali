.class public Le/a/o5/f2/b;
.super Le/a/o5/f2/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Le/a/o5/f2/c;-><init>(Landroid/app/Application;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o5/f2/c;->a:Landroid/app/Application;

    .line 2
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a:Ljava/util/Set;

    .line 5
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->m:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->b:Lcom/google/android/gms/common/api/Api;

    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 11
    new-instance v1, Le/a/o5/f2/b$a;

    invoke-direct {v1, p0, v0}, Le/a/o5/f2/b$a;-><init>(Le/a/o5/f2/b;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/api/internal/zaaz;

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zaaz;->c:Lcom/google/android/gms/common/internal/zak;

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/internal/zak;->b(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->e()V

    return-void
.end method
