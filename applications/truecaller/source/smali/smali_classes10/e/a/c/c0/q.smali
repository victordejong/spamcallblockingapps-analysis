.class public final Le/a/c/c0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;

.field public static final b:Le/a/c/c0/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/c0/q;

    invoke-direct {v0}, Le/a/c/c0/q;-><init>()V

    sput-object v0, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    .line 2
    sget-object v0, Le/a/c/c0/q$a;->b:Le/a/c/c0/q$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/c/c0/q;->a:Ls1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Le/a/c/c0/q;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "IM_"

    .line 1
    invoke-static {p1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "10_digit"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "address"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/c/c0/q;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/f0/h;

    .line 2
    invoke-virtual {v0, p0}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "rawAddress"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "-"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-static {p0, v0, v1, v2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    .line 2
    invoke-static {p0, v0, v1, v2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IN"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    move p1, v2

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x61

    const/16 v4, 0x7a

    const/16 v5, 0x41

    const/16 v6, 0x5a

    if-ge p1, v1, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v5, v1, :cond_1

    if-ge v6, v1, :cond_4

    :cond_1
    if-gt v3, v1, :cond_2

    if-ge v4, v1, :cond_4

    :cond_2
    const/16 v7, 0x39

    const/16 v8, 0x30

    if-le v8, v1, :cond_3

    goto :goto_1

    :cond_3
    if-lt v7, v1, :cond_5

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    move p1, v0

    :goto_3
    if-eqz p1, :cond_e

    move p1, v2

    .line 5
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v5, v1, :cond_8

    if-ge v6, v1, :cond_a

    :cond_8
    if-le v3, v1, :cond_9

    goto :goto_5

    :cond_9
    if-lt v4, v1, :cond_b

    :cond_a
    move v1, v0

    goto :goto_6

    :cond_b
    :goto_5
    move v1, v2

    :goto_6
    if-eqz v1, :cond_c

    move p1, v0

    goto :goto_7

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    move p1, v2

    :goto_7
    if-eqz p1, :cond_e

    move v2, v0

    :cond_e
    if-eqz v2, :cond_f

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "IN"

    .line 1
    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
