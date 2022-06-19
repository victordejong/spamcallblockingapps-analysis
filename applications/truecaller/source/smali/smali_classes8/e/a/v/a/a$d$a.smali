.class public final Le/a/v/a/a$d$a;
.super Le/a/b0/a/z/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a$d;->F1(Le/a/v/a/d;Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a$d;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/v/a/a$d;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/a$d$a;->a:Le/a/v/a/a$d;

    iput p2, p0, Le/a/v/a/a$d$a;->b:I

    iput p3, p0, Le/a/v/a/a$d$a;->c:I

    invoke-direct {p0}, Le/a/b0/a/z/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    .line 1
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Le/a/v/a/a$d$a;->e(Ljava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Le/a/v/a/a$d$a;->e(Ljava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method

.method public final e(Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_2

    :cond_0
    sget p1, Lcom/truecaller/details_view/R$id;->collapsed:I

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_3

    .line 2
    :cond_2
    iget p1, p0, Le/a/v/a/a$d$a;->b:I

    goto :goto_1

    .line 3
    :cond_3
    :goto_0
    iget p1, p0, Le/a/v/a/a$d$a;->c:I

    .line 4
    :goto_1
    iget-object p2, p0, Le/a/v/a/a$d$a;->a:Le/a/v/a/a$d;

    invoke-virtual {p2, p1}, Le/a/v/a/a$d;->K1(I)V

    return-void
.end method
