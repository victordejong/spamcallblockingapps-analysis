.class public abstract Le/i/b/u2/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/net/URI;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Le/i/b/u2/c/o;
.end method

.method public e()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/u2/c/r;->d()Le/i/b/u2/c/o;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/o;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method
