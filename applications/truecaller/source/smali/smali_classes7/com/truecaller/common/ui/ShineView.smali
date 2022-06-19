.class public final Lcom/truecaller/common/ui/ShineView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Ln3/v/a0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005R.\u0010\u001e\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R*\u00109\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\"\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\"\u0010G\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010<\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0016\u0010Q\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010<R\u0016\u0010S\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010 \u00a8\u0006T"
    }
    d2 = {
        "Lcom/truecaller/common/ui/ShineView;",
        "Landroid/view/View;",
        "Ln3/v/a0;",
        "Ls1/s;",
        "subscribeSensorData",
        "()V",
        "unsubscribeSensorData",
        "Le/a/b0/a/k$a;",
        "data",
        "setRotationData",
        "(Le/a/b0/a/k$a;)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "visibility",
        "setVisibility",
        "(I)V",
        "invalidate",
        "Ln3/v/b0;",
        "value",
        "m",
        "Ln3/v/b0;",
        "getLifecycleOwner",
        "()Ln3/v/b0;",
        "setLifecycleOwner",
        "(Ln3/v/b0;)V",
        "lifecycleOwner",
        "f",
        "I",
        "transparentColor",
        "",
        "i",
        "Z",
        "rotationDataInitialized",
        "Le/a/b0/a/k;",
        "j",
        "Le/a/b0/a/k;",
        "dataProvider",
        "Landroid/graphics/RectF;",
        "d",
        "Landroid/graphics/RectF;",
        "rect",
        "Landroid/graphics/Matrix;",
        "g",
        "Landroid/graphics/Matrix;",
        "shaderTransformMatrix",
        "Lkotlin/Function0;",
        "n",
        "Ls1/z/b/a;",
        "getOnInvalidateCallback",
        "()Ls1/z/b/a;",
        "setOnInvalidateCallback",
        "(Ls1/z/b/a;)V",
        "onInvalidateCallback",
        "",
        "b",
        "F",
        "gradientYPosition",
        "Lkotlin/reflect/KFunction1;",
        "k",
        "Ls1/a/f;",
        "sensorDataSubscriber",
        "l",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "cornerRadius",
        "Landroid/graphics/Paint;",
        "c",
        "Landroid/graphics/Paint;",
        "shaderPaint",
        "Landroid/graphics/Shader;",
        "h",
        "Landroid/graphics/Shader;",
        "shader",
        "a",
        "gradientXPosition",
        "e",
        "gradientColor",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/RectF;

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/Matrix;

.field public h:Landroid/graphics/Shader;

.field public i:Z

.field public final j:Le/a/b0/a/k;

.field public final k:Ls1/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/f<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public l:F

.field public m:Ln3/v/b0;

.field public n:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/truecaller/common/ui/ShineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/ui/ShineView;->c:Landroid/graphics/Paint;

    .line 4
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/ui/ShineView;->d:Landroid/graphics/RectF;

    const/4 p3, -0x1

    const/16 p4, 0x80

    .line 5
    invoke-static {p3, p4}, Ln3/k/c/a;->l(II)I

    move-result p4

    iput p4, p0, Lcom/truecaller/common/ui/ShineView;->e:I

    .line 6
    invoke-static {p3, v0}, Ln3/k/c/a;->l(II)I

    move-result p3

    iput p3, p0, Lcom/truecaller/common/ui/ShineView;->f:I

    .line 7
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/truecaller/common/ui/ShineView;->g:Landroid/graphics/Matrix;

    .line 8
    new-instance p3, Le/a/b0/a/k;

    const-string p4, "sensor"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {p4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Landroid/hardware/SensorManager;

    invoke-direct {p3, p4}, Le/a/b0/a/k;-><init>(Landroid/hardware/SensorManager;)V

    iput-object p3, p0, Lcom/truecaller/common/ui/ShineView;->j:Le/a/b0/a/k;

    .line 9
    new-instance p3, Le/a/b0/a/m;

    invoke-direct {p3, p0}, Le/a/b0/a/m;-><init>(Lcom/truecaller/common/ui/ShineView;)V

    iput-object p3, p0, Lcom/truecaller/common/ui/ShineView;->k:Ls1/a/f;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/truecaller/common/ui/R$styleable;->ShineView:[I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.theme.obtainStyl\u2026tyleable.ShineView, 0, 0)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    sget p2, Lcom/truecaller/common/ui/R$styleable;->ShineView_shineCornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/truecaller/common/ui/ShineView;->l:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x2

    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :catchall_0
    move-exception p2

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public static final synthetic a(Lcom/truecaller/common/ui/ShineView;Le/a/b0/a/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/common/ui/ShineView;->setRotationData(Le/a/b0/a/k$a;)V

    return-void
.end method

.method private final setRotationData(Le/a/b0/a/k$a;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/common/ui/ShineView;->i:Z

    .line 2
    iget v0, p1, Le/a/b0/a/k$a;->b:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/truecaller/common/ui/ShineView;->a:F

    .line 4
    iget p1, p1, Le/a/b0/a/k$a;->c:F

    .line 5
    iput p1, p0, Lcom/truecaller/common/ui/ShineView;->b:F

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/common/ui/ShineView;->invalidate()V

    return-void
.end method

.method private final subscribeSensorData()V
    .locals 8
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->m:Ln3/v/b0;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ln3/v/c0;

    .line 2
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    if-eqz v0, :cond_6

    .line 3
    sget-object v1, Ln3/v/u$b;->e:Ln3/v/u$b;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_6

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->j:Le/a/b0/a/k;

    iget-object v3, p0, Lcom/truecaller/common/ui/ShineView;->k:Ls1/a/f;

    check-cast v3, Ls1/z/b/l;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "subscriber"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v4, v0, Le/a/b0/a/k;->a:Le/a/b0/a/k$b;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 9
    iget-object v5, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 10
    iget-object v6, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_6

    .line 11
    new-instance v1, Le/a/b0/a/k$b;

    invoke-direct {v1, v3}, Le/a/b0/a/k$b;-><init>(Ls1/z/b/l;)V

    iput-object v1, v0, Le/a/b0/a/k;->a:Le/a/b0/a/k$b;

    if-eqz v4, :cond_4

    .line 12
    iget-object v3, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_5

    .line 13
    iget-object v1, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    iget-object v3, v0, Le/a/b0/a/k;->a:Le/a/b0/a/k$b;

    invoke-virtual {v1, v3, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 14
    :cond_5
    iget-object v1, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    iget-object v0, v0, Le/a/b0/a/k;->a:Le/a/b0/a/k$b;

    invoke-virtual {v1, v0, v6, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private final unsubscribeSensorData()V
    .locals 3
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/common/ui/ShineView;->i:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->j:Le/a/b0/a/k;

    .line 3
    iget-object v1, v0, Le/a/b0/a/k;->b:Landroid/hardware/SensorManager;

    iget-object v2, v0, Le/a/b0/a/k;->a:Le/a/b0/a/k$b;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Le/a/b0/a/k;->a:Le/a/b0/a/k$b;

    return-void
.end method


# virtual methods
.method public final getCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/ShineView;->l:F

    return v0
.end method

.method public final getLifecycleOwner()Ln3/v/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->m:Ln3/v/b0;

    return-object v0
.end method

.method public final getOnInvalidateCallback()Ls1/z/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->n:Ls1/z/b/a;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->n:Ls1/z/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/common/ui/ShineView;->subscribeSensorData()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/common/ui/ShineView;->unsubscribeSensorData()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/truecaller/common/ui/ShineView;->i:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->h:Landroid/graphics/Shader;

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    neg-float v6, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float v8, v6, v0

    sub-float v9, v7, v4

    .line 6
    new-instance v0, Landroid/graphics/LinearGradient;

    new-array v10, v2, [I

    const/4 v3, 0x0

    .line 7
    iget v4, p0, Lcom/truecaller/common/ui/ShineView;->f:I

    aput v4, v10, v3

    const/4 v3, 0x1

    iget v5, p0, Lcom/truecaller/common/ui/ShineView;->e:I

    aput v5, v10, v3

    aput v4, v10, v1

    new-array v11, v2, [F

    .line 8
    fill-array-data v11, :array_0

    .line 9
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    .line 10
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/truecaller/common/ui/ShineView;->h:Landroid/graphics/Shader;

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 13
    iget-object v1, p0, Lcom/truecaller/common/ui/ShineView;->g:Landroid/graphics/Matrix;

    int-to-float v0, v0

    iget v3, p0, Lcom/truecaller/common/ui/ShineView;->a:F

    mul-float/2addr v0, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/truecaller/common/ui/ShineView;->b:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->h:Landroid/graphics/Shader;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/truecaller/common/ui/ShineView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/truecaller/common/ui/ShineView;->h:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->d:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 17
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 19
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 20
    iget v0, p0, Lcom/truecaller/common/ui/ShineView;->l:F

    cmpg-float v1, v0, v1

    if-nez v1, :cond_3

    .line 21
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/truecaller/common/ui/ShineView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/truecaller/common/ui/ShineView;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/truecaller/common/ui/ShineView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/ShineView;->l:F

    return-void
.end method

.method public final setLifecycleOwner(Ln3/v/b0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/ShineView;->m:Ln3/v/b0;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/truecaller/common/ui/ShineView;->m:Ln3/v/b0;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ln3/v/u;->a(Ln3/v/a0;)V

    :cond_0
    return-void
.end method

.method public final setOnInvalidateCallback(Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/ShineView;->n:Ls1/z/b/a;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {p0}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/truecaller/common/ui/ShineView;->subscribeSensorData()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/truecaller/common/ui/ShineView;->unsubscribeSensorData()V

    :goto_0
    return-void
.end method
