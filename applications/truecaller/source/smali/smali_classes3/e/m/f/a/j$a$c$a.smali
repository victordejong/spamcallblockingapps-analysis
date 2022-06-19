.class public Le/m/f/a/j$a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/f/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/f/a/j$a$c;->a(Le/m/f/a/o;Ljava/lang/CharSequence;Le/m/f/a/j;Le/m/f/a/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/m/f/a/j$a$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/f/a/j;Le/m/f/a/o;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 8

    .line 1
    sget-object v0, Le/m/f/a/g;->j:Ljava/util/regex/Pattern;

    .line 2
    iget-object v0, p2, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    .line 3
    sget-object v1, Le/m/f/a/o$a;->d:Le/m/f/a/o$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    iget v0, p2, Le/m/f/a/o;->b:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v1, v2

    .line 7
    :goto_1
    array-length v3, p4

    if-ge v1, v3, :cond_6

    .line 8
    aget-object v3, p4, v1

    invoke-virtual {p3, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_3

    .line 9
    :cond_1
    aget-object v3, p4, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    if-nez v1, :cond_5

    .line 10
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 11
    iget v3, p2, Le/m/f/a/o;->b:I

    .line 12
    invoke-virtual {p1, v3}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p1, v3}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 14
    sget-object v4, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Invalid or missing region code ("

    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_2

    const-string v3, "null"

    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") provided."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v3, v4, Le/m/f/a/l;->S:Ljava/lang/String;

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v4, "~"

    const-string v5, ""

    .line 17
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_5

    .line 18
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19
    invoke-virtual {p1, p2}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    .line 20
    aget-object p2, p4, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object p2, p2, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_3
    return v2
.end method
