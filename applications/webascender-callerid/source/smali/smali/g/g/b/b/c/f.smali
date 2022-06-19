.class public final Lg/g/b/b/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/b/e/a/c;)Lg/g/b/c/m;
    .locals 8

    const-string v0, "$this$toLocalOverrideId"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/c/m;

    .line 2
    invoke-virtual {p0}, Lg/g/b/b/e/a/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lg/g/b/b/e/a/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lg/g/b/b/e/a/c;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 5
    :goto_1
    invoke-virtual {p0}, Lg/g/b/b/e/a/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 6
    :goto_2
    invoke-virtual {p0}, Lg/g/b/b/e/a/c;->f()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_3
    invoke-virtual {p0}, Lg/g/b/b/e/a/c;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move-object p0, v3

    :goto_4
    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, p0

    .line 8
    invoke-direct/range {v1 .. v7}, Lg/g/b/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
