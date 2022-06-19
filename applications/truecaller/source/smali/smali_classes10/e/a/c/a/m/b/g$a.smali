.class public final Le/a/c/a/m/b/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/c/a/g/y1;

.field public final b:Le/a/c/v/f/b/a;

.field public final c:Le/a/c/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/g/y1;Le/a/c/v/f/b/a;Le/a/c/j/e;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/g/y1;",
            "Le/a/c/v/f/b/a;",
            "Le/a/c/j/e<",
            "Le/a/c/j/f$a;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLinkFactory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/y1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/c/a/m/b/g$a;->a:Le/a/c/a/g/y1;

    iput-object p2, p0, Le/a/c/a/m/b/g$a;->b:Le/a/c/v/f/b/a;

    iput-object p3, p0, Le/a/c/a/m/b/g$a;->c:Le/a/c/j/e;

    iput-object p4, p0, Le/a/c/a/m/b/g$a;->d:Ls1/z/b/l;

    return-void
.end method
