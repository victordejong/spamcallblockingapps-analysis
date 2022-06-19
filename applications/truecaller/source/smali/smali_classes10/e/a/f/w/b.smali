.class public final Le/a/f/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/w/a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/f/z/f;


# direct methods
.method public constructor <init>(Le/a/f/z/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/w/b;->b:Le/a/f/z/f;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/f/w/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/f/w/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/f/w/b$a;

    iget v1, v0, Le/a/f/w/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/w/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/w/b$a;

    invoke-direct {v0, p0, p2}, Le/a/f/w/b$a;-><init>(Le/a/f/w/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/f/w/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/w/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/w/b$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Le/a/f/w/b$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/f/w/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/f/w/b;->b:Le/a/f/z/f;

    check-cast p2, Le/a/f/f;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Le/a/j4/b/a/h;->C()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7
    iget-object p2, p2, Le/a/f/f;->b:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/settings/CallingSettings;

    const-string v2, "afterCall"

    invoke-interface {p2, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move p2, v3

    :goto_2
    const/4 v2, 0x0

    if-nez p2, :cond_5

    return-object v2

    .line 8
    :cond_5
    iget-object p2, p0, Le/a/f/w/b;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 9
    iget-object p2, p0, Le/a/f/w/b;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_6
    iget-object p2, p0, Le/a/f/w/b;->b:Le/a/f/z/f;

    iput-object p0, v0, Le/a/f/w/b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/f/w/b$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/f/w/b$a;->e:I

    check-cast p2, Le/a/f/f;

    .line 11
    iget-object v3, p2, Le/a/f/f;->a:Ls1/w/f;

    new-instance v4, Le/a/f/e;

    invoke-direct {v4, p2, p1, v2}, Le/a/f/e;-><init>(Le/a/f/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    .line 12
    :goto_3
    check-cast p2, Ljava/lang/String;

    .line 13
    iget-object v0, v0, Le/a/f/w/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
