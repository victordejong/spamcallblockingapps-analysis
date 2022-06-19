.class public abstract Lg/f/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lg/f/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lg/f/a/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/a/b/a;

    sget-object v1, Lg/f/a/b/d;->DEFAULT:Lg/f/a/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lg/f/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lg/f/a/b/d;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lg/f/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lg/f/a/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/a/b/a;

    sget-object v1, Lg/f/a/b/d;->VERY_LOW:Lg/f/a/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lg/f/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lg/f/a/b/d;)V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lg/f/a/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lg/f/a/b/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/a/b/a;

    sget-object v1, Lg/f/a/b/d;->HIGHEST:Lg/f/a/b/d;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lg/f/a/b/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lg/f/a/b/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract c()Lg/f/a/b/d;
.end method
