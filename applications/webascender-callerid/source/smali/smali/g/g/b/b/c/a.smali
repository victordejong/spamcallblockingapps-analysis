.class public final Lg/g/b/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/c/g;Ljava/lang/String;)Lg/g/b/b/e/a/a;
    .locals 8

    const-string v0, "$this$toRoomBlockNumber"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalized"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/e/a/a;

    .line 2
    invoke-virtual {p0}, Lg/g/b/c/g;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lg/g/b/c/g;->b()J

    move-result-wide v4

    .line 4
    invoke-virtual {p0}, Lg/g/b/c/g;->d()Z

    move-result v6

    .line 5
    invoke-virtual {p0}, Lg/g/b/c/g;->a()Ljava/lang/Short;

    move-result-object v7

    move-object v1, v0

    move-object v3, p1

    .line 6
    invoke-direct/range {v1 .. v7}, Lg/g/b/b/e/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/Short;)V

    return-object v0
.end method
