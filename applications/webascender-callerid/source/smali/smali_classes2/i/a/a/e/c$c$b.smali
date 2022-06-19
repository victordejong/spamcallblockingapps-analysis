.class final Li/a/a/e/c$c$b;
.super Li/a/a/e/c$b;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/a/e/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/a/e/c$b<",
        "Li/a/a/e/c$c$b;",
        ">;",
        "Li/a/a/e/g;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Li/a/a/e/c$b;-><init>(Li/a/a/e/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Li/a/a/e/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Li/a/a/e/c$c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Li/a/a/e/g;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Li/a/a/e/c$b;->f(Ljava/lang/String;)Li/a/a/e/c$b;

    move-result-object p1

    check-cast p1, Li/a/a/e/g;

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/String;)Li/a/a/e/g;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Li/a/a/e/c$b;->g(Ljava/lang/String;)Li/a/a/e/c$b;

    move-result-object p1

    check-cast p1, Li/a/a/e/g;

    return-object p1
.end method

.method public c()Li/a/a/e/f;
    .locals 2

    .line 1
    new-instance v0, Li/a/a/e/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/a/a/e/c$c;-><init>(Li/a/a/e/c$a;)V

    return-object v0
.end method

.method protected bridge synthetic e()Li/a/a/e/c$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/a/e/c$c$b;->h()Li/a/a/e/c$c$b;

    return-object p0
.end method

.method protected h()Li/a/a/e/c$c$b;
    .locals 0

    return-object p0
.end method
