.class public Lw3/b/a/f;
.super Lw3/b/a/f0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/f0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public Q()Lw3/b/a/a;
    .locals 0

    return-object p0
.end method

.method public R(Lw3/b/a/g;)Lw3/b/a/a;
    .locals 0

    return-object p0
.end method

.method public s()Lw3/b/a/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lw3/b/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
