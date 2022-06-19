.class public Le/a/y/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/e/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(C)Le/a/y/e/i;
    .locals 1

    .line 1
    new-instance v0, Le/a/y/e/i;

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Le/a/y/e/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Le/a/y/e/i;
    .locals 1

    .line 1
    new-instance v0, Le/a/y/e/i;

    invoke-direct {v0, p0}, Le/a/y/e/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(I)Le/a/y/e/i;
    .locals 3

    .line 1
    new-instance v0, Le/a/y/e/i;

    .line 2
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v1

    .line 5
    :goto_0
    invoke-direct {v0, p0}, Le/a/y/e/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/y/e/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/y/e/i;->a:Ljava/lang/String;

    check-cast p1, Le/a/y/e/i;

    iget-object p1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/e/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
