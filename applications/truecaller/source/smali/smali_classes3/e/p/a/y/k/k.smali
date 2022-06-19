.class public final Le/p/a/y/k/k;
.super Le/p/a/v;
.source "SourceFile"


# instance fields
.field public final a:Le/p/a/m;

.field public final b:Lv3/h;


# direct methods
.method public constructor <init>(Le/p/a/m;Lv3/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/p/a/v;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/k/k;->a:Le/p/a/m;

    .line 3
    iput-object p2, p0, Le/p/a/y/k/k;->b:Lv3/h;

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/a/y/k/k;->a:Le/p/a/m;

    invoke-static {v0}, Le/p/a/y/k/j;->a(Le/p/a/m;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Le/p/a/p;
    .locals 10

    .line 1
    iget-object v0, p0, Le/p/a/y/k/k;->a:Le/p/a/m;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    sget-object v2, Le/p/a/p;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 5
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 6
    sget-object v7, Le/p/a/p;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    move-object v8, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v2, v9}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 9
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    .line 10
    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v9, "charset"

    .line 11
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v8, :cond_5

    .line 13
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple different charsets: "

    invoke-static {v2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    move-object v8, v2

    .line 15
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 16
    :cond_7
    new-instance v1, Le/p/a/p;

    invoke-direct {v1, v0, v4, v5, v8}, Le/p/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-object v1
.end method

.method public j()Lv3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/k;->b:Lv3/h;

    return-object v0
.end method
