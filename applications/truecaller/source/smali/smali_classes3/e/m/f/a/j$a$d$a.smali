.class public Le/m/f/a/j$a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/f/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/f/a/j$a$d;->a(Le/m/f/a/o;Ljava/lang/CharSequence;Le/m/f/a/j;Le/m/f/a/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Le/m/f/a/j$a$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/f/a/j;Le/m/f/a/o;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Le/m/f/a/g;->j:Ljava/util/regex/Pattern;

    .line 2
    sget-object v0, Le/m/f/a/j;->A:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p3

    .line 4
    iget-boolean v0, p2, Le/m/f/a/o;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    array-length v0, p3

    sub-int/2addr v0, v1

    .line 6
    :goto_0
    array-length v2, p3

    if-eq v2, v1, :cond_5

    aget-object v2, p3, v0

    .line 7
    invoke-virtual {p1, p2}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    array-length p1, p4

    sub-int/2addr p1, v1

    :goto_1
    const/4 p2, 0x0

    if-lez p1, :cond_3

    if-ltz v0, :cond_3

    .line 10
    aget-object v2, p3, v0

    aget-object v3, p4, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    .line 11
    aget-object p1, p3, v0

    aget-object p3, p4, p2

    .line 12
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, p2

    :cond_5
    :goto_2
    move p2, v1

    :goto_3
    return p2
.end method
