.class public Ln3/i/a/b/h;
.super Ln3/i/a/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/i/a/b/h$a;
    }
.end annotation


# instance fields
.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/i/a/b/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/i/a/b/h;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ln3/i/a/b/h;->g:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln3/i/a/b/h;->h:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 5
    iput v1, p0, Ln3/i/a/b/h;->i:F

    .line 6
    iput v1, p0, Ln3/i/a/b/h;->j:F

    .line 7
    iput v1, p0, Ln3/i/a/b/h;->k:F

    .line 8
    iput v1, p0, Ln3/i/a/b/h;->l:F

    .line 9
    iput v0, p0, Ln3/i/a/b/h;->m:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln3/i/a/b/r;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget-object p2, Ln3/i/a/b/h$a;->a:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p2, :cond_4

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 5
    sget-object v4, Ln3/i/a/b/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, 0x3

    packed-switch v4, :pswitch_data_0

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    sget-object v2, Ln3/i/a/b/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    goto/16 :goto_1

    .line 7
    :pswitch_0
    iget v2, p0, Ln3/i/a/b/h;->j:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->j:F

    goto/16 :goto_1

    .line 8
    :pswitch_1
    iget v2, p0, Ln3/i/a/b/h;->i:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->i:F

    goto/16 :goto_1

    .line 9
    :pswitch_2
    iget v2, p0, Ln3/i/a/b/h;->g:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->g:I

    goto/16 :goto_1

    .line 10
    :pswitch_3
    iget v2, p0, Ln3/i/a/b/h;->m:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->m:I

    goto/16 :goto_1

    .line 11
    :pswitch_4
    iget v2, p0, Ln3/i/a/b/h;->j:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->i:F

    iput v2, p0, Ln3/i/a/b/h;->j:F

    goto/16 :goto_1

    .line 12
    :pswitch_5
    iget v2, p0, Ln3/i/a/b/h;->l:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->l:F

    goto/16 :goto_1

    .line 13
    :pswitch_6
    iget v2, p0, Ln3/i/a/b/h;->k:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->k:F

    goto :goto_1

    .line 14
    :pswitch_7
    iget v2, p0, Ln3/i/a/b/h;->h:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/h;->h:I

    goto :goto_1

    .line 15
    :pswitch_8
    iget v2, p0, Ln3/i/a/b/i;->e:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/i;->e:I

    goto :goto_1

    .line 16
    :pswitch_9
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_0

    .line 17
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ln3/i/a/b/h;->f:Ljava/lang/String;

    goto :goto_1

    .line 18
    :cond_0
    sget-object v2, Ln3/i/a/a/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Ln3/i/a/b/h;->f:Ljava/lang/String;

    goto :goto_1

    .line 19
    :pswitch_a
    iget v2, p0, Ln3/i/a/b/b;->a:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/b;->a:I

    goto :goto_1

    .line 20
    :pswitch_b
    sget-boolean v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    if-eqz v4, :cond_1

    .line 21
    iget v4, p0, Ln3/i/a/b/b;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Ln3/i/a/b/b;->b:I

    if-ne v4, v2, :cond_3

    .line 22
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ln3/i/a/b/b;->c:Ljava/lang/String;

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_2

    .line 24
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ln3/i/a/b/b;->c:Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_2
    iget v2, p0, Ln3/i/a/b/b;->b:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/b;->b:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
