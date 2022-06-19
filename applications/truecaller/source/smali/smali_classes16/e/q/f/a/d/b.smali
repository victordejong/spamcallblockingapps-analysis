.class public Le/q/f/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/q/f/a/c/d;

.field public b:Le/q/f/a/c/d;

.field public c:Z


# direct methods
.method public constructor <init>(Le/q/f/a/c/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/f/a/d/b;->a:Le/q/f/a/c/d;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/q/f/a/d/b;->c:Z

    .line 4
    iput-object p1, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    .line 2
    iget-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    iget-object v0, v0, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    iget-object v0, v0, Le/q/f/a/c/d;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/q/f/a/c/d;

    iput-object p1, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Le/q/f/a/f/b;
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/q/f/a/d/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    iget-boolean v0, v0, Le/q/f/a/c/e;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Le/q/f/a/d/c;->d(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_2

    .line 3
    :cond_1
    new-instance p1, Le/q/f/a/f/b;

    iget-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    iget-object v1, v0, Le/q/f/a/c/d;->e:Ljava/lang/String;

    iget-object v3, v0, Le/q/f/a/c/d;->h:Ljava/lang/String;

    iget-object v0, v0, Le/q/f/a/c/d;->i:Ljava/lang/String;

    invoke-direct {p1, v2, v1, v3, v0}, Le/q/f/a/f/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_2
    iget-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7
    invoke-virtual {p0, v3}, Le/q/f/a/d/b;->a(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    iput-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    return-object v1

    .line 9
    :cond_3
    iget-object v3, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    iget-boolean v3, v3, Le/q/f/a/c/e;->b:Z

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Le/q/f/a/d/c;->d(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    new-instance p1, Le/q/f/a/f/b;

    iget-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    iget-object v1, v0, Le/q/f/a/c/d;->e:Ljava/lang/String;

    iget-object v3, v0, Le/q/f/a/c/d;->h:Ljava/lang/String;

    iget-object v0, v0, Le/q/f/a/c/d;->i:Ljava/lang/String;

    invoke-direct {p1, v2, v1, v3, v0}, Le/q/f/a/f/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_5
    iput-object v0, p0, Le/q/f/a/d/b;->b:Le/q/f/a/c/d;

    return-object v1
.end method
