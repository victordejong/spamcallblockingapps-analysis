.class public final Le/m/a/h/a/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/c/a;


# instance fields
.field public final a:Le/m/a/h/a/c/r;


# direct methods
.method public constructor <init>(Le/m/a/h/a/c/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/c/k;->a:Le/m/a/h/a/c/r;

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/c/c;)Le/m/a/h/a/h/r;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/c/c;",
            ")",
            "Le/m/a/h/a/h/r<",
            "Le/m/a/h/a/c/d;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Le/m/a/h/a/c/k;->a:Le/m/a/h/a/c/r;

    .line 1
    iget-object v0, v1, Le/m/a/h/a/c/r;->c:Le/m/a/h/a/d/r;

    if-nez v0, :cond_0

    new-instance p1, Le/m/a/h/a/c/b;

    const/4 v0, -0x2

    .line 2
    invoke-direct {p1, v0}, Le/m/a/h/a/c/b;-><init>(I)V

    invoke-static {p1}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Le/m/a/h/a/c/f;

    .line 4
    iget-object v0, v0, Le/m/a/h/a/c/f;->a:Ljava/lang/String;

    const/16 v2, 0xa

    .line 5
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v1, Le/m/a/h/a/c/r;->a:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string v4, "requestIntegrityToken(%s)"

    .line 6
    invoke-virtual {v0, v4, v2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v6, Le/m/a/h/a/h/n;

    .line 7
    invoke-direct {v6}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v7, v1, Le/m/a/h/a/c/r;->c:Le/m/a/h/a/d/r;

    new-instance v8, Le/m/a/h/a/c/p;

    move-object v0, v8

    move-object v2, v6

    move-object v4, v6

    move-object v5, p1

    .line 8
    invoke-direct/range {v0 .. v5}, Le/m/a/h/a/c/p;-><init>(Le/m/a/h/a/c/r;Le/m/a/h/a/h/n;[BLe/m/a/h/a/h/n;Le/m/a/h/a/c/c;)V

    invoke-virtual {v7, v8, v6}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    .line 9
    iget-object p1, v6, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Le/m/a/h/a/c/b;

    const/16 v1, -0xd

    .line 11
    invoke-direct {v0, v1, p1}, Le/m/a/h/a/c/b;-><init>(ILjava/lang/Throwable;)V

    invoke-static {v0}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object p1

    :goto_0
    return-object p1
.end method
