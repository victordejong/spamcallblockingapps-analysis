.class public final Le/a/o5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/w$c;,
        Le/a/o5/w$h;,
        Le/a/o5/w$g;,
        Le/a/o5/w$b;,
        Le/a/o5/w$d;,
        Le/a/o5/w$e;,
        Le/a/o5/w$f;,
        Le/a/o5/w$j;,
        Le/a/o5/w$i;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/w;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Le/a/o5/u;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$c;-><init>(Le/a/r2/e;Ljava/util/List;Le/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$d;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c(Landroid/net/Uri;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$g;-><init>(Le/a/r2/e;Landroid/net/Uri;Le/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public d(J)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/o5/w$f;-><init>(Le/a/r2/e;JLe/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public e(Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$b;-><init>(Le/a/r2/e;Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/w$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public f(Landroid/net/Uri;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/r2/x<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$i;-><init>(Le/a/r2/e;Landroid/net/Uri;Le/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public g(Landroid/net/Uri;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/r2/x<",
            "Le/a/o5/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$h;-><init>(Le/a/r2/e;Landroid/net/Uri;Le/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public h(Ljava/lang/String;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/w$e;-><init>(Le/a/r2/e;Ljava/lang/String;Le/a/o5/w$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public i()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/w;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/w$j;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/o5/w$j;-><init>(Le/a/r2/e;Le/a/o5/w$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
