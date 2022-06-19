.class public Le/a/b0/q/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x200e

    .line 1
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/b0/q/e0;->a:Ljava/lang/String;

    const/16 v0, 0x202c

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/b0/q/e0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 2
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v5, Le/m/f/a/j$a;->b:Le/m/f/a/j$a;

    const-wide v6, 0x7fffffffffffffffL

    .line 5
    new-instance v0, Le/m/f/a/g;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Le/m/f/a/g;-><init>(Le/m/f/a/j;Ljava/lang/CharSequence;Ljava/lang/String;Le/m/f/a/j$a;J)V

    .line 6
    invoke-virtual {v0}, Le/m/f/a/g;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Le/m/f/a/g;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v0}, Le/m/f/a/g;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/f/a/f;

    .line 10
    iget v3, v2, Le/m/f/a/f;->a:I

    add-int/2addr v3, p0

    .line 11
    sget-object v4, Le/a/b0/q/e0;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    .line 13
    invoke-virtual {v2}, Le/m/f/a/f;->a()I

    move-result p0

    add-int/2addr p0, v3

    sget-object v2, Le/a/b0/q/e0;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v3

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method
