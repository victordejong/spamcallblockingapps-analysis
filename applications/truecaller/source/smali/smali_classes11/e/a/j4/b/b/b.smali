.class public Le/a/j4/b/b/b;
.super Le/a/e/c2/i0;
.source "SourceFile"


# instance fields
.field public final j:Le/a/b0/k/c;


# direct methods
.method public constructor <init>(Le/a/b0/k/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 2
    new-instance v0, Le/a/b0/k/c;

    invoke-direct {v0, p1, p2, p3}, Le/a/b0/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    return-void
.end method


# virtual methods
.method public g(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 2
    iget-object p1, p1, Le/a/b0/k/c;->a:Ljava/lang/String;

    return-object p1
.end method
