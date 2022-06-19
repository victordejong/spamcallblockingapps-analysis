.class public final Le/a/l4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l4/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l4/g$f;,
        Le/a/l4/g$b;,
        Le/a/l4/g$c;,
        Le/a/l4/g$e;,
        Le/a/l4/g$d;
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
    iput-object p1, p0, Le/a/l4/g;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a()Le/a/r2/x;
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
    iget-object v0, p0, Le/a/l4/g;->a:Le/a/r2/w;

    new-instance v1, Le/a/l4/g$e;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l4/g$e;-><init>(Le/a/r2/e;Le/a/l4/g$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public b()Le/a/r2/x;
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
    iget-object v0, p0, Le/a/l4/g;->a:Le/a/r2/w;

    new-instance v1, Le/a/l4/g$f;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l4/g$f;-><init>(Le/a/r2/e;Le/a/l4/g$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l4/g;->a:Le/a/r2/w;

    new-instance v1, Le/a/l4/g$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/l4/g$c;-><init>(Le/a/r2/e;Le/a/l4/g$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public d(Lcom/truecaller/presence/AvailabilityTrigger;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l4/g;->a:Le/a/r2/w;

    new-instance v1, Le/a/l4/g$d;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Le/a/l4/g$d;-><init>(Le/a/r2/e;Lcom/truecaller/presence/AvailabilityTrigger;ZLe/a/l4/g$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public e(Ljava/util/Collection;)Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/util/Collection<",
            "Le/a/l4/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l4/g;->a:Le/a/r2/w;

    new-instance v1, Le/a/l4/g$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/l4/g$b;-><init>(Le/a/r2/e;Ljava/util/Collection;Le/a/l4/g$a;)V

    .line 2
    new-instance p1, Le/a/r2/z;

    invoke-direct {p1, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object p1
.end method
