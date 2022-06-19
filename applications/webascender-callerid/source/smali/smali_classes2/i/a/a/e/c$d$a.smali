.class final Li/a/a/e/c$d$a;
.super Li/a/a/e/c$b;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/a/e/c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/a/e/c$b<",
        "Li/a/a/e/c$d$a;",
        ">;",
        "Li/a/a/e/i;"
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
    invoke-direct {p0}, Li/a/a/e/c$d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Li/a/a/e/i;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Li/a/a/e/c$b;->f(Ljava/lang/String;)Li/a/a/e/c$b;

    move-result-object p1

    check-cast p1, Li/a/a/e/i;

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/String;)Li/a/a/e/i;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Li/a/a/e/c$b;->g(Ljava/lang/String;)Li/a/a/e/c$b;

    move-result-object p1

    check-cast p1, Li/a/a/e/i;

    return-object p1
.end method

.method public c()Li/a/a/e/h;
    .locals 2

    .line 1
    new-instance v0, Li/a/a/e/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/a/a/e/c$d;-><init>(Li/a/a/e/c$a;)V

    return-object v0
.end method

.method public d(Ljava/util/function/Consumer;)Li/a/a/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Li/a/a/e/a;",
            ">;)",
            "Li/a/a/e/i;"
        }
    .end annotation

    const-string v0, "callback"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method protected bridge synthetic e()Li/a/a/e/c$b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/a/e/c$d$a;->h()Li/a/a/e/c$d$a;

    return-object p0
.end method

.method protected h()Li/a/a/e/c$d$a;
    .locals 0

    return-object p0
.end method
