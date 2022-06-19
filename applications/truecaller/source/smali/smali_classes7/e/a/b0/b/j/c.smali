.class public final Le/a/b0/b/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/b/j/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Le/a/b0/b/j/c$a;

    invoke-direct {v0, p1}, Le/a/b0/b/j/c$a;-><init>(Ljava/lang/SecurityException;)V

    throw v0
.end method
