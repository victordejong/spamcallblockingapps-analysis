.class public final Le/m/a/c/l1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/l1/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I
    .locals 0

    const/4 p1, 0x4

    .line 1
    invoke-virtual {p2, p1}, Le/m/a/c/e1/a;->setFlags(I)V

    const/4 p1, -0x4

    return p1
.end method
