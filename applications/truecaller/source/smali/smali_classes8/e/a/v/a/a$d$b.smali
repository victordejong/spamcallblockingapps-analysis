.class public final Le/a/v/a/a$d$b;
.super Le/a/b0/a/z/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a$d;->I1(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a$d;

.field public final synthetic b:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;


# direct methods
.method public constructor <init>(Le/a/v/a/a$d;Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/a$d$b;->a:Le/a/v/a/a$d;

    iput-object p2, p0, Le/a/v/a/a$d$b;->b:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

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

    invoke-virtual {p0, p1, p2}, Le/a/v/a/a$d$b;->e(Ljava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Le/a/v/a/a$d$b;->e(Ljava/lang/Float;Ljava/lang/Integer;)V

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
    iget-object p1, p0, Le/a/v/a/a$d$b;->a:Le/a/v/a/a$d;

    iget-object p2, p0, Le/a/v/a/a$d$b;->b:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    .line 3
    iget-object p2, p2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;->b:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    .line 4
    invoke-virtual {p1, p2}, Le/a/v/a/a$d;->a(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    goto :goto_1

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/v/a/a$d$b;->a:Le/a/v/a/a$d;

    iget-object p2, p0, Le/a/v/a/a$d$b;->b:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    .line 6
    iget-object p2, p2, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;

    .line 7
    invoke-virtual {p1, p2}, Le/a/v/a/a$d;->a(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;)V

    :goto_1
    return-void
.end method
