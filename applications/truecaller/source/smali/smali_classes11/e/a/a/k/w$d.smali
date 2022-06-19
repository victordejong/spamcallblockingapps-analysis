.class public Le/a/a/k/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/a/k/w$d;->b:Z

    .line 3
    iput-object p1, p0, Le/a/a/k/w$d;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Le/a/a/k/w;)[Landroid/content/ContentProviderResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/a/k/w;->c:[Landroid/content/ContentProviderResult;

    iget-boolean v1, p0, Le/a/a/k/w$d;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/a/k/w$d;->a:Landroid/content/ContentResolver;

    invoke-virtual {p1, v1}, Le/a/a/k/w;->b(Landroid/content/ContentResolver;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iput-boolean v2, p0, Le/a/a/k/w$d;->b:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v0

    .line 5
    :catch_1
    iput-boolean v2, p0, Le/a/a/k/w$d;->b:Z

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Le/a/a/k/w$d;->a:Landroid/content/ContentResolver;

    .line 7
    iget-object v3, p1, Le/a/a/k/w;->b:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget-object v3, p1, Le/a/a/k/w;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ContentProviderResult;

    .line 9
    iget-object v4, p1, Le/a/a/k/w;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_6

    .line 10
    iget-object v5, p1, Le/a/a/k/w;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/k/w$b;

    .line 11
    iget v6, v5, Le/a/a/k/w$b;->a:I

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const-string p1, "Unsupported operation"

    .line 12
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v6, v5, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    iget-object v7, v5, Le/a/a/k/w$b;->d:Ljava/lang/String;

    iget-object v5, v5, Le/a/a/k/w$b;->e:[Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 14
    new-instance v6, Landroid/content/ContentProviderResult;

    invoke-direct {v6, v5}, Landroid/content/ContentProviderResult;-><init>(I)V

    aput-object v6, v3, v2

    goto :goto_2

    .line 15
    :cond_4
    iget-object v6, v5, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    iget-object v7, v5, Le/a/a/k/w$b;->c:Landroid/content/ContentValues;

    iget-object v8, v5, Le/a/a/k/w$b;->d:Ljava/lang/String;

    iget-object v5, v5, Le/a/a/k/w$b;->e:[Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 16
    new-instance v6, Landroid/content/ContentProviderResult;

    invoke-direct {v6, v5}, Landroid/content/ContentProviderResult;-><init>(I)V

    aput-object v6, v3, v2

    goto :goto_2

    .line 17
    :cond_5
    iget-object v6, v5, Le/a/a/k/w$b;->b:Landroid/net/Uri;

    iget-object v5, v5, Le/a/a/k/w$b;->c:Landroid/content/ContentValues;

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 18
    new-instance v6, Landroid/content/ContentProviderResult;

    invoke-direct {v6, v5}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    aput-object v6, v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object v0, v3

    :cond_7
    :goto_3
    return-object v0
.end method
