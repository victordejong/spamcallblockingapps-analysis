.class Lcom/hiya/common/phone/parser/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/common/collect/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n0<",
            "Lg/g/c/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "Ljava/lang/Class<",
            "+",
            "Lg/g/c/a/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/hiya/common/phone/parser/PhoneParser;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/common/collect/n0;->b()Lcom/google/common/collect/n0;

    move-result-object v0

    new-instance v1, Lcom/hiya/common/phone/parser/a$a;

    invoke-direct {v1}, Lcom/hiya/common/phone/parser/a$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n0;->d(Lcom/google/common/base/g;)Lcom/google/common/collect/n0;

    move-result-object v0

    sput-object v0, Lcom/hiya/common/phone/parser/a;->b:Lcom/google/common/collect/n0;

    .line 2
    const-class v1, Lg/g/c/a/a/a/i$b;

    const-class v2, Lg/g/c/a/a/a/i$g;

    const-class v3, Lg/g/c/a/a/a/i$f;

    const-class v4, Lg/g/c/a/a/a/i$e;

    const-class v5, Lg/g/c/a/a/a/i$a;

    const-class v6, Lg/g/c/a/a/a/i$d;

    const-class v7, Lg/g/c/a/a/a/i$c;

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/x;->B(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x;

    move-result-object v0

    sput-object v0, Lcom/hiya/common/phone/parser/a;->c:Lcom/google/common/collect/x;

    return-void
.end method

.method public constructor <init>(Lcom/hiya/common/phone/parser/PhoneParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/common/phone/parser/a;->a:Lcom/hiya/common/phone/parser/PhoneParser;

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/x;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/common/phone/parser/a;->c:Lcom/google/common/collect/x;

    return-object v0
.end method


# virtual methods
.method b(Lcom/google/common/collect/x;)Lcom/google/common/base/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "Lg/g/c/a/a/a/i;",
            ">;)",
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/common/phone/parser/a;->b:Lcom/google/common/collect/n0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n0;->e(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/c/a/a/a/i;

    .line 2
    instance-of v1, v0, Lg/g/c/a/a/a/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lg/g/c/a/a/a/b;

    .line 4
    invoke-static {v0}, Lcom/hiya/common/phone/parser/b;->a(Lg/g/c/a/a/a/b;)Lcom/google/common/base/j;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_1
    instance-of v1, v0, Lg/g/c/a/a/a/c;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Lg/g/c/a/a/a/c;

    invoke-static {v0}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of v1, v0, Lg/g/c/a/a/a/e;

    if-eqz v1, :cond_3

    .line 9
    check-cast v0, Lg/g/c/a/a/a/e;

    iget-object v0, v0, Lg/g/c/a/a/a/e;->f:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 11
    new-instance p1, Lg/g/c/a/a/a/c;

    invoke-direct {p1, v0}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1

    return-object p1

    .line 12
    :cond_3
    instance-of v1, v0, Lg/g/c/a/a/a/d;

    if-eqz v1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    instance-of v1, v0, Lg/g/c/a/a/a/f;

    if-eqz v1, :cond_5

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/hiya/common/phone/parser/a;->a:Lcom/hiya/common/phone/parser/PhoneParser;

    new-instance v2, Lg/g/c/a/a/a/j;

    check-cast v0, Lg/g/c/a/a/a/f;

    iget-object v0, v0, Lg/g/c/a/a/a/f;->f:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Lg/g/c/a/a/a/i;

    invoke-direct {v2, v0, v3}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v1, v2}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v0

    .line 15
    iget-object v1, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    invoke-virtual {v1}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    iget-object p1, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    goto :goto_0

    .line 17
    :cond_5
    instance-of v0, v0, Lg/g/c/a/a/a/a;

    goto :goto_0

    .line 18
    :cond_6
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method
