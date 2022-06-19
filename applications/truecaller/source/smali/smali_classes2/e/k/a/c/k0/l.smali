.class public Le/k/a/c/k0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Le/k/a/c/k0/l;

.field public static final b:Le/k/a/c/k0/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/k0/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/k/a/c/k0/l;-><init>(Z)V

    sput-object v0, Le/k/a/c/k0/l;->a:Le/k/a/c/k0/l;

    .line 2
    sput-object v0, Le/k/a/c/k0/l;->b:Le/k/a/c/k0/l;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Le/k/a/c/k0/e;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/c/k0/e;->b:Le/k/a/c/k0/e;

    goto :goto_0

    :cond_0
    sget-object p1, Le/k/a/c/k0/e;->c:Le/k/a/c/k0/e;

    :goto_0
    return-object p1
.end method

.method public b(Ljava/math/BigDecimal;)Le/k/a/c/k0/v;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/k/a/c/k0/q;->a:Le/k/a/c/k0/q;

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Le/k/a/c/k0/g;->b:Le/k/a/c/k0/g;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 4
    new-instance v0, Le/k/a/c/k0/g;

    invoke-direct {v0, p1}, Le/k/a/c/k0/g;-><init>(Ljava/math/BigDecimal;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
