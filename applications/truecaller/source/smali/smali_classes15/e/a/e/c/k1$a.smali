.class public final Le/a/e/c/k1$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic b:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/e/c/k1$a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/ViewDetailsOpenHourBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/e/c/k1$a;->b:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/e/c/k1;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string p1, "itemView"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Le/a/p5/x0/b;

    new-instance p2, Le/a/e/c/k1$a$a;

    invoke-direct {p2}, Le/a/e/c/k1$a$a;-><init>()V

    invoke-direct {p1, p2}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/e/c/k1$a;->a:Le/a/p5/x0/b;

    return-void
.end method
