.class public final Lg/g/a/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/a/g/c;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/a/b/r;Lretrofit2/Retrofit;)Lg/g/a/a/g/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/b/r;->c(Lretrofit2/Retrofit;)Lg/g/a/a/g/c;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/a/g/c;

    return-object p0
.end method
