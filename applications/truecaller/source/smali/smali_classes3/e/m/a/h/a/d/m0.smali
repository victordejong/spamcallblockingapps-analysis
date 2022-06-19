.class public final Le/m/a/h/a/d/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 7

    new-instance v4, Le/m/a/h/a/d/e0;

    invoke-direct {v4}, Le/m/a/h/a/d/e0;-><init>()V

    new-instance v6, Le/m/a/h/a/d/l0;

    invoke-direct {v6}, Le/m/a/h/a/d/l0;-><init>()V

    const-string v5, "path"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1
    invoke-static/range {v0 .. v6}, Le/m/a/h/a/d/d0;->d(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLe/m/a/h/a/d/c0;Ljava/lang/String;Le/m/a/h/a/d/b0;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/a/h/a/d/k0;

    invoke-direct {v0}, Le/m/a/h/a/d/k0;-><init>()V

    .line 2
    invoke-static {p1, p2, v0}, Le/m/a/h/a/d/h0;->c(Ljava/lang/ClassLoader;Ljava/util/Set;Le/m/a/h/a/d/g0;)V

    return-void
.end method

.method public final b(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Le/m/a/h/a/d/m0;->c(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z

    move-result p1

    return p1
.end method
