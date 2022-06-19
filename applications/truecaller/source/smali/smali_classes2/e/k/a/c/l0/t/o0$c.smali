.class public Le/k/a/c/l0/t/o0$c;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/k/a/c/n0/k;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/n0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n0/k;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/t/o0$c;->c:Le/k/a/c/n0/k;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/z;->q:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 4
    sget-object v0, Le/k/a/c/z;->s:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object p3, p0, Le/k/a/c/l0/t/o0$c;->c:Le/k/a/c/n0/k;

    .line 7
    iget-object p3, p3, Le/k/a/c/n0/k;->b:[Le/k/a/b/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p3, p1

    .line 8
    invoke-virtual {p2, p1}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    return-void
.end method
