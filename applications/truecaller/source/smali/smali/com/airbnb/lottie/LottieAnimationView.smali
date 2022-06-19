.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public final c:Le/b/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/m<",
            "Le/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/b/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/m<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/b/a/k;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Le/b/a/t;

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/b/a/n;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/r<",
            "Le/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public n:Le/b/a/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$a;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Le/b/a/m;

    .line 3
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Le/b/a/m;

    .line 4
    new-instance p1, Le/b/a/k;

    invoke-direct {p1}, Le/b/a/k;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 7
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 8
    sget-object v1, Le/b/a/t;->a:Le/b/a/t;

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Le/b/a/t;

    .line 9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Ljava/util/Set;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 13
    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 14
    sget v5, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 20
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_1
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 23
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 24
    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    .line 25
    :cond_5
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    .line 26
    iget-object v1, p1, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 27
    :cond_6
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 28
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 29
    :cond_7
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 31
    :cond_8
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_9

    .line 32
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 33
    :cond_9
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 34
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 35
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 36
    iget-boolean v5, p1, Le/b/a/k;->k:Z

    if-ne v5, v1, :cond_a

    goto :goto_2

    .line 37
    :cond_a
    iput-boolean v1, p1, Le/b/a/k;->k:Z

    .line 38
    iget-object v1, p1, Le/b/a/k;->b:Le/b/a/e;

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {p1}, Le/b/a/k;->b()V

    .line 40
    :cond_b
    :goto_2
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 41
    new-instance v5, Le/b/a/u;

    .line 42
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {v5, v1}, Le/b/a/u;-><init>(I)V

    .line 43
    new-instance v1, Le/b/a/y/e;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Le/b/a/y/e;-><init>([Ljava/lang/String;)V

    .line 44
    new-instance v6, Le/b/a/c0/c;

    invoke-direct {v6, v5}, Le/b/a/c0/c;-><init>(Ljava/lang/Object;)V

    .line 45
    sget-object v5, Le/b/a/o;->B:Landroid/graphics/ColorFilter;

    .line 46
    invoke-virtual {p1, v1, v5, v6}, Le/b/a/k;->a(Le/b/a/y/e;Ljava/lang/Object;Le/b/a/c0/c;)V

    .line 47
    :cond_c
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 48
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 49
    iput v1, p1, Le/b/a/k;->d:F

    .line 50
    invoke-virtual {p1}, Le/b/a/k;->r()V

    .line 51
    :cond_d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 53
    sget-object v1, Le/b/a/b0/e;->a:Landroid/graphics/PathMeasure;

    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "animator_duration_scale"

    invoke-static {p2, v1, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_e

    move v0, v2

    .line 55
    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Le/b/a/k;->e:Z

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    return-void
.end method

.method private setCompositionTask(Le/b/a/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/r<",
            "Le/b/a/e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Le/b/a/e;

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Le/b/a/m;

    .line 5
    invoke-virtual {p1, v0}, Le/b/a/r;->b(Le/b/a/m;)Le/b/a/r;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Le/b/a/m;

    .line 6
    invoke-virtual {p1, v0}, Le/b/a/r;->a(Le/b/a/m;)Le/b/a/r;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Le/b/a/r;

    return-void
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Le/b/a/t;->b:Le/b/a/t;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Le/b/a/t;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 3
    iget-object v1, v0, Le/b/a/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0}, Le/b/a/b0/b;->cancel()V

    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Le/b/a/r;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Le/b/a/m;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, v0, Le/b/a/r;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    monitor-exit v0

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Le/b/a/r;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Le/b/a/m;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    iget-object v2, v0, Le/b/a/r;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Le/b/a/t;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0, v3, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Le/b/a/e;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v5, v0, Le/b/a/e;->n:Z

    if-eqz v5, :cond_3

    .line 6
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-ge v5, v6, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 7
    iget v0, v0, Le/b/a/e;->o:I

    const/4 v5, 0x4

    if-le v0, v5, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    .line 8
    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    :goto_0
    return-void
.end method

.method public getComposition()Le/b/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Le/b/a/e;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Le/b/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/b/a/e;->a()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 3
    iget v0, v0, Le/b/a/b0/b;->f:F

    float-to-int v0, v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0}, Le/b/a/b0/b;->e()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0}, Le/b/a/b0/b;->f()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Le/b/a/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->b:Le/b/a/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/b/a/e;->a:Le/b/a/s;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->d()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->e()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget v0, v0, Le/b/a/k;->d:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 3
    iget v0, v0, Le/b/a/b0/b;->c:F

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 3
    iget-boolean v0, v0, Le/b/a/b0/b;->k:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Z

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:I

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 10
    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 11
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:Z

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Le/b/a/k;->h:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->f:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 16
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->g:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->a:Ljava/lang/String;

    .line 4
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:I

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->d()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:F

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 7
    iget-object v2, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 8
    iget-boolean v3, v2, Le/b/a/b0/b;->k:Z

    .line 9
    iput-boolean v3, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:Z

    .line 10
    iget-object v0, v0, Le/b/a/k;->h:Ljava/lang/String;

    .line 11
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    .line 13
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->f:I

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0}, Le/b/a/k;->e()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->g:I

    return-object v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {p1}, Le/b/a/k;->g()V

    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 8
    :goto_0
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 10
    iget-object v1, p1, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 11
    iget-boolean v1, v1, Le/b/a/b0/b;->k:Z

    if-eqz v1, :cond_3

    .line 12
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    .line 13
    iget-object v0, p1, Le/b/a/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object p1, p1, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 15
    invoke-virtual {p1}, Le/b/a/b0/b;->i()V

    .line 16
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 17
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setAnimation(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    sget-object v1, Le/b/a/f;->a:Ljava/util/Map;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rawRes_"

    .line 6
    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Le/b/a/i;

    invoke-direct {v2, v0, p1}, Le/b/a/i;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Le/b/a/f;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Le/b/a/r;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Le/b/a/r;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    sget-object v1, Le/b/a/f;->a:Ljava/util/Map;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    new-instance v1, Le/b/a/h;

    invoke-direct {v1, v0, p1}, Le/b/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v1}, Le/b/a/f;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Le/b/a/r;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Le/b/a/r;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance p1, Le/b/a/j;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Le/b/a/j;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {v1, p1}, Le/b/a/f;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Le/b/a/r;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Le/b/a/r;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Le/b/a/f;->a:Ljava/util/Map;

    const-string v1, "url_"

    .line 3
    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Le/b/a/g;

    invoke-direct {v2, v0, p1}, Le/b/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v2}, Le/b/a/f;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Le/b/a/r;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Le/b/a/r;)V

    return-void
.end method

.method public setComposition(Le/b/a/e;)V
    .locals 6

    .line 1
    sget-object v0, Le/b/a/c;->a:Ljava/util/Set;

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Le/b/a/e;

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 5
    iget-object v1, v0, Le/b/a/k;->b:Le/b/a/e;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iput-boolean v2, v0, Le/b/a/k;->o:Z

    .line 7
    invoke-virtual {v0}, Le/b/a/k;->c()V

    .line 8
    iput-object p1, v0, Le/b/a/k;->b:Le/b/a/e;

    .line 9
    invoke-virtual {v0}, Le/b/a/k;->b()V

    .line 10
    iget-object v1, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 11
    iget-object v3, v1, Le/b/a/b0/b;->j:Le/b/a/e;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v2, v4

    .line 12
    :cond_1
    iput-object p1, v1, Le/b/a/b0/b;->j:Le/b/a/e;

    if-eqz v2, :cond_2

    .line 13
    iget v2, v1, Le/b/a/b0/b;->h:F

    .line 14
    iget v3, p1, Le/b/a/e;->k:F

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Le/b/a/b0/b;->i:F

    .line 16
    iget v5, p1, Le/b/a/e;->l:F

    .line 17
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    .line 18
    invoke-virtual {v1, v2, v3}, Le/b/a/b0/b;->k(FF)V

    goto :goto_0

    .line 19
    :cond_2
    iget v2, p1, Le/b/a/e;->k:F

    float-to-int v2, v2

    int-to-float v2, v2

    .line 20
    iget v3, p1, Le/b/a/e;->l:F

    float-to-int v3, v3

    int-to-float v3, v3

    .line 21
    invoke-virtual {v1, v2, v3}, Le/b/a/b0/b;->k(FF)V

    .line 22
    :goto_0
    iget v2, v1, Le/b/a/b0/b;->f:F

    const/4 v3, 0x0

    .line 23
    iput v3, v1, Le/b/a/b0/b;->f:F

    float-to-int v2, v2

    .line 24
    invoke-virtual {v1, v2}, Le/b/a/b0/b;->j(I)V

    .line 25
    iget-object v1, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v1}, Le/b/a/b0/b;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Le/b/a/k;->q(F)V

    .line 26
    iget v1, v0, Le/b/a/k;->d:F

    .line 27
    iput v1, v0, Le/b/a/k;->d:F

    .line 28
    invoke-virtual {v0}, Le/b/a/k;->r()V

    .line 29
    invoke-virtual {v0}, Le/b/a/k;->r()V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Le/b/a/k;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 31
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/k$o;

    .line 33
    invoke-interface {v2, p1}, Le/b/a/k$o;->a(Le/b/a/e;)V

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 35
    :cond_3
    iget-object v1, v0, Le/b/a/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 36
    iget-boolean v0, v0, Le/b/a/k;->n:Z

    .line 37
    iget-object v1, p1, Le/b/a/e;->a:Le/b/a/s;

    .line 38
    iput-boolean v0, v1, Le/b/a/s;->a:Z

    move v2, v4

    .line 39
    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    .line 40
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    if-ne v0, v1, :cond_4

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/n;

    .line 45
    invoke-interface {v1, p1}, Le/b/a/n;->a(Le/b/a/e;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public setFontAssetDelegate(Le/b/a/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object p1, p1, Le/b/a/k;->j:Le/b/a/x/a;

    return-void
.end method

.method public setFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->h(I)V

    return-void
.end method

.method public setImageAssetDelegate(Le/b/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iput-object p1, v0, Le/b/a/k;->i:Le/b/a/b;

    .line 3
    iget-object v0, v0, Le/b/a/k;->g:Le/b/a/x/b;

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, v0, Le/b/a/x/b;->c:Le/b/a/b;

    :cond_0
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iput-object p1, v0, Le/b/a/k;->h:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->e()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->i(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->j(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->k(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->m(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->n(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->o(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->p(F)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iput-boolean p1, v0, Le/b/a/k;->n:Z

    .line 3
    iget-object v0, v0, Le/b/a/k;->b:Le/b/a/e;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Le/b/a/e;->a:Le/b/a/s;

    .line 5
    iput-boolean p1, v0, Le/b/a/s;->a:Z

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {v0, p1}, Le/b/a/k;->q(F)V

    return-void
.end method

.method public setRenderMode(Le/b/a/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Le/b/a/t;

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->f()V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    invoke-virtual {v0, p1}, Le/b/a/b0/b;->setRepeatMode(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iput p1, v0, Le/b/a/k;->d:F

    .line 3
    invoke-virtual {v0}, Le/b/a/k;->r()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 3
    iput p1, v0, Le/b/a/b0/b;->c:F

    return-void
.end method

.method public setTextDelegate(Le/b/a/v;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
