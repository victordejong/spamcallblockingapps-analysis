.class public final Lg/g/b/b/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/c/s;)Lg/g/b/b/e/a/e;
    .locals 2

    const-string v0, "$this$toRoomTranslatedString"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/b/e/a/e;

    invoke-virtual {p0}, Lg/g/b/c/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lg/g/b/c/s;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lg/g/b/b/e/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
