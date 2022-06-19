.class public final Le/a/o5/c2/u;
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
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    new-instance v1, Le/a/o5/c2/k$a;

    invoke-direct {v1, p0, p1, v0}, Le/a/o5/c2/k$a;-><init>(Le/a/o5/c2/k;Landroid/content/Context;Z)V

    const-string p1, "super.getTheme(context)"

    .line 2
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f081715

    .line 3
    iput p1, v1, Le/a/o5/c2/k$c;->a:I

    const-wide v2, 0xff0d82c6L

    long-to-int p1, v2

    .line 4
    iput p1, v1, Le/a/o5/c2/k$c;->b:I

    return-object v1
.end method
