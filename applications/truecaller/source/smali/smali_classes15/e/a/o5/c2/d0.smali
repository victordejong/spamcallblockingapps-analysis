.class public Le/a/o5/c2/d0;
.super Le/a/o5/c2/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/o5/c2/k;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Le/a/o5/c2/k$c;
    .locals 2

    const/4 v0, 0x1

    .line 1
    new-instance v1, Le/a/o5/c2/k$a;

    invoke-direct {v1, p0, p1, v0}, Le/a/o5/c2/k$a;-><init>(Le/a/o5/c2/k;Landroid/content/Context;Z)V

    const p1, 0x7f081720

    .line 2
    iput p1, v1, Le/a/o5/c2/k$c;->a:I

    const p1, -0x121213

    .line 3
    iput p1, v1, Le/a/o5/c2/k$c;->b:I

    return-object v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
