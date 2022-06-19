.class public final Le/a/n5/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/n5/e;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/n5/e;->b:Landroid/content/Context;

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 5
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 6
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/ugc/EnhancedSearchStateWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 7
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 8
    iput-object v4, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 9
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 10
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 11
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "enhanced_search_value"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v3}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 14
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 15
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 16
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    check-cast p1, Ln3/m0/r;

    const-string v2, "EnhancedSearchStateWorker"

    .line 17
    invoke-virtual {v0, v2, v1, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
