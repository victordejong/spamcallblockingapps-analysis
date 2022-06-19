.class public final Le/a/g5/e0/u/b;
.super Le/a/g5/e0/u/f;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public final b:Landroid/view/View;

.field public final c:Le/a/p5/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/g5/e0/u/b;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/tagger/databinding/LayoutSearchSubcategoryBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/g5/e0/u/b;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Le/a/p5/h0;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/g5/e0/u/f;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/g5/e0/u/b;->b:Landroid/view/View;

    iput-object p2, p0, Le/a/g5/e0/u/b;->c:Le/a/p5/h0;

    .line 2
    new-instance p1, Le/a/p5/x0/b;

    new-instance p2, Le/a/g5/e0/u/b$a;

    invoke-direct {p2}, Le/a/g5/e0/u/b$a;-><init>()V

    invoke-direct {p1, p2}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/g5/e0/u/b;->a:Le/a/p5/x0/b;

    return-void
.end method
