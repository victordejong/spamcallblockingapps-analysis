.class public final Le/a/x/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$h;


# instance fields
.field public final synthetic a:Le/a/x/a/a;

.field public final synthetic b:Ls1/z/c/y;

.field public final synthetic c:Ls1/z/c/y;


# direct methods
.method public constructor <init>(Le/a/x/a/a;Ls1/z/c/y;Ls1/z/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/x/a/c;->a:Le/a/x/a/a;

    iput-object p2, p0, Le/a/x/a/c;->b:Ls1/z/c/y;

    iput-object p3, p0, Le/a/x/a/c;->c:Ls1/z/c/y;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0

    const-string p2, "motionLayout"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/x/a/c;->c:Ls1/z/c/y;

    iget-boolean p1, p1, Ls1/z/c/y;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/x/a/c;->b:Ls1/z/c/y;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ls1/z/c/y;->a:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/x/a/c;->a:Le/a/x/a/a;

    invoke-static {p1}, Le/a/x/a/a;->TA(Le/a/x/a/a;)V

    :goto_0
    return-void
.end method

.method public c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0

    const-string p2, "p0"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0

    const-string p2, "p0"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
