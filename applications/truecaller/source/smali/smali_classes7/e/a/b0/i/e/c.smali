.class public Le/a/b0/i/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/a/b0/i/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/UriMatcher;

.field public final d:Le/a/b0/i/e/e;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/util/SparseArray;Landroid/content/UriMatcher;Le/a/b0/i/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/util/SparseArray<",
            "Le/a/b0/i/e/a;",
            ">;",
            "Landroid/content/UriMatcher;",
            "Le/a/b0/i/e/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b0/i/e/c;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Le/a/b0/i/e/c;->b:Landroid/util/SparseArray;

    .line 4
    iput-object p3, p0, Le/a/b0/i/e/c;->c:Landroid/content/UriMatcher;

    .line 5
    iput-object p4, p0, Le/a/b0/i/e/c;->d:Le/a/b0/i/e/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Le/a/b0/i/e/a;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/i/e/c;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Le/a/b0/i/e/c;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/i/e/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Unsupported uri, uri="

    invoke-static {v1, p1}, Le/d/c/a/a;->s2(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
