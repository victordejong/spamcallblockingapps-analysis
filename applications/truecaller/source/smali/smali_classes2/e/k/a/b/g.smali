.class public abstract Le/k/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/b/g$a;
    }
.end annotation


# static fields
.field public static final b:Le/k/a/b/a0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Le/k/a/b/a0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Le/k/a/b/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Le/k/a/b/r;->values()[Le/k/a/b/r;

    move-result-object v0

    invoke-static {v0}, Le/k/a/b/a0/i;->a([Le/k/a/b/a0/h;)Le/k/a/b/a0/i;

    move-result-object v0

    sput-object v0, Le/k/a/b/g;->b:Le/k/a/b/a0/i;

    .line 2
    sget-object v1, Le/k/a/b/r;->d:Le/k/a/b/r;

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/b/a0/i;->b(Le/k/a/b/a0/h;)Le/k/a/b/a0/i;

    move-result-object v1

    sput-object v1, Le/k/a/b/g;->c:Le/k/a/b/a0/i;

    .line 4
    sget-object v1, Le/k/a/b/r;->c:Le/k/a/b/r;

    .line 5
    invoke-virtual {v0, v1}, Le/k/a/b/a0/i;->b(Le/k/a/b/a0/h;)Le/k/a/b/a0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract B0(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public B1(Le/k/a/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/k/a/b/p;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->E1(Ljava/lang/String;)V

    return-void
.end method

.method public abstract D0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract E(Le/k/a/b/g$a;)Z
.end method

.method public abstract E1(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract F0(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract F1()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract G0(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public I(II)Le/k/a/b/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->q()I

    move-result v0

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->K(I)Le/k/a/b/g;

    move-result-object p1

    return-object p1
.end method

.method public I1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->F1()V

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public J(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->s()Le/k/a/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/b/l;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract J0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract K(I)Le/k/a/b/g;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract K0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract L0(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public L1(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->F1()V

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract M1()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public O1(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->M1()V

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract P(I)Le/k/a/b/g;
.end method

.method public abstract Q(Le/k/a/b/a;Ljava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Q0(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public R1(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->M1()V

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract S(Le/k/a/b/a;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract S1(Le/k/a/b/p;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract T1(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract U0(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract V1([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public W([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Le/k/a/b/g;->S(Le/k/a/b/a;[BII)V

    return-void
.end method

.method public W0(S)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/b/g;->J0(I)V

    return-void
.end method

.method public abstract Y1(Le/k/a/b/t;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public Z1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Le/k/a/b/f;

    const-string v0, "No native support for writing Type Ids"

    invoke-direct {p1, v0, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1
.end method

.method public final b(III)V
    .locals 3

    if-ltz p2, :cond_0

    add-int v0, p2, p3

    if-gt v0, p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "invalid argument(s) (offset=%d, length=%d) for input array of %d element"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract j1(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract k0(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l(Le/k/a/b/g$a;)Le/k/a/b/g;
.end method

.method public l1(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Le/k/a/b/f;

    const-string v0, "No native support for writing Object Ids"

    invoke-direct {p1, v0, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw p1
.end method

.method public abstract m1(C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n0(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->D0()V

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, [B

    invoke-virtual {p0, p1}, Le/k/a/b/g;->W([B)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Le/k/a/b/f;

    const-string v1, "No native support for writing embedded objects of type "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw v0
.end method

.method public n1(Le/k/a/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Le/k/a/b/p;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->s1(Ljava/lang/String;)V

    return-void
.end method

.method public abstract p0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q()I
.end method

.method public abstract s()Le/k/a/b/l;
.end method

.method public abstract s1(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z0(Le/k/a/b/p;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z1([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
