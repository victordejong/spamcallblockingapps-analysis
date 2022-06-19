.class public Ln3/i/a/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/i/a/b/q$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public b:Ln3/i/c/h;

.field public c:Ln3/i/a/b/q$b;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/i/a/b/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ln3/i/a/b/q$b;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/i/a/b/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/i/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/util/SparseIntArray;

.field public j:I

.field public k:I

.field public l:Landroid/view/MotionEvent;

.field public m:Z

.field public n:Z

.field public o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

.field public p:Z

.field public q:F

.field public r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    .line 3
    iput-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Ln3/i/a/b/q;->e:Ln3/i/a/b/q$b;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/i/a/b/q;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ln3/i/a/b/q;->h:Ljava/util/HashMap;

    .line 9
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    const/16 v1, 0x190

    .line 10
    iput v1, p0, Ln3/i/a/b/q;->j:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Ln3/i/a/b/q;->k:I

    .line 12
    iput-boolean v1, p0, Ln3/i/a/b/q;->m:Z

    .line 13
    iput-boolean v1, p0, Ln3/i/a/b/q;->n:Z

    .line 14
    iput-object p2, p0, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 17
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 18
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "MotionScene"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    goto :goto_2

    :sswitch_2
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    goto :goto_2

    :sswitch_3
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 20
    :pswitch_0
    new-instance v2, Ln3/i/a/b/g;

    invoke-direct {v2, p1, p2}, Ln3/i/a/b/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 21
    iget-object v3, v0, Ln3/i/a/b/q$b;->k:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 23
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ln3/i/a/b/q;->j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 24
    :pswitch_2
    new-instance v2, Ln3/i/c/h;

    invoke-direct {v2, p1, p2}, Ln3/i/c/h;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    goto :goto_4

    .line 25
    :pswitch_3
    iget-object v2, v0, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    new-instance v3, Ln3/i/a/b/q$b$a;

    invoke-direct {v3, p1, v0, p2}, Ln3/i/a/b/q$b$a;-><init>(Landroid/content/Context;Ln3/i/a/b/q$b;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_4
    if-nez v0, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 27
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 28
    :cond_2
    new-instance v2, Ln3/i/a/b/v;

    iget-object v3, p0, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v2, p1, v3, p2}, Ln3/i/a/b/v;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 29
    iput-object v2, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    goto :goto_4

    .line 30
    :pswitch_5
    iget-object v0, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    new-instance v2, Ln3/i/a/b/q$b;

    invoke-direct {v2, p0, p1, p2}, Ln3/i/a/b/q$b;-><init>(Ln3/i/a/b/q;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-nez v0, :cond_3

    .line 32
    iget-boolean v0, v2, Ln3/i/a/b/q$b;->b:Z

    if-nez v0, :cond_3

    .line 33
    iput-object v2, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 34
    iget-object v0, v2, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_3

    .line 35
    iget-boolean v3, p0, Ln3/i/a/b/q;->p:Z

    invoke-virtual {v0, v3}, Ln3/i/a/b/v;->b(Z)V

    .line 36
    :cond_3
    iget-boolean v0, v2, Ln3/i/a/b/q$b;->b:Z

    if-eqz v0, :cond_5

    .line 37
    iget v0, v2, Ln3/i/a/b/q$b;->c:I

    if-ne v0, v6, :cond_4

    .line 38
    iput-object v2, p0, Ln3/i/a/b/q;->e:Ln3/i/a/b/q$b;

    goto :goto_3

    .line 39
    :cond_4
    iget-object v0, p0, Ln3/i/a/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_3
    iget-object v0, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v2

    goto :goto_4

    .line 41
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Ln3/i/a/b/q;->k(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 42
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 43
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 46
    :cond_7
    :goto_5
    iget-object p1, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    new-instance p3, Ln3/i/c/d;

    invoke-direct {p3}, Ln3/i/c/d;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    iget-object p1, p0, Ln3/i/a/b/q;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_6
        -0x49df9cec -> :sswitch_5
        0x100d4975 -> :sswitch_4
        0x12a432c9 -> :sswitch_3
        0x138aac7b -> :sswitch_2
        0x2f487256 -> :sswitch_1
        0x526c4e31 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .locals 10

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    iget-object v3, p0, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    return v4

    .line 2
    :cond_1
    iget-object v3, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/a/b/q$b;

    .line 3
    iget v7, v6, Ln3/i/a/b/q$b;->n:I

    if-nez v7, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    iget-object v8, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-ne v8, v6, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    iget v8, v6, Ln3/i/a/b/q$b;->d:I

    if-ne p2, v8, :cond_7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    const/4 v9, 0x2

    if-ne v7, v9, :cond_7

    .line 6
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 7
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Ln3/i/a/b/q$b;)V

    .line 8
    iget p2, v6, Ln3/i/a/b/q$b;->n:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p2, v8, :cond_6

    .line 9
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    .line 10
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 11
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 13
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1(Z)V

    .line 14
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 15
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 16
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 17
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->m1()V

    :goto_2
    return v5

    .line 18
    :cond_7
    iget v8, v6, Ln3/i/a/b/q$b;->c:I

    if-ne p2, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    if-ne v7, v5, :cond_2

    .line 19
    :cond_8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 20
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Ln3/i/a/b/q$b;)V

    .line 21
    iget p2, v6, Ln3/i/a/b/q$b;->n:I

    const/4 v3, 0x0

    if-ne p2, v8, :cond_9

    .line 22
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    .line 23
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 24
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_3

    .line 25
    :cond_9
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 26
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1(Z)V

    .line 27
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 28
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 29
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 30
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->m1()V

    :goto_3
    return v5

    :cond_a
    return v4
.end method

.method public b(I)Ln3/i/c/d;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {v0, p1, v1, v1}, Ln3/i/c/h;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    move p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/i/c/d;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/i/c/d;

    :goto_0
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Ln3/i/a/b/q$b;->h:I

    return v0

    .line 3
    :cond_0
    iget v0, p0, Ln3/i/a/b/q;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, v0, Ln3/i/a/b/q$b;->c:I

    return v0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 5
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :cond_1
    return p1
.end method

.method public f()Landroid/view/animation/Interpolator;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 2
    iget v1, v0, Ln3/i/a/b/q$b;->e:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_6

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 6
    :cond_3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 7
    :cond_4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 8
    :cond_5
    iget-object v0, v0, Ln3/i/a/b/q$b;->f:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Ln3/i/a/a/c;->c(Ljava/lang/String;)Ln3/i/a/a/c;

    move-result-object v0

    .line 10
    new-instance v1, Ln3/i/a/b/q$a;

    invoke-direct {v1, p0, v0}, Ln3/i/a/b/q$a;-><init>(Ln3/i/a/b/q;Ln3/i/a/a/c;)V

    return-object v1

    .line 11
    :cond_6
    iget-object v0, p0, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 12
    iget v1, v1, Ln3/i/a/b/q$b;->g:I

    .line 13
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public g(Ln3/i/a/b/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/i/a/b/q;->e:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ln3/i/a/b/q$b;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/a/b/g;

    .line 5
    invoke-virtual {v1, p1}, Ln3/i/a/b/g;->a(Ln3/i/a/b/m;)V

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, v0, Ln3/i/a/b/q$b;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/a/b/g;

    .line 8
    invoke-virtual {v1, p1}, Ln3/i/a/b/g;->a(Ln3/i/a/b/m;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public h()F
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Ln3/i/a/b/v;->q:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget v0, v0, Ln3/i/a/b/q$b;->d:I

    return v0
.end method

.method public final j(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 1
    new-instance v0, Ln3/i/c/d;

    invoke-direct {v0}, Ln3/i/c/d;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ln3/i/c/d;->b:Z

    .line 3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v1, v2, :cond_3

    .line 4
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "deriveConstraintsFrom"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v7}, Ln3/i/a/b/q;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 8
    iget-object v6, p0, Ln3/i/a/b/q;->h:Ljava/util/HashMap;

    const/16 v8, 0x2f

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0, p1, v7}, Ln3/i/a/b/q;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v4, v3, :cond_5

    .line 13
    iget-object v1, p0, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 14
    invoke-virtual {v0, p1, p2}, Ln3/i/c/d;->l(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v5, v3, :cond_4

    .line 15
    iget-object p1, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    :cond_4
    iget-object p1, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final k(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    .line 6
    iget v3, p0, Ln3/i/a/b/q;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/q;->j:I

    goto :goto_1

    .line 7
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Ln3/i/a/b/q;->k:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final l(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-lez v0, :cond_9

    .line 2
    iget-object v1, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ln3/i/a/b/q;->l(I)V

    .line 3
    iget-object v1, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/c/d;

    .line 4
    iget-object v2, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/c/d;

    if-nez v2, :cond_0

    .line 5
    iget-object p1, p0, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 10
    iget-object v5, v2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/c/d$a;

    .line 11
    iget-object v5, v1, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    iget-object v5, v1, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ln3/i/c/d$a;

    invoke-direct {v7}, Ln3/i/c/d$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    iget-object v5, v1, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/c/d$a;

    .line 14
    iget-object v5, v4, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-boolean v6, v5, Ln3/i/c/d$b;->b:Z

    if-nez v6, :cond_3

    .line 15
    iget-object v6, v3, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    invoke-virtual {v5, v6}, Ln3/i/c/d$b;->a(Ln3/i/c/d$b;)V

    .line 16
    :cond_3
    iget-object v5, v4, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget-boolean v6, v5, Ln3/i/c/d$d;->a:Z

    if-nez v6, :cond_4

    .line 17
    iget-object v6, v3, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    invoke-virtual {v5, v6}, Ln3/i/c/d$d;->a(Ln3/i/c/d$d;)V

    .line 18
    :cond_4
    iget-object v5, v4, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iget-boolean v6, v5, Ln3/i/c/d$e;->a:Z

    if-nez v6, :cond_5

    .line 19
    iget-object v6, v3, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v5, v6}, Ln3/i/c/d$e;->a(Ln3/i/c/d$e;)V

    .line 20
    :cond_5
    iget-object v5, v4, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    iget-boolean v6, v5, Ln3/i/c/d$c;->a:Z

    if-nez v6, :cond_6

    .line 21
    iget-object v6, v3, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    invoke-virtual {v5, v6}, Ln3/i/c/d$c;->a(Ln3/i/c/d$c;)V

    .line 22
    :cond_6
    iget-object v5, v3, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23
    iget-object v7, v4, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 24
    iget-object v7, v4, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    iget-object v8, v3, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_8
    iget-object v0, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9
    return-void
.end method

.method public m(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 2
    iget-object v2, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3
    iget-object v4, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 4
    iget-object v5, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    :goto_1
    if-lez v4, :cond_2

    if-ne v4, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v5, -0x1

    if-gez v5, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-object v5, p0, Ln3/i/a/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    move v5, v6

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v3, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0, v2}, Ln3/i/a/b/q;->l(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 7
    :goto_3
    iget-object v2, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 8
    iget-object v2, p0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/c/d;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v0

    :goto_4
    if-ge v5, v4, :cond_e

    .line 11
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 13
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    .line 14
    iget-boolean v9, v2, Ln3/i/c/d;->b:Z

    if-eqz v9, :cond_6

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    goto :goto_5

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    :goto_5
    iget-object v9, v2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 17
    iget-object v9, v2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ln3/i/c/d$a;

    invoke-direct {v11}, Ln3/i/c/d$a;-><init>()V

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_7
    iget-object v9, v2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/i/c/d$a;

    .line 19
    iget-object v10, v9, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-boolean v10, v10, Ln3/i/c/d$b;->b:Z

    if-nez v10, :cond_9

    .line 20
    invoke-virtual {v9, v8, v7}, Ln3/i/c/d$a;->b(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 21
    instance-of v7, v6, Ln3/i/c/b;

    if-eqz v7, :cond_8

    .line 22
    iget-object v7, v9, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    move-object v8, v6

    check-cast v8, Ln3/i/c/b;

    invoke-virtual {v8}, Ln3/i/c/b;->getReferencedIds()[I

    move-result-object v8

    iput-object v8, v7, Ln3/i/c/d$b;->e0:[I

    .line 23
    instance-of v7, v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_8

    .line 24
    move-object v7, v6

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    .line 25
    iget-object v8, v9, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    .line 26
    iget-object v10, v7, Landroidx/constraintlayout/widget/Barrier;->k:Ln3/i/b/h/a;

    .line 27
    iget-boolean v10, v10, Ln3/i/b/h/a;->K0:Z

    .line 28
    iput-boolean v10, v8, Ln3/i/c/d$b;->j0:Z

    .line 29
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v10

    iput v10, v8, Ln3/i/c/d$b;->b0:I

    .line 30
    iget-object v8, v9, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v7

    iput v7, v8, Ln3/i/c/d$b;->c0:I

    .line 31
    :cond_8
    iget-object v7, v9, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iput-boolean v3, v7, Ln3/i/c/d$b;->b:Z

    .line 32
    :cond_9
    iget-object v7, v9, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget-boolean v8, v7, Ln3/i/c/d$d;->a:Z

    if-nez v8, :cond_a

    .line 33
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    iput v8, v7, Ln3/i/c/d$d;->b:I

    .line 34
    iget-object v7, v9, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$d;->d:F

    .line 35
    iget-object v7, v9, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iput-boolean v3, v7, Ln3/i/c/d$d;->a:Z

    .line 36
    :cond_a
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iget-boolean v8, v7, Ln3/i/c/d$e;->a:Z

    if-nez v8, :cond_d

    .line 37
    iput-boolean v3, v7, Ln3/i/c/d$e;->a:Z

    .line 38
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->b:F

    .line 39
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->c:F

    .line 40
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->d:F

    .line 41
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->e:F

    .line 42
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->f:F

    .line 43
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v7

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v8

    float-to-double v10, v7

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_b

    float-to-double v10, v8

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_c

    .line 45
    :cond_b
    iget-object v10, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iput v7, v10, Ln3/i/c/d$e;->g:F

    .line 46
    iput v8, v10, Ln3/i/c/d$e;->h:F

    .line 47
    :cond_c
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->i:F

    .line 48
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->j:F

    .line 49
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    iput v8, v7, Ln3/i/c/d$e;->k:F

    .line 50
    iget-object v7, v9, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iget-boolean v8, v7, Ln3/i/c/d$e;->l:Z

    if-eqz v8, :cond_d

    .line 51
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v6

    iput v6, v7, Ln3/i/c/d$e;->m:F

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_f
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ln3/i/a/b/q;->p:Z

    .line 2
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/i/a/b/v;->b(Z)V

    :cond_0
    return-void
.end method

.method public o(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1, v1, v1}, Ln3/i/c/h;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 3
    :goto_0
    iget-object v2, p0, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    invoke-virtual {v2, p2, v1, v1}, Ln3/i/c/h;->a(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    .line 4
    :goto_1
    iget-object v3, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/a/b/q$b;

    .line 5
    iget v5, v4, Ln3/i/a/b/q$b;->c:I

    if-ne v5, v2, :cond_4

    .line 6
    iget v6, v4, Ln3/i/a/b/q$b;->d:I

    if-eq v6, v0, :cond_5

    :cond_4
    if-ne v5, p2, :cond_3

    .line 7
    iget v5, v4, Ln3/i/a/b/q$b;->d:I

    if-ne v5, p1, :cond_3

    .line 8
    :cond_5
    iput-object v4, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 9
    iget-object p1, v4, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz p1, :cond_6

    .line 10
    iget-boolean p2, p0, Ln3/i/a/b/q;->p:Z

    invoke-virtual {p1, p2}, Ln3/i/a/b/v;->b(Z)V

    :cond_6
    return-void

    .line 11
    :cond_7
    iget-object p1, p0, Ln3/i/a/b/q;->e:Ln3/i/a/b/q$b;

    .line 12
    iget-object v3, p0, Ln3/i/a/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/a/b/q$b;

    .line 13
    iget v5, v4, Ln3/i/a/b/q$b;->c:I

    if-ne v5, p2, :cond_8

    move-object p1, v4

    goto :goto_2

    .line 14
    :cond_9
    new-instance p2, Ln3/i/a/b/q$b;

    invoke-direct {p2, p0, p1}, Ln3/i/a/b/q$b;-><init>(Ln3/i/a/b/q;Ln3/i/a/b/q$b;)V

    .line 15
    iput v0, p2, Ln3/i/a/b/q$b;->d:I

    .line 16
    iput v2, p2, Ln3/i/a/b/q$b;->c:I

    if-eq v0, v1, :cond_a

    .line 17
    iget-object p1, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_a
    iput-object p2, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    return-void
.end method

.method public p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/a/b/q$b;

    .line 2
    iget-object v1, v1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
