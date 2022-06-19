.class public final Le/a/d/c/a0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$h;


# instance fields
.field public final synthetic a:Le/a/d/s/c;

.field public final synthetic b:Ls1/z/c/y;

.field public final synthetic c:Le/a/d/c/a0/b;


# direct methods
.method public constructor <init>(Le/a/d/s/c;Ls1/z/c/y;Le/a/d/c/a0/b;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a0/d;->a:Le/a/d/s/c;

    iput-object p2, p0, Le/a/d/c/a0/d;->b:Ls1/z/c/y;

    iput-object p3, p0, Le/a/d/c/a0/d;->c:Le/a/d/c/a0/b;

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
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d/c/a0/d;->c:Le/a/d/c/a0/b;

    iget-object p2, p0, Le/a/d/c/a0/d;->a:Le/a/d/s/c;

    iget-object p2, p2, Le/a/d/s/c;->d:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string v0, "motionLayout"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Le/a/d/c/a0/b;->i:[Ls1/a/l;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    sget p2, Lcom/truecaller/voip/R$id;->incoming_call_answer_end_set:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/d/c/a0/d;->b:Ls1/z/c/y;

    iget-boolean p1, p1, Ls1/z/c/y;->a:Z

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/d/c/a0/d;->c:Le/a/d/c/a0/b;

    invoke-virtual {p1}, Le/a/d/c/a0/b;->RA()Le/a/d/c/a0/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/a0/i;

    invoke-virtual {p1}, Le/a/d/c/a0/i;->Kj()V

    :cond_1
    return-void
.end method

.method public c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0

    return-void
.end method
