.class public Lg/g/b/a/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/a/g/a/e;

.field private final b:Lg/g/b/a/g/a/i/a;

.field private final c:Lcom/google/gson/f;


# direct methods
.method public constructor <init>(Lg/g/b/a/g/a/e;Lg/g/b/a/g/a/i/a;Lg/g/a/a/h/g;Lcom/google/gson/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/a/g/a/g;->a:Lg/g/b/a/g/a/e;

    .line 3
    iput-object p2, p0, Lg/g/b/a/g/a/g;->b:Lg/g/b/a/g/a/i/a;

    .line 4
    iput-object p4, p0, Lg/g/b/a/g/a/g;->c:Lcom/google/gson/f;

    return-void
.end method

.method private a(Lg/g/b/c/f;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p1

    sget-object v0, Lg/g/b/c/r;->BUSINESS_PROFILE:Lg/g/b/c/r;

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lg/g/a/a/m/b$a;

    invoke-direct {p1}, Lg/g/a/a/m/b$a;-><init>()V

    sget-object v0, Lg/g/a/a/m/a;->DIRECTORY:Lg/g/a/a/m/a;

    invoke-virtual {p1, v0}, Lg/g/a/a/m/b$a;->b(Lg/g/a/a/m/a;)Lg/g/a/a/m/b$a;

    invoke-virtual {p1}, Lg/g/a/a/m/b$a;->a()Lg/g/a/a/m/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lg/g/b/a/g/a/g;->c:Lcom/google/gson/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(Lg/g/a/a/i/h;Lg/g/b/c/f;)Lg/g/a/a/i/o/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/a/g;->b:Lg/g/b/a/g/a/i/a;

    invoke-virtual {v0, p1, p2}, Lg/g/b/a/g/a/i/a;->h(Lg/g/a/a/i/h;Lg/g/b/c/f;)Lg/g/a/a/i/k/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lg/g/b/a/g/a/g;->b:Lg/g/b/a/g/a/i/a;

    invoke-virtual {v0, p2}, Lg/g/b/a/g/a/i/a;->c(Lg/g/b/c/f;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Lg/g/a/a/i/o/o$b;

    invoke-direct {v0}, Lg/g/a/a/i/o/o$b;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lg/g/a/a/i/o/o$b;->setEventProfileEvent(Lg/g/a/a/i/k/c;)Lg/g/a/a/i/o/o$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/o$b;->setProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/o$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lg/g/a/a/i/o/o$b;->build()Lg/g/a/a/i/o/o;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/g/a/a/i/h;Lg/g/b/c/n;)Lg/g/a/a/i/o/o;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/b/a/g/a/g;->a:Lg/g/b/a/g/a/e;

    invoke-virtual {v0, p1, p2}, Lg/g/b/a/g/a/e;->c(Lg/g/a/a/i/h;Lg/g/b/c/n;)Lg/g/a/a/i/k/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lg/g/b/a/g/a/g;->a:Lg/g/b/a/g/a/e;

    invoke-virtual {p2}, Lg/g/b/c/n;->a()I

    move-result v1

    invoke-virtual {p2}, Lg/g/b/c/n;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/g/b/a/g/a/e;->b(IZ)Lg/g/a/a/i/k/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lg/g/b/a/g/a/g;->a:Lg/g/b/a/g/a/e;

    invoke-virtual {v1, p2}, Lg/g/b/a/g/a/e;->a(Lg/g/b/c/n;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v1, Lg/g/a/a/i/o/o$b;

    invoke-direct {v1}, Lg/g/a/a/i/o/o$b;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lg/g/a/a/i/o/o$b;->setEventProfileEvent(Lg/g/a/a/i/k/c;)Lg/g/a/a/i/o/o$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/o$b;->setProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/o$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lg/g/a/a/i/o/o$b;->setDisposition(Lg/g/a/a/i/k/b;)Lg/g/a/a/i/o/o$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lg/g/a/a/i/o/o$b;->build()Lg/g/a/a/i/o/o;

    move-result-object p1

    return-object p1
.end method

.method public d(Lg/g/a/a/i/h;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lg/g/b/c/n;Ljava/lang/String;Lg/g/b/c/f;Lg/g/a/a/i/o/u;)Lg/g/a/a/i/o/y;
    .locals 4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 1
    invoke-virtual {p0, p1, p6}, Lg/g/b/a/g/a/g;->c(Lg/g/a/a/i/h;Lg/g/b/c/n;)Lg/g/a/a/i/o/o;

    move-result-object p6

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    .line 2
    invoke-virtual {p0, p1, p8}, Lg/g/b/a/g/a/g;->b(Lg/g/a/a/i/h;Lg/g/b/c/f;)Lg/g/a/a/i/o/o;

    move-result-object p6

    goto :goto_0

    :cond_1
    move-object p6, v0

    .line 3
    :goto_0
    invoke-static {p5}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Lg/g/a/a/i/m/f;

    invoke-direct {v1, p5, p2}, Lg/g/a/a/i/m/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p8, :cond_3

    .line 5
    invoke-virtual {p8}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p8}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    .line 7
    :goto_2
    invoke-static {}, Lg/g/a/a/i/o/y;->newBuilder()Lg/g/a/a/i/o/y$b;

    move-result-object p5

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lg/g/a/e/b;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Lg/g/a/a/i/o/y$b;->withTimestamp(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;

    move-result-object p5

    .line 9
    invoke-virtual {p5, p1}, Lg/g/a/a/i/o/y$b;->withPhoneDTO(Lg/g/a/a/i/h;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    new-instance p5, Lg/g/a/a/i/o/c;

    new-instance v2, Lg/g/a/a/i/o/e;

    sget-object v3, Lg/g/a/a/i/j/b;->ABSTAIN:Lg/g/a/a/i/j/b;

    invoke-direct {v2, v3, p3}, Lg/g/a/a/i/o/e;-><init>(Lg/g/a/a/i/j/b;I)V

    new-instance p3, Lg/g/a/a/i/o/d;

    invoke-direct {p3, v3, v0, p4}, Lg/g/a/a/i/o/d;-><init>(Lg/g/a/a/i/j/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p5, v1, v2, p3}, Lg/g/a/a/i/o/c;-><init>(Lg/g/a/a/i/m/f;Lg/g/a/a/i/o/e;Lg/g/a/a/i/o/d;)V

    .line 10
    invoke-virtual {p1, p5}, Lg/g/a/a/i/o/y$b;->withFeedbackDTO(Lg/g/a/a/i/o/c;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p6}, Lg/g/a/a/i/o/y$b;->withLastInteractionDTO(Lg/g/a/a/i/o/o;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/y$b;->withCachedProfileTag(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 13
    invoke-static {p7}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move-object p7, v0

    :goto_3
    invoke-virtual {p1, p7}, Lg/g/a/a/i/o/y$b;->withClientTag(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 14
    invoke-virtual {p1, p9}, Lg/g/a/a/i/o/y$b;->withSender(Lg/g/a/a/i/o/u;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 15
    invoke-direct {p0, p8}, Lg/g/b/a/g/a/g;->a(Lg/g/b/c/f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/g/a/a/i/o/y$b;->withClientSignal(Ljava/lang/String;)Lg/g/a/a/i/o/y$b;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lg/g/a/a/i/o/y$b;->build()Lg/g/a/a/i/o/y;

    move-result-object p1

    return-object p1
.end method
