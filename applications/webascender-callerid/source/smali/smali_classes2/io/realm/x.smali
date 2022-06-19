.class public final Lio/realm/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/x$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/e0;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/internal/k$a;"
    }
.end annotation


# static fields
.field private static i:Lio/realm/x$b;


# instance fields
.field private a:Lio/realm/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lio/realm/internal/o;

.field private d:Lio/realm/internal/OsObject;

.field private e:Lio/realm/a;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/realm/internal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/j<",
            "Lio/realm/internal/OsObject$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/realm/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/x$b;-><init>(Lio/realm/x$a;)V

    sput-object v0, Lio/realm/x;->i:Lio/realm/x$b;

    return-void
.end method

.method public constructor <init>(Lio/realm/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/realm/x;->b:Z

    .line 3
    new-instance v0, Lio/realm/internal/j;

    invoke-direct {v0}, Lio/realm/internal/j;-><init>()V

    iput-object v0, p0, Lio/realm/x;->h:Lio/realm/internal/j;

    .line 4
    iput-object p1, p0, Lio/realm/x;->a:Lio/realm/e0;

    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/x;->h:Lio/realm/internal/j;

    sget-object v1, Lio/realm/x;->i:Lio/realm/x$b;

    invoke-virtual {v0, v1}, Lio/realm/internal/j;->c(Lio/realm/internal/j$a;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/x;->e:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/realm/x;->c:Lio/realm/internal/o;

    invoke-interface {v0}, Lio/realm/internal/o;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/realm/x;->d:Lio/realm/internal/OsObject;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/x;->e:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/x;->c:Lio/realm/internal/o;

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObject;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V

    iput-object v0, p0, Lio/realm/x;->d:Lio/realm/internal/OsObject;

    .line 4
    iget-object v1, p0, Lio/realm/x;->h:Lio/realm/internal/j;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->setObserverPairs(Lio/realm/internal/j;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/realm/x;->h:Lio/realm/internal/j;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/x;->c:Lio/realm/internal/o;

    .line 2
    invoke-direct {p0}, Lio/realm/x;->f()V

    .line 3
    invoke-interface {p1}, Lio/realm/internal/o;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lio/realm/x;->g()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/x;->f:Z

    return v0
.end method

.method public c()Lio/realm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/x;->e:Lio/realm/a;

    return-object v0
.end method

.method public d()Lio/realm/internal/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/x;->c:Lio/realm/internal/o;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/x;->b:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/realm/x;->f:Z

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/realm/x;->b:Z

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/realm/x;->g:Ljava/util/List;

    return-void
.end method

.method public k(Lio/realm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/x;->e:Lio/realm/a;

    return-void
.end method

.method public l(Lio/realm/internal/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/x;->c:Lio/realm/internal/o;

    return-void
.end method
