.class public Le/a/b0/i/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/a/b0/i/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/UriMatcher;

.field public c:Le/a/b0/i/e/e;

.field public d:Ljava/lang/String;

.field public e:Landroid/net/Uri;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le/a/b0/i/e/d;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Le/a/b0/i/e/d;->b:Landroid/content/UriMatcher;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/b0/i/e/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/i/e/d;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/a/b0/i/e/b;

    iget-object v1, p0, Le/a/b0/i/e/d;->d:Ljava/lang/String;

    iget v2, p0, Le/a/b0/i/e/d;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Le/a/b0/i/e/d;->f:I

    invoke-direct {v0, p0, v1, p1, v2}, Le/a/b0/i/e/b;-><init>(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
