.class public Le/k/a/b/x/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/b/x/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Le/k/a/b/x/b;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/b/x/b;

    iget-object v1, p0, Le/k/a/b/x/b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Le/k/a/b/x/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/x/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Le/k/a/b/x/b;->b:Ljava/lang/String;

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/b/x/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    iput-object p1, p0, Le/k/a/b/x/b;->c:Ljava/lang/String;

    return v1

    .line 6
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 7
    :cond_3
    iget-object v0, p0, Le/k/a/b/x/b;->d:Ljava/util/HashSet;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Le/k/a/b/x/b;->d:Ljava/util/HashSet;

    .line 9
    iget-object v1, p0, Le/k/a/b/x/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Le/k/a/b/x/b;->d:Ljava/util/HashSet;

    iget-object v1, p0, Le/k/a/b/x/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    iget-object v0, p0, Le/k/a/b/x/b;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/k/a/b/x/b;->b:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Le/k/a/b/x/b;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/k/a/b/x/b;->d:Ljava/util/HashSet;

    return-void
.end method
