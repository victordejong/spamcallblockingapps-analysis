.class public final Le/a/t/a/y/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/t/a/y/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/t/a/y/b;

    invoke-direct {v0}, Le/a/t/a/y/b;-><init>()V

    sput-object v0, Le/a/t/a/y/b;->a:Le/a/t/a/y/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)I
    .locals 3

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2
    sget-object v2, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t/a/u/f;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, v2, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    .line 4
    invoke-virtual {p0, p1, v0, v0, v2}, Le/a/t/a/y/b;->b(Ljava/lang/CharSequence;IILe/a/t/a/u/c;)Ls1/k;

    move-result-object v0

    .line 5
    iget-object v2, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v2, Le/a/t/a/u/d;

    .line 7
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Emoji data loader has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public final b(Ljava/lang/CharSequence;IILe/a/t/a/u/c;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Le/a/t/a/u/c;",
            ")",
            "Ls1/k<",
            "Le/a/t/a/u/d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 2
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 3
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 5
    iget-object p2, p4, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t/a/u/c;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p1, v1, p3, p2}, Le/a/t/a/y/b;->b(Ljava/lang/CharSequence;IILe/a/t/a/u/c;)Ls1/k;

    move-result-object p1

    .line 8
    iget-object p2, p1, Ls1/k;->a:Ljava/lang/Object;

    if-eqz p2, :cond_1

    return-object p1

    .line 9
    :cond_1
    iget-object p1, p4, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 11
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method
