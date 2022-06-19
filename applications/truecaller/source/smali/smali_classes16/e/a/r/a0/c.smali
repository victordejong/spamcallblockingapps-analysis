.class public final Le/a/r/a0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/i;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ln3/r/a/l;

.field public final c:Le/a/d4/c;

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/f;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/r/c/a0/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ln3/r/a/l;Le/a/d4/c;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/r/c/a0/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ln3/r/a/l;",
            "Le/a/d4/c;",
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/f;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;",
            "Le/a/r/c/a0/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googlePhoneNumbersHintOpener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countriesHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/a0/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/r/a0/c;->b:Ln3/r/a/l;

    iput-object p3, p0, Le/a/r/a0/c;->c:Le/a/d4/c;

    iput-object p4, p0, Le/a/r/a0/c;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/r/a0/c;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Le/a/r/a0/c;->f:Le/a/r/c/a0/a;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/r/a0/i$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/c$a;

    iget v1, v0, Le/a/r/a0/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/c$a;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/c$a;-><init>(Le/a/r/a0/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/c;->c:Le/a/d4/c;

    sget-object v2, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {p1, v2}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Le/a/r/a0/i$a$c;->a:Le/a/r/a0/i$a$c;

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/r/a0/c;->a:Ls1/w/f;

    new-instance v2, Le/a/r/a0/c$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/r/a0/c$b;-><init>(Le/a/r/a0/c;Ls1/w/d;)V

    iput v3, v0, Le/a/r/a0/c$a;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    check-cast p1, Le/a/r/a0/i$a;

    :goto_2
    return-object p1
.end method
