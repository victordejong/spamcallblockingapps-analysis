.class public final Le/m/a/h/a/d/n0;
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
