.class public Lzendesk/belvedere/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/belvedere/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lzendesk/belvedere/b$b;->b:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/b$b;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/b$b;->d:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/b$b;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/b$b;->f:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lzendesk/belvedere/b$b;->g:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lzendesk/belvedere/b$b;->h:Z

    .line 10
    iput-object p1, p0, Lzendesk/belvedere/b$b;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lzendesk/belvedere/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/belvedere/b$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lzendesk/belvedere/b$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/b$b;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lzendesk/belvedere/b$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/b$b;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lzendesk/belvedere/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/belvedere/b$b;->b:Z

    return p0
.end method

.method static synthetic d(Lzendesk/belvedere/b$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/b$b;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lzendesk/belvedere/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/belvedere/b$b;->g:J

    return-wide v0
.end method

.method static synthetic f(Lzendesk/belvedere/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzendesk/belvedere/b$b;->h:Z

    return p0
.end method


# virtual methods
.method public g(Landroidx/appcompat/app/c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lzendesk/belvedere/b;->b(Landroidx/appcompat/app/c;)Lzendesk/belvedere/e;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/b$b;->c:Ljava/util/List;

    new-instance v1, Lzendesk/belvedere/b$b$a;

    invoke-direct {v1, p0, p1}, Lzendesk/belvedere/b$b$a;-><init>(Lzendesk/belvedere/b$b;Lzendesk/belvedere/e;)V

    invoke-virtual {p1, v0, v1}, Lzendesk/belvedere/e;->e1(Ljava/util/List;Lzendesk/belvedere/t$d;)V

    return-void
.end method

.method public h()Lzendesk/belvedere/b$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/b$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/belvedere/a;->c(Landroid/content/Context;)Lzendesk/belvedere/a;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/a;->a()Lzendesk/belvedere/q$b;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/q$b;->a()Lzendesk/belvedere/q;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/b$b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public i(Ljava/lang/String;Z)Lzendesk/belvedere/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/b$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/belvedere/a;->c(Landroid/content/Context;)Lzendesk/belvedere/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lzendesk/belvedere/a;->b()Lzendesk/belvedere/q$c;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2}, Lzendesk/belvedere/q$c;->a(Z)Lzendesk/belvedere/q$c;

    .line 4
    invoke-virtual {v0, p1}, Lzendesk/belvedere/q$c;->c(Ljava/lang/String;)Lzendesk/belvedere/q$c;

    .line 5
    invoke-virtual {v0}, Lzendesk/belvedere/q$c;->b()Lzendesk/belvedere/q;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lzendesk/belvedere/b$b;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public j(Ljava/util/List;)Lzendesk/belvedere/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;)",
            "Lzendesk/belvedere/b$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzendesk/belvedere/b$b;->e:Ljava/util/List;

    return-object p0
.end method

.method public k(Z)Lzendesk/belvedere/b$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/belvedere/b$b;->h:Z

    return-object p0
.end method

.method public l(J)Lzendesk/belvedere/b$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lzendesk/belvedere/b$b;->g:J

    return-object p0
.end method

.method public m(Ljava/util/List;)Lzendesk/belvedere/b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;)",
            "Lzendesk/belvedere/b$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzendesk/belvedere/b$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public varargs n([I)Lzendesk/belvedere/b$b;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lzendesk/belvedere/b$b;->f:Ljava/util/List;

    return-object p0
.end method
