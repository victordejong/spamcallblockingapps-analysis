.class public final Ls1/a/a/a/v0/d/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/d/b/i<",
        "Ls1/a/a/a/v0/d/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/d/b/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/j;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/b/j;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/b/j;->a:Ls1/a/a/a/v0/d/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/j;->g(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    const-string v0, "java/lang/Class"

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/d/b/j;->h(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h$b;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/b/h;

    const-string v0, "possiblyPrimitiveType"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Ls1/a/a/a/v0/d/b/h$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/d/b/h$c;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/b/h$c;->j:Ls1/a/a/a/v0/j/w/c;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ls1/a/a/a/v0/j/w/c;->f()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/j/w/b;->c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/j/w/b;

    move-result-object p1

    const-string v0, "JvmClassName.byFqNameWit\u2026mitiveType.wrapperFqName)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/j/w/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JvmClassName.byFqNameWit\u2026apperFqName).internalName"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/j;->h(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h$b;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public d(Ls1/a/a/a/v0/a/i;)Ljava/lang/Object;
    .locals 1

    const-string v0, "primitiveType"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 4
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->h:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 6
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->g:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 8
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->f:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 9
    :pswitch_3
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 10
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->e:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 11
    :pswitch_4
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 12
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->d:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 14
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->c:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 15
    :pswitch_6
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 16
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->b:Ls1/a/a/a/v0/d/b/h$c;

    goto :goto_0

    .line 17
    :pswitch_7
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->i:Ls1/a/a/a/v0/d/b/h;

    .line 18
    sget-object p1, Ls1/a/a/a/v0/d/b/h;->a:Ls1/a/a/a/v0/d/b/h$c;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/b/h;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/j;->i(Ls1/a/a/a/v0/d/b/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/j;->h(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h$b;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h;
    .locals 8

    const-string v0, "representation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3
    invoke-static {}, Ls1/a/a/a/v0/j/w/c;->values()[Ls1/a/a/a/v0/j/w/c;

    move-result-object v2

    move v3, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ge v3, v6, :cond_2

    .line 4
    aget-object v6, v2, v3

    .line 5
    invoke-virtual {v6}, Ls1/a/a/a/v0/j/w/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v1, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v0

    :goto_1
    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_3

    .line 6
    new-instance p1, Ls1/a/a/a/v0/d/b/h$c;

    invoke-direct {p1, v6}, Ls1/a/a/a/v0/d/b/h$c;-><init>(Ls1/a/a/a/v0/j/w/c;)V

    return-object p1

    :cond_3
    const/16 v2, 0x56

    if-eq v1, v2, :cond_6

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_5

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    const/16 v1, 0x3b

    const-string v2, "$this$endsWith"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {p1}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1, v0}, Ls1/f0/a;->a(CCZ)Z

    move-result v0

    .line 9
    :cond_4
    new-instance v0, Ls1/a/a/a/v0/d/b/h$b;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/b/h$b;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 10
    :cond_5
    new-instance v0, Ls1/a/a/a/v0/d/b/h$a;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/j;->g(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/b/h$a;-><init>(Ls1/a/a/a/v0/d/b/h;)V

    goto :goto_3

    .line 11
    :cond_6
    new-instance v0, Ls1/a/a/a/v0/d/b/h$c;

    invoke-direct {v0, v4}, Ls1/a/a/a/v0/d/b/h$c;-><init>(Ls1/a/a/a/v0/j/w/c;)V

    :goto_3
    return-object v0
.end method

.method public h(Ljava/lang/String;)Ls1/a/a/a/v0/d/b/h$b;
    .locals 1

    const-string v0, "internalName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/b/h$b;

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/d/b/h$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Ls1/a/a/a/v0/d/b/h;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/d/b/h$a;

    if-eqz v0, :cond_0

    const-string v0, "["

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Ls1/a/a/a/v0/d/b/h$a;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/h$a;->j:Ls1/a/a/a/v0/d/b/h;

    .line 3
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/b/j;->i(Ls1/a/a/a/v0/d/b/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/d/b/h$c;

    if-eqz v0, :cond_2

    check-cast p1, Ls1/a/a/a/v0/d/b/h$c;

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/h$c;->j:Ls1/a/a/a/v0/j/w/c;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ls1/a/a/a/v0/j/w/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "V"

    :goto_0
    const-string v0, "type.jvmPrimitiveType?.desc ?: \"V\""

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, p1, Ls1/a/a/a/v0/d/b/h$b;

    if-eqz v0, :cond_3

    const-string v0, "L"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Ls1/a/a/a/v0/d/b/h$b;

    .line 8
    iget-object p1, p1, Ls1/a/a/a/v0/d/b/h$b;->j:Ljava/lang/String;

    const-string v1, ";"

    .line 9
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
