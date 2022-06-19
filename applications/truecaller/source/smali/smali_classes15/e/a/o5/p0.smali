.class public final Le/a/o5/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o5/p0$e;,
        Le/a/o5/p0$d;,
        Le/a/o5/p0$h;,
        Le/a/o5/p0$b;,
        Le/a/o5/p0$g;,
        Le/a/o5/p0$c;,
        Le/a/o5/p0$i;,
        Le/a/o5/p0$f;
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
    iput-object p1, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/p0$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/p0$d;-><init>(Le/a/r2/e;Ljava/util/ArrayList;Le/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public b(DDLjava/lang/String;)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v9, Le/a/o5/p0$g;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v8, 0x0

    move-object v1, v9

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Le/a/o5/p0$g;-><init>(Le/a/r2/e;DDLjava/lang/String;Le/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v9}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public c(Landroid/net/Uri;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/p0$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/o5/p0$f;-><init>(Le/a/r2/e;Landroid/net/Uri;ZLe/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public d(Landroid/net/Uri;Z)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/p0$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/o5/p0$c;-><init>(Le/a/r2/e;Landroid/net/Uri;ZLe/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public e(Ljava/util/List;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/p0$h;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/p0$h;-><init>(Le/a/r2/e;Ljava/util/List;Le/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public f(Landroid/net/Uri;ZJ)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "ZJ)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v8, Le/a/o5/p0$i;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Le/a/o5/p0$i;-><init>(Le/a/r2/e;Landroid/net/Uri;ZJLe/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v8}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public g(Ljava/util/Collection;J)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/a/a/a0;",
            ">;J)",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v7, Le/a/o5/p0$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/o5/p0$e;-><init>(Le/a/r2/e;Ljava/util/Collection;JLe/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v7}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method

.method public h([Lcom/truecaller/messaging/data/types/Entity;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Entity;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/p0;->a:Le/a/r2/w;

    new-instance v1, Le/a/o5/p0$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/o5/p0$b;-><init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Entity;Le/a/o5/p0$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
