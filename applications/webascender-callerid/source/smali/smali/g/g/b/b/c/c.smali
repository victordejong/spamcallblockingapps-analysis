.class public final Lg/g/b/b/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/c/m;)Lg/g/b/b/e/a/c;
    .locals 10

    const-string v0, "$this$toRoomLocalOverrideId"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/e/a/c;

    .line 2
    invoke-virtual {p0}, Lg/g/b/c/m;->b()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lg/g/b/c/m;->d()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lg/g/b/c/m;->f()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lg/g/b/c/m;->a()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lg/g/b/c/m;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lg/g/b/c/m;->c()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v8}, Lg/g/b/b/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
