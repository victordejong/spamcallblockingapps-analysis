.class public abstract Lq3/b/l/k;
.super Lq3/b/l/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/b/l/e;-><init>(Ls1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lq3/b/l/e;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
