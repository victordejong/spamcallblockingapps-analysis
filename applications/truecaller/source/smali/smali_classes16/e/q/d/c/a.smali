.class public final Le/q/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Le/q/d/c/b;)Ljava/lang/String;
    .locals 2

    const-string v0, "multDate"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Le/q/d/c/b;->a:Ljava/util/Date;

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATE_TIME_FORMATTER.format(multDate.date)"

    invoke-static {p0, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)Le/q/d/c/b;
    .locals 3

    const-string v0, "date"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/q/d/c/b;

    invoke-direct {v0}, Le/q/d/c/b;-><init>()V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    const-string p1, "SimpleDateFormat(format,\u2026cale.ENGLISH).parse(date)"

    invoke-static {p0, p1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<set-?>"

    .line 3
    invoke-static {p0, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p0, v0, Le/q/d/c/b;->a:Ljava/util/Date;

    return-object v0
.end method
