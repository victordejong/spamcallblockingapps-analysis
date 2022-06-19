.class public Le/a/o5/c2/a;
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
.method public a()Le/a/o5/c2/k$b;
    .locals 2

    .line 1
    new-instance v0, Le/a/o5/c2/k$b;

    invoke-direct {v0, p0}, Le/a/o5/c2/k$b;-><init>(Le/a/o5/c2/k;)V

    const-string v1, "Claro"

    .line 2
    iput-object v1, v0, Le/a/o5/c2/k$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Le/a/o5/c2/k$c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-instance v1, Le/a/o5/c2/k$a;

    invoke-direct {v1, p0, p1, v0}, Le/a/o5/c2/k$a;-><init>(Le/a/o5/c2/k;Landroid/content/Context;Z)V

    const p1, -0x28cde2

    .line 2
    iput p1, v1, Le/a/o5/c2/k$c;->b:I

    return-object v1
.end method
