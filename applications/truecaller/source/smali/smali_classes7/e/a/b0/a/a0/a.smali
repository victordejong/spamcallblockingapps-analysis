.class public final Le/a/b0/a/a0/a;
.super Le/a/b0/a/b/a;
.source "SourceFile"


# instance fields
.field public final V:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final W:I

.field public final X:Landroid/content/Context;

.field public final Y:Ls1/w/f;

.field public final Z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/p5/i0;

    invoke-direct {v0, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object p1, p0, Le/a/b0/a/a0/a;->X:Landroid/content/Context;

    iput-object p2, p0, Le/a/b0/a/a0/a;->Y:Ls1/w/f;

    iput p3, p0, Le/a/b0/a/a0/a;->Z:I

    .line 3
    new-instance p2, Lcom/truecaller/common/ui/avatar/AvatarXView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p2, p1, v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    iput-object p2, p0, Le/a/b0/a/a0/a;->V:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Le/a/b0/a/a0/a;->W:I

    .line 7
    invoke-virtual {p2, p0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ls1/w/f;II)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget p3, Lcom/truecaller/common/ui/R$dimen;->notification_tcx_call_avatar_size:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;I)V

    return-void
.end method

.method public static synthetic sk(Le/a/b0/a/a0/a;ILs1/w/d;I)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 1
    iget p1, p0, Le/a/b0/a/a0/a;->W:I

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/b0/a/a0/a;->rk(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final rk(ILs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/b0/a/a0/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/b0/a/a0/a$a;

    iget v1, v0, Le/a/b0/a/a0/a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b0/a/a0/a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b0/a/a0/a$a;

    invoke-direct {v0, p0, p2}, Le/a/b0/a/a0/a$a;-><init>(Le/a/b0/a/a0/a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/b0/a/a0/a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b0/a/a0/a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/b0/a/a0/a;->Y:Ls1/w/f;

    new-instance v2, Le/a/b0/a/a0/a$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/b0/a/a0/a$b;-><init>(Le/a/b0/a/a0/a;ILs1/w/d;)V

    iput v3, v0, Le/a/b0/a/a0/a$a;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "withContext(cpuContext) \u2026vas)\n        bitmap\n    }"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
