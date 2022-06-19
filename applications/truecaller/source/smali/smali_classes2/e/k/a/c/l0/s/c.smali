.class public Le/k/a/c/l0/s/c;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    const-class p1, Ljava/lang/Object;

    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    .line 1
    invoke-virtual {p3, p2, p1}, Le/k/a/c/a0;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method
