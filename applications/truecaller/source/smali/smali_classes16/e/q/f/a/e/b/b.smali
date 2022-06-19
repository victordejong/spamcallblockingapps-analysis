.class public Le/q/f/a/e/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/q/f/a/e/b/b$b;,
        Le/q/f/a/e/b/b$a;
    }
.end annotation


# instance fields
.field public a:Le/q/f/a/e/b/c;

.field public b:Le/q/f/a/c/b;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/q/f/a/e/b/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/q/f/a/e/a;

.field public e:I


# direct methods
.method public constructor <init>(Le/q/f/a/c/b;Le/q/f/a/e/d/a;Le/q/f/a/e/a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/q/f/a/e/b/b;->e:I

    .line 3
    iput-object p3, p0, Le/q/f/a/e/b/b;->d:Le/q/f/a/e/a;

    .line 4
    new-instance p3, Le/q/f/a/e/b/c;

    invoke-direct {p3}, Le/q/f/a/e/b/c;-><init>()V

    iput-object p3, p0, Le/q/f/a/e/b/b;->a:Le/q/f/a/e/b/c;

    .line 5
    new-instance v6, Le/q/f/a/e/b/a;

    new-instance v4, Le/q/f/a/e/b/b$a;

    invoke-direct {v4, p0}, Le/q/f/a/e/b/b$a;-><init>(Le/q/f/a/e/b/b;)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Le/q/f/a/e/b/a;-><init>(Le/q/f/a/c/b;Le/q/f/a/e/d/a;Le/q/f/a/e/d/a;Le/q/f/a/f/d;I)V

    invoke-virtual {p3, v6}, Le/q/f/a/e/b/c;->a(Le/q/f/a/e/b/a;)V

    .line 6
    iput-object p1, p0, Le/q/f/a/e/b/b;->b:Le/q/f/a/c/b;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Le/q/f/a/e/b/b;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/q/f/a/e/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/f/a/e/b/b$b;

    .line 2
    iget-object v2, v1, Le/q/f/a/e/b/b$b;->b:Le/q/f/a/e/d/b;

    iget-boolean v2, v2, Le/q/f/a/e/d/b;->h:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p0, Le/q/f/a/e/b/b;->a:Le/q/f/a/e/b/c;

    iget-object v3, v1, Le/q/f/a/e/b/b$b;->a:Le/q/f/a/e/b/a;

    invoke-virtual {v2, v3}, Le/q/f/a/e/b/c;->a(Le/q/f/a/e/b/a;)V

    .line 4
    iget-object v2, v1, Le/q/f/a/e/b/b$b;->a:Le/q/f/a/e/b/a;

    iget-object v1, v1, Le/q/f/a/e/b/b$b;->b:Le/q/f/a/e/d/b;

    invoke-virtual {v2, v1}, Le/q/f/a/e/b/a;->a(Le/q/f/a/e/d/b;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/q/f/a/e/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
