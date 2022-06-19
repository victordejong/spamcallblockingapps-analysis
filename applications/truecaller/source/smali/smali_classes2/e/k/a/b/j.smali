.class public abstract Le/k/a/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/b/j$a;,
        Le/k/a/b/j$b;
    }
.end annotation


# static fields
.field public static final b:Le/k/a/b/a0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/k/a/b/q;->values()[Le/k/a/b/q;

    move-result-object v0

    invoke-static {v0}, Le/k/a/b/a0/i;->a([Le/k/a/b/a0/h;)Le/k/a/b/a0/i;

    move-result-object v0

    sput-object v0, Le/k/a/b/j;->b:Le/k/a/b/a0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/k/a/b/j;->a:I

    return-void
.end method


# virtual methods
.method public abstract B0()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public B1()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/k/a/b/j;->E1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract D0()Le/k/a/b/j$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract E()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public E1(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-wide p1
.end method

.method public abstract F0()Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public F1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/j;->I1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G0()Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public abstract I(Le/k/a/b/a;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I1(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public J()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->z0()I

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    int-to-byte v0, v0

    return v0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/b/v/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Numeric value (%s) out of range of Java byte"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->q:Le/k/a/b/m;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, v3}, Le/k/a/b/v/a;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/m;Ljava/lang/Class;)V

    throw v0
.end method

.method public J0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract K()Le/k/a/b/n;
.end method

.method public abstract K0()Le/k/a/b/l;
.end method

.method public L0()Le/k/a/b/a0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/q;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j;->b:Le/k/a/b/a0/i;

    return-object v0
.end method

.method public abstract L1()Z
.end method

.method public abstract M1()Z
.end method

.method public abstract O1(Le/k/a/b/m;)Z
.end method

.method public abstract P()Le/k/a/b/h;
.end method

.method public abstract Q()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public Q0()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->z0()I

    move-result v0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/b/v/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Numeric value (%s) out of range of Java short"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->q:Le/k/a/b/m;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, v3}, Le/k/a/b/v/a;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/m;Ljava/lang/Class;)V

    throw v0
.end method

.method public abstract R1(I)Z
.end method

.method public abstract S()Le/k/a/b/m;
.end method

.method public S1(Le/k/a/b/j$a;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    invoke-virtual {p1, v0}, Le/k/a/b/j$a;->a(I)Z

    move-result p1

    return p1
.end method

.method public T1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract U0()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public V1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract W()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract W0()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public Y1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Z1()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b2()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le/k/a/b/j;->Q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
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

.method public h2()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract i2()Le/k/a/b/m;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j()V
.end method

.method public abstract j1()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract k0()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l()Le/k/a/b/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->S()Le/k/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public abstract l1()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m1()Le/k/a/b/h;
.end method

.method public abstract n0()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public n1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract o2()Le/k/a/b/m;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public p0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public p2(II)Le/k/a/b/j;
    .locals 0

    return-object p0
.end method

.method public q()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->W()I

    move-result v0

    return v0
.end method

.method public q2(II)Le/k/a/b/j;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/j;->u2(I)Le/k/a/b/j;

    move-result-object p1

    return-object p1
.end method

.method public r2(Le/k/a/b/a;Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported by parser of type "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(Le/k/a/b/j$a;)Le/k/a/b/j;
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    .line 2
    iget p1, p1, Le/k/a/b/j$a;->b:I

    not-int p1, p1

    and-int/2addr p1, v0

    .line 3
    iput p1, p0, Le/k/a/b/j;->a:I

    return-object p0
.end method

.method public s1()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/j;->z1(I)I

    move-result v0

    return v0
.end method

.method public s2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract t0()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public t2(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->K0()Le/k/a/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/b/l;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public u2(I)Le/k/a/b/j;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Le/k/a/b/j;->a:I

    return-object p0
.end method

.method public v2(Le/k/a/b/c;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parser of type "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Le/k/a/b/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract w2()Le/k/a/b/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public z1(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return p1
.end method
