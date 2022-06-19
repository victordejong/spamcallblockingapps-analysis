.class public Le/m/b/x/a/b/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/b/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/a/b/a/a/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/m/b/x/a/b/a/a/a/a;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Le/m/b/x/a/b/a/a/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/m/b/x/b/n;)V
    .locals 1

    .line 1
    new-instance v0, Le/m/b/x/a/b/a/a/a/a$a;

    invoke-direct {v0, p0}, Le/m/b/x/a/b/a/a/a/a$a;-><init>(Le/m/b/x/a/b/a/a/a/a;)V

    .line 2
    iput-object v0, p1, Le/m/b/x/b/n;->a:Le/m/b/x/b/j;

    .line 3
    iput-object v0, p1, Le/m/b/x/b/n;->n:Le/m/b/x/b/u;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 1
    :catch_0
    :try_start_0
    iget-object v0, p0, Le/m/b/x/a/b/a/a/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Le/m/b/x/a/b/a/a/a/a;->c:Ljava/lang/String;

    iget-object v2, p0, Le/m/b/x/a/b/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 2
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method
