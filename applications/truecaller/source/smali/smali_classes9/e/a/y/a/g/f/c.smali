.class public final Le/a/y/a/g/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/y/a/g/f/e$a;
    .locals 2

    const-string v0, "unicode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/y/a/g/f/d;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x2744

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2764

    if-eq v0, v1, :cond_4

    const v1, 0x1b0c0c

    if-eq v0, v1, :cond_3

    const v1, 0x1b0c13

    if-eq v0, v1, :cond_2

    const v1, 0x1b0ecc

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "\ud83c\udf88"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_2
    const-string v0, "\ud83d\udcb0"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_3
    const-string v0, "\ud83d\udca9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_4
    const-string v0, "\u2764"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    :goto_0
    new-instance v0, Le/a/y/a/g/f/a;

    invoke-direct {v0, p1}, Le/a/y/a/g/f/a;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "\u2744"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    :goto_1
    new-instance v0, Le/a/y/a/g/f/g;

    invoke-direct {v0, p1}, Le/a/y/a/g/f/g;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method
