.class public Lcom/hiya/stingray/s/e/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lg/g/a/a/g/a;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/a;Landroid/content/Context;)Lcom/hiya/stingray/q/a/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/j;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/hiya/stingray/q/a/j;-><init>(Lg/g/a/a/g/a;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/a;Landroid/content/Context;)V

    return-object v0
.end method

.method b(Landroid/content/Context;)Lcom/google/android/gms/common/api/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->v:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const v1, 0x7f1100d2

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/common/api/d$a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/d$a;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/auth/a/a;->e:Lcom/google/android/gms/common/api/a;

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/common/api/d$a;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d$c;)Lcom/google/android/gms/common/api/d$a;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/d$a;->b()Lcom/google/android/gms/common/api/d;

    move-result-object p1

    return-object p1
.end method

.method c(Lg/g/a/a/g/i/b;)Lcom/hiya/stingray/q/a/s/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/s/b;

    invoke-direct {v0, p1}, Lcom/hiya/stingray/q/a/s/b;-><init>(Lg/g/a/a/g/i/b;)V

    return-object v0
.end method

.method d(Lg/g/a/a/g/f;Lg/g/a/a/g/h/c;Lg/g/a/a/g/g;Lcom/hiya/stingray/q/b/q;Lcom/hiya/stingray/t/i1/x0;)Lcom/hiya/stingray/q/a/o;
    .locals 7

    .line 1
    new-instance v6, Lcom/hiya/stingray/q/a/p;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/q/a/p;-><init>(Lg/g/a/a/g/f;Lg/g/a/a/g/h/c;Lg/g/a/a/g/g;Lcom/hiya/stingray/q/b/q;Lcom/hiya/stingray/t/i1/x0;)V

    return-object v6
.end method

.method e(Lcom/hiya/stingray/q/a/k;Lcom/google/android/gms/common/api/d;Lg/g/a/a/h/a;)Lcom/hiya/stingray/q/a/q;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/a/r;

    invoke-direct {v0, p1, p2, p3}, Lcom/hiya/stingray/q/a/r;-><init>(Lcom/hiya/stingray/q/a/k;Lcom/google/android/gms/common/api/d;Lg/g/a/a/h/a;)V

    return-object v0
.end method
