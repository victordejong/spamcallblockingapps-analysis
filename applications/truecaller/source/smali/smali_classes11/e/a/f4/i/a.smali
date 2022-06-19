.class public final Le/a/f4/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;II)Le/a/z3/i/a;
    .locals 3

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 1
    :cond_0
    sget-object p2, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    const-string v0, "size"

    .line 2
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    :cond_3
    new-instance p0, Le/a/z3/i/a;

    invoke-direct {p0, v0, p2}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 5
    iput-boolean v1, p0, Le/a/z3/i/a;->a:Z

    .line 6
    iput p1, p0, Le/a/z3/i/a;->b:I

    return-object p0
.end method
