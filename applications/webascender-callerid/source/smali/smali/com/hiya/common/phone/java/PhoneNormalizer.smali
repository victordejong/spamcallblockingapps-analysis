.class public Lcom/hiya/common/phone/java/PhoneNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;,
        Lcom/hiya/common/phone/java/PhoneNormalizer$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/regex/Pattern;

.field private b:Ljava/util/regex/Pattern;

.field private final c:Lcom/hiya/common/phone/parser/PhoneParser;

.field private final d:Lcom/hiya/common/phone/java/PhoneNormalizer$c;


# direct methods
.method private constructor <init>(Lcom/hiya/common/phone/parser/PhoneParser;Lcom/hiya/common/phone/java/PhoneNormalizer$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/hiya/common/phone/parser/PhoneParser;

    iput-object p1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    iput-object p2, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->d:Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    const-string p1, "[0-9]+/([0-9]+|\\$.*)"

    .line 4
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->a:Ljava/util/regex/Pattern;

    const-string p1, "([0-9]+)/\\$r(.+)"

    .line 5
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-256"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hiya/common/phone/java/a;->b([BZ)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;

    const-string v1, "Failed to hash phone number"

    invoke-direct {v0, p0, v1, p1}, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Lg/g/c/a/a/a/h;)Lg/g/c/a/a/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lg/g/c/a/a/a/h;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hiya/common/phone/java/PhoneNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/c/a/a/a/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-short p1, p1, Lg/g/c/a/a/a/h;->f:S

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/$"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lg/g/c/a/a/a/g;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private c(Lcom/google/common/base/j;Lg/g/c/a/a/a/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;",
            "Lg/g/c/a/a/a/c;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/base/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->d:Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    invoke-interface {v0}, Lcom/hiya/common/phone/java/PhoneNormalizer$c;->a()Lcom/google/common/collect/z;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->d:Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    .line 2
    invoke-interface {p1}, Lcom/hiya/common/phone/java/PhoneNormalizer$c;->a()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/common/collect/v;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lg/g/c/a/a/a/j;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->a:Ljava/util/regex/Pattern;

    iget-object p1, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method private f(Lcom/hiya/common/phone/parser/PhoneParser$b;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    invoke-direct {p0, v0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->c(Lcom/google/common/base/j;Lg/g/c/a/a/a/c;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-direct {p0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->b(Lg/g/c/a/a/a/h;)Lg/g/c/a/a/a/g;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lg/g/c/a/a/a/g;

    iget-object v0, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-direct {p2, v0}, Lg/g/c/a/a/a/g;-><init>(Lg/g/c/a/a/a/h;)V

    .line 4
    :goto_0
    new-instance v0, Lg/g/c/a/c/a/b;

    new-instance v9, Lg/g/c/a/c/a/a;

    iget-object v1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    .line 5
    invoke-interface {v1}, Lcom/hiya/common/phone/parser/PhoneParser;->e()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    iget-boolean v4, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->h:Z

    iget-object v5, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    .line 6
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v6

    iget-object v1, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->j:Lcom/google/common/base/j;

    new-instance v7, Lcom/hiya/common/phone/java/PhoneNormalizer$b;

    invoke-direct {v7, p0}, Lcom/hiya/common/phone/java/PhoneNormalizer$b;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer;)V

    .line 7
    invoke-virtual {v1, v7}, Lcom/google/common/base/j;->h(Lcom/google/common/base/g;)Lcom/google/common/base/j;

    move-result-object v7

    .line 8
    invoke-virtual {p2}, Lg/g/c/a/a/a/g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->k:Lcom/google/common/base/j;

    :goto_1
    move-object v8, p1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lg/g/c/a/c/a/a;-><init>(Ljava/lang/String;ZZLcom/google/common/base/j;Lcom/google/common/base/j;Lcom/google/common/base/j;Lcom/google/common/base/j;)V

    invoke-direct {v0, p2, v9}, Lg/g/c/a/c/a/b;-><init>(Lg/g/c/a/a/a/g;Lg/g/c/a/c/a/a;)V

    return-object v0
.end method

.method private g(Lg/g/c/a/a/a/j;Ljava/lang/Short;Lg/g/c/a/a/a/c;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/hiya/common/phone/java/PhoneNormalizer;->c(Lcom/google/common/base/j;Lg/g/c/a/a/a/c;)Z

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p4, :cond_0

    .line 2
    new-instance p4, Lg/g/c/a/a/a/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    iget-object p2, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "%d/$R%s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lg/g/c/a/a/a/g;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p4, Lg/g/c/a/a/a/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    iget-object p2, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    aput-object p2, v2, v0

    const-string p2, "%d/$r%s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lg/g/c/a/a/a/g;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    new-instance p2, Lg/g/c/a/c/a/b;

    new-instance v8, Lg/g/c/a/c/a/a;

    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    .line 5
    invoke-interface {v0}, Lcom/hiya/common/phone/parser/PhoneParser;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-static {p3}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object v4

    .line 7
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v5

    .line 8
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v6

    .line 9
    invoke-virtual {p4}, Lg/g/c/a/a/a/g;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1

    :goto_1
    move-object v7, p1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lg/g/c/a/c/a/a;-><init>(Ljava/lang/String;ZZLcom/google/common/base/j;Lcom/google/common/base/j;Lcom/google/common/base/j;Lcom/google/common/base/j;)V

    invoke-direct {p2, p4, v8}, Lg/g/c/a/c/a/b;-><init>(Lg/g/c/a/a/a/g;Lg/g/c/a/c/a/a;)V

    return-object p2
.end method

.method private h(Lg/g/c/a/a/a/j;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;,
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/c/a/a/a/g;

    iget-object p1, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    invoke-direct {v0, p1}, Lg/g/c/a/a/a/g;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lg/g/c/a/a/a/g;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    invoke-virtual {v0}, Lg/g/c/a/a/a/g;->a()Lg/g/c/a/a/a/h;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hiya/common/phone/parser/PhoneParser;->c(Lg/g/c/a/a/a/h;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->f(Lcom/hiya/common/phone/parser/PhoneParser$b;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lg/g/c/a/a/a/g;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lg/g/c/a/a/a/g;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->b:Ljava/util/regex/Pattern;

    iget-object v0, v0, Lg/g/c/a/a/a/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 7
    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-interface {v0, v2}, Lcom/hiya/common/phone/parser/PhoneParser;->d(S)Lcom/google/common/collect/x;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/c/a/a/a/c;

    .line 8
    new-instance v3, Lg/g/c/a/a/a/j;

    const/4 v4, 0x2

    .line 9
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Lg/g/c/a/a/a/i;

    new-instance v4, Lg/g/c/a/a/a/i$e;

    iget-object v0, v0, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-direct {v4, v0}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    invoke-direct {v3, p1, v1}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    .line 10
    invoke-virtual {p0, v3, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->e(Lg/g/c/a/a/a/j;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;

    const-string p2, "Found unknown non-plain normalized phone"

    invoke-direct {p1, p0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Lcom/hiya/common/phone/parser/PhoneParser;Lcom/hiya/common/phone/java/PhoneNormalizer$c;)Lcom/hiya/common/phone/java/PhoneNormalizer;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/common/phone/java/PhoneNormalizer;

    invoke-direct {v0, p0, p1}, Lcom/hiya/common/phone/java/PhoneNormalizer;-><init>(Lcom/hiya/common/phone/parser/PhoneParser;Lcom/hiya/common/phone/java/PhoneNormalizer$c;)V

    return-object v0
.end method

.method public static j(Lcom/hiya/common/phone/parser/PhoneParser;)Lcom/hiya/common/phone/java/PhoneNormalizer;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/common/phone/java/PhoneNormalizer;

    new-instance v1, Lcom/hiya/common/phone/java/PhoneNormalizer$a;

    invoke-direct {v1}, Lcom/hiya/common/phone/java/PhoneNormalizer$a;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/hiya/common/phone/java/PhoneNormalizer;-><init>(Lcom/hiya/common/phone/parser/PhoneParser;Lcom/hiya/common/phone/java/PhoneNormalizer$c;)V

    return-object v0
.end method


# virtual methods
.method public e(Lg/g/c/a/a/a/j;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/java/PhoneNormalizer;->d(Lg/g/c/a/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->h(Lg/g/c/a/a/a/j;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    invoke-interface {v0, p1}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->f(Lcom/hiya/common/phone/parser/PhoneParser$b;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p1
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 4
    iget-object v0, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    iget-object v1, p1, Lg/g/c/a/a/a/j;->g:Lcom/google/common/collect/x;

    invoke-interface {v0, v1}, Lcom/hiya/common/phone/parser/PhoneParser;->g(Lcom/google/common/collect/x;)Lcom/google/common/base/j;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/hiya/common/phone/java/PhoneNormalizer;->c:Lcom/hiya/common/phone/parser/PhoneParser;

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/c/a/a/a/c;

    invoke-interface {v1, v4}, Lcom/hiya/common/phone/parser/PhoneParser;->b(Lg/g/c/a/a/a/c;)Lcom/google/common/base/j;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/common/base/j;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    new-instance v2, Lg/g/c/a/a/a/c;

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/c/a/a/a/c;

    iget-object v0, v0, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-direct {v2, v0}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer;->g(Lg/g/c/a/a/a/j;Ljava/lang/Short;Lg/g/c/a/a/a/c;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/c/a/a/a/c;

    iget-object v0, v0, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    aput-object v0, p2, v2

    const-string v0, "Could not determine country calling code for country %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p2, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lg/g/c/a/a/a/j;->g:Lcom/google/common/collect/x;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Could not determine country code from hints %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/hiya/common/phone/java/PhoneNormalizer$Failure;-><init>(Lcom/hiya/common/phone/java/PhoneNormalizer;Ljava/lang/String;)V

    throw p2
.end method
