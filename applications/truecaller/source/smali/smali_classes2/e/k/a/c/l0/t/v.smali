.class public Le/k/a/c/l0/t/v;
.super Le/k/a/c/l0/t/p0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/l0/t/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/p0<",
        "Ljava/lang/Number;",
        ">;",
        "Le/k/a/c/l0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final c:Le/k/a/c/l0/t/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/t/v;

    const-class v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Le/k/a/c/l0/t/v;-><init>(Ljava/lang/Class;)V

    sput-object v0, Le/k/a/c/l0/t/v;->c:Le/k/a/c/l0/t/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;Z)V

    .line 2
    const-class p1, Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p1, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 6
    const-class p2, Ljava/math/BigDecimal;

    if-ne p1, p2, :cond_1

    .line 7
    sget-object p1, Le/k/a/c/l0/t/v$a;->c:Le/k/a/c/l0/t/v$a;

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    return-object p1

    :cond_2
    :goto_0
    return-object p0
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    instance-of p3, p1, Ljava/math/BigDecimal;

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->Q0(Ljava/math/BigDecimal;)V

    goto :goto_1

    .line 4
    :cond_0
    instance-of p3, p1, Ljava/math/BigInteger;

    if-eqz p3, :cond_1

    .line 5
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Le/k/a/b/g;->U0(Ljava/math/BigInteger;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Le/k/a/b/g;->K0(J)V

    goto :goto_1

    .line 8
    :cond_2
    instance-of p3, p1, Ljava/lang/Double;

    if-eqz p3, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Le/k/a/b/g;->F0(D)V

    goto :goto_1

    .line 10
    :cond_3
    instance-of p3, p1, Ljava/lang/Float;

    if-eqz p3, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->G0(F)V

    goto :goto_1

    .line 12
    :cond_4
    instance-of p3, p1, Ljava/lang/Integer;

    if-nez p3, :cond_6

    instance-of p3, p1, Ljava/lang/Byte;

    if-nez p3, :cond_6

    instance-of p3, p1, Ljava/lang/Short;

    if-eqz p3, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->L0(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->J0(I)V

    :goto_1
    return-void
.end method
