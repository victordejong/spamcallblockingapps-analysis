.class public Le/m/b/x/a/b/a/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/b/j;
.implements Le/m/b/x/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/a/b/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public final synthetic c:Le/m/b/x/a/b/a/a/a/a;


# direct methods
.method public constructor <init>(Le/m/b/x/a/b/a/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/a/b/a/a/a/a$a;->c:Le/m/b/x/a/b/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/b/x/b/n;Le/m/b/x/b/q;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget p1, p2, Le/m/b/x/b/q;->f:I

    const/16 p2, 0x191

    if-ne p1, p2, :cond_0

    .line 2
    iget-boolean p1, p0, Le/m/b/x/a/b/a/a/a/a$a;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/m/b/x/a/b/a/a/a/a$a;->a:Z

    .line 4
    iget-object p2, p0, Le/m/b/x/a/b/a/a/a/a$a;->c:Le/m/b/x/a/b/a/a/a/a;

    iget-object p2, p2, Le/m/b/x/a/b/a/a/a/a;->a:Landroid/content/Context;

    iget-object p3, p0, Le/m/b/x/a/b/a/a/a/a$a;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 5
    :goto_0
    new-instance p2, Le/m/b/x/a/b/a/a/a/b;

    invoke-direct {p2, p1}, Le/m/b/x/a/b/a/a/a/b;-><init>(Lcom/google/android/gms/auth/GoogleAuthException;)V

    throw p2
.end method

.method public b(Le/m/b/x/b/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/b/x/a/b/a/a/a/a$a;->c:Le/m/b/x/a/b/a/a/a/a;

    invoke-virtual {v0}, Le/m/b/x/a/b/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/b/x/a/b/a/a/a/a$a;->b:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/b/x/a/b/a/a/a/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->t(Ljava/lang/String;)Le/m/b/x/b/k;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Le/m/b/x/a/b/a/a/a/b;

    invoke-direct {v0, p1}, Le/m/b/x/a/b/a/a/a/b;-><init>(Lcom/google/android/gms/auth/GoogleAuthException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 5
    new-instance v0, Le/m/b/x/a/b/a/a/a/d;

    invoke-direct {v0, p1}, Le/m/b/x/a/b/a/a/a/d;-><init>(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    throw v0

    :catch_2
    move-exception p1

    .line 6
    new-instance v0, Le/m/b/x/a/b/a/a/a/c;

    invoke-direct {v0, p1}, Le/m/b/x/a/b/a/a/a/c;-><init>(Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;)V

    throw v0
.end method
