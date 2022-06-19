.class public final Le/a/a/c/n8/a;
.super Le/a/a/c/r8/c;
.source "SourceFile"


# instance fields
.field public b:Lcom/truecaller/messaging/data/types/Message;

.field public c:Le/a/c/y/f;

.field public d:Le/a/c/a/o/b;

.field public final e:Le/a/m3/d1;


# direct methods
.method public constructor <init>(Le/a/m3/d1;Landroid/content/Context;)V
    .locals 1

    const-string v0, "viewInfocardBinding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p1, Le/a/m3/d1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "viewInfocardBinding.root"

    .line 2
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Le/a/a/c/r8/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/c/n8/a;->e:Le/a/m3/d1;

    return-void
.end method
