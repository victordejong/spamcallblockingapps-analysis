.class public Ls1/a/a/a/v0/d/b/w/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/w/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/d/b/w/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/w/b;Ls1/a/a/a/v0/d/b/w/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_3

    const/4 v3, 0x7

    if-eq p0, v3, :cond_2

    const/4 v3, 0x4

    if-eq p0, v3, :cond_1

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    const-string v3, "name"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_0
    const-string v3, "enumEntryName"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_1
    const-string v3, "enumClassId"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "classId"

    aput-object v3, v0, v2

    goto :goto_0

    :cond_3
    const-string v3, "classLiteralValue"

    aput-object v3, v0, v2

    :goto_0
    const-string v2, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const-string p0, "visitClassLiteral"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_0
    const-string p0, "visitAnnotation"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_1
    const-string p0, "visitEnum"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_2
    const-string p0, "visitArray"

    aput-object p0, v0, v1

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/e;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x3

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/w/b$c;->g(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x6

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/w/b$c;->g(I)V

    throw p2
.end method

.method public d(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/j/t/f;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/w/b$c;->g(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 4
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5
    sget-object v0, Ls1/a/a/a/v0/d/b/w/a$a;->i:Ljava/util/Map;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/a/a/a/v0/d/b/w/a$a;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Ls1/a/a/a/v0/d/b/w/a$a;->b:Ls1/a/a/a/v0/d/b/w/a$a;

    .line 7
    :goto_0
    iput-object p2, p1, Ls1/a/a/a/v0/d/b/w/b;->i:Ls1/a/a/a/v0/d/b/w/a$a;

    goto :goto_1

    :cond_2
    const-string v0, "mv"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    instance-of p1, p2, [I

    if-eqz p1, :cond_7

    .line 10
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    check-cast p2, [I

    .line 11
    iput-object p2, p1, Ls1/a/a/a/v0/d/b/w/b;->a:[I

    goto :goto_1

    :cond_3
    const-string v0, "bv"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    instance-of p1, p2, [I

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    new-instance v0, Ls1/a/a/a/v0/e/a0/b/c;

    check-cast p2, [I

    invoke-direct {v0, p2}, Ls1/a/a/a/v0/e/a0/b/c;-><init>([I)V

    .line 15
    iput-object v0, p1, Ls1/a/a/a/v0/d/b/w/b;->b:Ls1/a/a/a/v0/e/a0/b/c;

    goto :goto_1

    :cond_4
    const-string v0, "xs"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    check-cast p2, Ljava/lang/String;

    .line 19
    iput-object p2, p1, Ls1/a/a/a/v0/d/b/w/b;->c:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v0, "xi"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 23
    iput p2, p1, Ls1/a/a/a/v0/d/b/w/b;->d:I

    goto :goto_1

    :cond_6
    const-string v0, "pn"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 26
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/w/b$c;->a:Ls1/a/a/a/v0/d/b/w/b;

    check-cast p2, Ljava/lang/String;

    .line 27
    iput-object p2, p1, Ls1/a/a/a/v0/d/b/w/b;->e:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method

.method public f(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/d/b/l$b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "d1"

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Ls1/a/a/a/v0/d/b/w/c;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/d/b/w/c;-><init>(Ls1/a/a/a/v0/d/b/w/b$c;)V

    return-object p1

    :cond_0
    const-string v1, "d2"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ls1/a/a/a/v0/d/b/w/d;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/d/b/w/d;-><init>(Ls1/a/a/a/v0/d/b/w/b$c;)V

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x2

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/d/b/w/b$c;->g(I)V

    throw v0
.end method
