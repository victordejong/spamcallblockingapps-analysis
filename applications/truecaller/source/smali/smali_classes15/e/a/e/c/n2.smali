.class public final Le/a/e/c/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/b/a/r;->f(Ljava/lang/String;)Lw3/b/a/r;

    move-result-object p1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lw3/b/a/r;->f(Ljava/lang/String;)Lw3/b/a/r;

    move-result-object p2

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "ha"

    .line 4
    invoke-virtual {p1, v1, v0}, Lw3/b/a/r;->g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v1, v0}, Lw3/b/a/r;->g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2d

    .line 6
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/truecaller/data/entity/Contact;)I
    .locals 6

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v0

    int-to-double v0, v0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->L()I

    move-result p1

    int-to-double v2, p1

    sub-double/2addr v0, v2

    const-wide/16 v4, 0x0

    cmpg-double p1, v0, v4

    if-eqz p1, :cond_1

    div-double/2addr v2, v0

    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double/2addr v2, v0

    const/4 p1, 0x0

    int-to-double v0, p1

    cmpg-double p1, v2, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 3
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method
