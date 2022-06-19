.class public final Lg/g/b/a/g/a/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/common/phone/java/PhoneNormalizer$c;

.field private final b:Lg/g/a/a/h/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/common/phone/java/PhoneNormalizer$c;Lg/g/a/a/h/g;)V
    .locals 1

    const-string v0, "hashingDecisionInput"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/g/a/i/d;->a:Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    iput-object p2, p0, Lg/g/b/a/g/a/i/d;->b:Lg/g/a/a/h/g;

    return-void
.end method

.method private final a(Lg/g/b/c/t;)Lg/g/a/a/i/o/r;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lg/g/b/a/g/a/i/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Lg/g/a/a/i/o/r;

    const-string v0, "TN-Validation-Passed"

    invoke-direct {p1, v0}, Lg/g/a/a/i/o/r;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Lg/g/a/a/i/o/r;

    const-string v0, "TN-Validation-Failed"

    invoke-direct {p1, v0}, Lg/g/a/a/i/o/r;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final b(ZZLjava/lang/Boolean;Lg/g/b/c/j;Z)Lg/g/a/a/i/e;
    .locals 3

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Lg/g/b/c/j;->e()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p4}, Lg/g/b/c/j;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lg/g/b/a/g/a/i/d;->a:Lcom/hiya/common/phone/java/PhoneNormalizer$c;

    if-eqz p5, :cond_0

    .line 4
    iget-object p5, p0, Lg/g/b/a/g/a/i/d;->b:Lg/g/a/a/h/g;

    invoke-virtual {p5}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lg/g/b/c/j;->c()Ljava/lang/String;

    move-result-object p5

    .line 5
    :goto_0
    invoke-static {v0, v1, v2, p5}, Lg/g/b/a/k/j;->c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object p5

    .line 6
    invoke-static {}, Lg/g/a/a/i/o/s;->newBuilder()Lg/g/a/a/i/o/s$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lg/g/a/a/i/o/s$b;->withOptInIdentity(Z)Lg/g/a/a/i/o/s$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/s$b;->withOptInReputation(Z)Lg/g/a/a/i/o/s$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p3}, Lg/g/a/a/i/o/s$b;->withOptInRegistered(Ljava/lang/Boolean;)Lg/g/a/a/i/o/s$b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lg/g/a/a/i/o/s$b;->build()Lg/g/a/a/i/o/s;

    move-result-object p1

    .line 11
    invoke-static {}, Lg/g/a/a/i/o/g;->newBuilder()Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 12
    invoke-virtual {p4}, Lg/g/b/c/j;->d()Lg/g/b/c/k;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/k;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg/g/a/a/i/o/g$b;->withEventDirection(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 13
    invoke-virtual {p4}, Lg/g/b/c/j;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg/g/a/a/i/o/g$b;->withEventTimestamp(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 14
    invoke-virtual {p4}, Lg/g/b/c/j;->i()Z

    move-result p3

    invoke-virtual {p2, p3}, Lg/g/a/a/i/o/g$b;->withIsContact(Z)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 15
    invoke-virtual {p4}, Lg/g/b/c/j;->g()Lg/g/b/c/l;

    move-result-object p3

    invoke-virtual {p3}, Lg/g/b/c/l;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg/g/a/a/i/o/g$b;->withType(Ljava/lang/String;)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p5}, Lg/g/a/a/i/o/g$b;->withPhone(Lg/g/a/a/i/h;)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 17
    invoke-virtual {p4}, Lg/g/b/c/j;->g()Lg/g/b/c/l;

    move-result-object p3

    sget-object p5, Lg/g/b/c/l;->TEXT_MESSAGE:Lg/g/b/c/l;

    const/4 v0, 0x0

    if-ne p3, p5, :cond_1

    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    invoke-virtual {p2, p3}, Lg/g/a/a/i/o/g$b;->withTokens(Ljava/util/List;)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 18
    invoke-virtual {p4}, Lg/g/b/c/j;->h()Lg/g/b/c/t;

    move-result-object p3

    invoke-direct {p0, p3}, Lg/g/b/a/g/a/i/d;->a(Lg/g/b/c/t;)Lg/g/a/a/i/o/r;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 19
    new-instance v0, Lg/g/a/a/i/o/q;

    const/4 p4, 0x0

    invoke-direct {v0, p3, p4}, Lg/g/a/a/i/o/q;-><init>(Lg/g/a/a/i/o/r;Z)V

    .line 20
    :cond_2
    invoke-virtual {p2, v0}, Lg/g/a/a/i/o/g$b;->withNetworkInfo(Lg/g/a/a/i/o/q;)Lg/g/a/a/i/o/g$b;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lg/g/a/a/i/o/g$b;->build()Lg/g/a/a/i/o/g;

    move-result-object p2

    .line 22
    invoke-static {}, Lg/g/a/a/i/e;->newBuilder()Lg/g/a/a/i/e$b;

    move-result-object p3

    .line 23
    invoke-virtual {p3, p1}, Lg/g/a/a/i/e$b;->withProfileScope(Lg/g/a/a/i/o/s;)Lg/g/a/a/i/e$b;

    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lg/g/a/a/i/e$b;->withEvent(Lg/g/a/a/i/o/g;)Lg/g/a/a/i/e$b;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lg/g/a/a/i/e$b;->build()Lg/g/a/a/i/e;

    move-result-object p1

    const-string p2, "EventProfileRequestDTO.n\u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
