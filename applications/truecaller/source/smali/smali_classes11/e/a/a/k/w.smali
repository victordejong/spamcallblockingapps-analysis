.class public Le/a/a/k/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/w$c;,
        Le/a/a/k/w$d;,
        Le/a/a/k/w$b;
    }
.end annotation


# static fields
.field public static final c:[Landroid/content/ContentProviderResult;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a/k/w$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ContentProviderResult;

    .line 1
    sput-object v0, Le/a/a/k/w;->c:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/w;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/k/w$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/w;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/a/k/w;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/k/w;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/content/ContentResolver;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/w;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Le/a/a/k/w;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/w$b;

    .line 4
    iget v3, v2, Le/a/a/k/w$b;->a:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const-string v2, "Unsupported operation"

    .line 5
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_2

    .line 6
    :cond_1
    iget-object v3, v2, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    goto :goto_1

    .line 7
    :cond_2
    iget-object v3, v2, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v3, v2, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 9
    :goto_1
    iget-object v4, v2, Le/a/a/k/w$b;->c:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    iget-object v4, v2, Le/a/a/k/w$b;->c:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 11
    :cond_4
    iget-object v4, v2, Le/a/a/k/w$b;->d:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 12
    iget-object v2, v2, Le/a/a/k/w$b;->e:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 13
    :cond_5
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 14
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_6
    iget-object v1, p0, Le/a/a/k/w;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7
    :goto_3
    sget-object p1, Le/a/a/k/w;->c:[Landroid/content/ContentProviderResult;

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/w;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Landroid/net/Uri;)Le/a/a/k/w$b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/w;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/a/k/w$b$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Le/a/a/k/w$b$a;-><init>(ILandroid/net/Uri;Le/a/a/k/w$a;)V

    return-object v0
.end method

.method public e(Landroid/net/Uri;)Le/a/a/k/w$b$a;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/w;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/a/k/w$b$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Le/a/a/k/w$b$a;-><init>(ILandroid/net/Uri;Le/a/a/k/w$a;)V

    return-object v0
.end method
