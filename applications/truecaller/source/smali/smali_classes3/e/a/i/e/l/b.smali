.class public final Le/a/i/e/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/l/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/e/l/b;->b:Lo3/a;

    .line 2
    sget-object p1, Le/a/i/e/l/b$a;->b:Le/a/i/e/l/b$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e/l/b;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lx3/b<",
            "Lu3/l0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/i/e/l/b;->a:Ls1/g;

    invoke-interface {p3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/i/e/l/c;

    .line 2
    iget-object v0, p0, Le/a/i/e/l/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->y()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/v0/testing/response"

    goto :goto_0

    :cond_0
    const-string v0, "/v0/response"

    .line 3
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Le/a/i/e/l/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lx3/b;

    move-result-object p1

    return-object p1
.end method
