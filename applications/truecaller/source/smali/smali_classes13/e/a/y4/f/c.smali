.class public final Le/a/y4/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Le/a/y4/f/f;


# direct methods
.method public varargs constructor <init>([Le/a/y4/f/f;)V
    .locals 1

    const-string v0, "sortingMappers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y4/f/c;->a:[Le/a/y4/f/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, Ls1/f0/w;->l0(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "#"

    goto :goto_0

    :cond_1
    const-string p1, "?"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ls1/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y4/f/c;->a:[Le/a/y4/f/f;

    .line 2
    new-instance v1, Ls1/k;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, v0, v2

    .line 4
    iget-object v4, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v4, Ljava/lang/String;

    .line 6
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-interface {v3, v4, v1}, Le/a/y4/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Ls1/k;

    move-result-object v3

    .line 9
    iget-object v4, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 10
    check-cast v4, Ljava/lang/String;

    .line 11
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 12
    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v1, v3

    .line 13
    :cond_0
    new-instance v3, Ls1/k;

    invoke-direct {v3, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method
