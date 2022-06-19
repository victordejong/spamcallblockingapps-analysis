.class public final Le/a/n/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/b/x/c/j/a;

.field public final b:Le/m/b/x/b/c0/e;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/b/x/c/j/a;

    invoke-direct {v0}, Le/m/b/x/c/j/a;-><init>()V

    iput-object v0, p0, Le/a/n/g1;->a:Le/m/b/x/c/j/a;

    .line 3
    new-instance v0, Le/m/b/x/b/c0/e;

    invoke-direct {v0}, Le/m/b/x/b/c0/e;-><init>()V

    iput-object v0, p0, Le/a/n/g1;->b:Le/m/b/x/b/c0/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    return-object p1
.end method
