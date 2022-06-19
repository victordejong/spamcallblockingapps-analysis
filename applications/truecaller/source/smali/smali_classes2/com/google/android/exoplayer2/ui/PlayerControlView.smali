.class public Lcom/google/android/exoplayer2/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$c;,
        Lcom/google/android/exoplayer2/ui/PlayerControlView$d;
    }
.end annotation


# static fields
.field public static final synthetic n0:I


# instance fields
.field public final A:Landroid/graphics/drawable/Drawable;

.field public final B:Landroid/graphics/drawable/Drawable;

.field public final C:F

.field public final D:F

.field public final E:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public K:Le/m/a/c/q0;

.field public L:Le/m/a/c/w;

.field public M:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

.field public N:Le/m/a/c/p0;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public final a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/ui/PlayerControlView$d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/View;

.field public g0:Z

.field public final h:Landroid/view/View;

.field public h0:J

.field public final i:Landroid/widget/ImageView;

.field public i0:[J

.field public final j:Landroid/widget/ImageView;

.field public j0:[Z

.field public final k:Landroid/view/View;

.field public k0:[J

.field public final l:Landroid/widget/TextView;

.field public l0:[Z

.field public final m:Landroid/widget/TextView;

.field public m0:J

.field public final n:Le/m/a/c/o1/f;

.field public final o:Ljava/lang/StringBuilder;

.field public final p:Ljava/util/Formatter;

.field public final q:Le/m/a/c/y0$b;

.field public final r:Le/m/a/c/y0$c;

.field public final s:Ljava/lang/Runnable;

.field public final t:Ljava/lang/Runnable;

.field public final u:Landroid/graphics/drawable/Drawable;

.field public final v:Landroid/graphics/drawable/Drawable;

.field public final w:Landroid/graphics/drawable/Drawable;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "goog.exo.ui"

    .line 1
    sget-object v1, Le/m/a/c/f0;->a:Ljava/util/HashSet;

    const-class v1, Le/m/a/c/f0;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Le/m/a/c/f0;->a:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Le/m/a/c/f0;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/a/c/f0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_player_control_view:I

    const/16 p3, 0x1388

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    const/16 v0, 0x3a98

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    .line 6
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    const/4 p3, 0x0

    .line 7
    iput p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    const/16 v0, 0xc8

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h0:J

    .line 10
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g0:Z

    if-eqz p4, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView:[I

    .line 12
    invoke-virtual {v0, p4, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 13
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_rewind_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    .line 14
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_fastforward_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    .line 16
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_timeout:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    .line 17
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 18
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    .line 20
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 21
    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    .line 22
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g0:Z

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g0:Z

    .line 24
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    throw p1

    .line 29
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance v0, Le/m/a/c/y0$b;

    invoke-direct {v0}, Le/m/a/c/y0$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    .line 31
    new-instance v0, Le/m/a/c/y0$c;

    invoke-direct {v0}, Le/m/a/c/y0$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 33
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    new-array v0, p3, [J

    .line 34
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    new-array v0, p3, [Z

    .line 35
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    new-array v0, p3, [J

    .line 36
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k0:[J

    new-array v0, p3, [Z

    .line 37
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l0:[Z

    .line 38
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;Lcom/google/android/exoplayer2/ui/PlayerControlView$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    .line 39
    new-instance v2, Le/m/a/c/x;

    invoke-direct {v2}, Le/m/a/c/x;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    .line 40
    new-instance v2, Le/m/a/c/o1/c;

    invoke-direct {v2, p0}, Le/m/a/c/o1/c;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    .line 41
    new-instance v2, Le/m/a/c/o1/a;

    invoke-direct {v2, p0}, Le/m/a/c/o1/a;-><init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 44
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Le/m/a/c/o1/f;

    .line 45
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 46
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 47
    new-instance v2, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-direct {v2, p1, v1, p3, p4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {v2, p2}, Landroid/view/View;->setId(I)V

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p4

    .line 52
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p2, v2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 54
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    goto :goto_1

    .line 55
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    .line 56
    :goto_1
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/TextView;

    .line 57
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    .line 58
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    if-eqz p2, :cond_3

    .line 59
    invoke-interface {p2, v0}, Le/m/a/c/o1/f;->b(Le/m/a/c/o1/f$a;)V

    .line 60
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_5
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_6
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_7
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_8
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_9
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 73
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :cond_a
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 75
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_b
    sget p2, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    .line 77
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setShowVrButton(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    sget p2, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:F

    .line 81
    sget p2, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:F

    .line 83
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 84
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 85
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 86
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    .line 87
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_shuffle_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 88
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Ljava/lang/String;

    .line 90
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    .line 92
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 93
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Ljava/lang/String;

    .line 94
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Ljava/lang/String;

    .line 95
    sget p2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/16 v3, 0x58

    const/16 v4, 0x57

    const/16 v5, 0x7f

    const/16 v6, 0x7e

    const/16 v7, 0x55

    const/16 v8, 0x59

    const/16 v9, 0x5a

    const/4 v10, 0x1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v11, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v10

    :goto_1
    if-nez v11, :cond_2

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_a

    if-ne v0, v9, :cond_3

    .line 4
    invoke-interface {v1}, Le/m/a/c/q0;->isCurrentWindowSeekable()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    if-lez p1, :cond_a

    int-to-long v2, p1

    .line 5
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Le/m/a/c/q0;J)V

    goto :goto_2

    :cond_3
    if-ne v0, v8, :cond_4

    .line 6
    invoke-interface {v1}, Le/m/a/c/q0;->isCurrentWindowSeekable()Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    if-lez p1, :cond_a

    neg-int p1, p1

    int-to-long v2, p1

    .line 7
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h(Le/m/a/c/q0;J)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_a

    if-eq v0, v7, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast p1, Le/m/a/c/x;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v1, v2}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    goto :goto_2

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast p1, Le/m/a/c/x;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v1, v10}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f(Le/m/a/c/q0;)V

    goto :goto_2

    .line 16
    :cond_8
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e(Le/m/a/c/q0;)V

    goto :goto_2

    .line 17
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    invoke-interface {v1}, Le/m/a/c/q0;->getPlayWhenReady()Z

    move-result v0

    xor-int/2addr v0, v10

    check-cast p1, Le/m/a/c/x;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v1, v0}, Le/m/a/c/q0;->setPlayWhenReady(Z)V

    :cond_a
    :goto_2
    return v10

    :cond_b
    :goto_3
    return v2
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;->b(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h0:J

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h0:J

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h0:J

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e(Le/m/a/c/q0;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Le/m/a/c/q0;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    .line 4
    invoke-interface {p1}, Le/m/a/c/q0;->getNextWindowIndex()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast v0, Le/m/a/c/x;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v2, v4, v5}, Le/m/a/c/q0;->seekTo(IJ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-boolean v0, v0, Le/m/a/c/y0$c;->e:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast v0, Le/m/a/c/x;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p1, v1, v4, v5}, Le/m/a/c/q0;->seekTo(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Le/m/a/c/q0;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Le/m/a/c/q0;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    .line 5
    invoke-interface {p1}, Le/m/a/c/q0;->getPreviousWindowIndex()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 6
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    iget-boolean v3, v2, Le/m/a/c/y0$c;->e:Z

    if-eqz v3, :cond_2

    iget-boolean v2, v2, Le/m/a/c/y0$c;->d:Z

    if-nez v2, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast v3, Le/m/a/c/x;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p1, v0, v1, v2}, Le/m/a/c/q0;->seekTo(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast v0, Le/m/a/c/x;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1, v1, v2, v3}, Le/m/a/c/q0;->seekTo(IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getPlayer()Le/m/a/c/q0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g0:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Le/m/a/c/q0;J)V
    .locals 4

    .line 1
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 2
    invoke-interface {p1}, Le/m/a/c/q0;->getDuration()J

    move-result-wide p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p2, 0x0

    .line 4
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 5
    invoke-interface {p1}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    check-cast v1, Le/m/a/c/x;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v0, p2, p3}, Le/m/a/c/q0;->seekTo(IJ)V

    return-void
.end method

.method public final i(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->C:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->D:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/m/a/c/q0;->getPlaybackState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    .line 3
    invoke-interface {v0}, Le/m/a/c/q0;->getPlaybackState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    .line 4
    invoke-interface {v0}, Le/m/a/c/q0;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView$d;->b(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()V

    return-void
.end method

.method public final l()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r()V

    return-void
.end method

.method public final m()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-interface {v0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Le/m/a/c/y0;->p()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Le/m/a/c/q0;->isPlayingAd()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5
    invoke-interface {v0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    invoke-virtual {v2, v3, v4}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    iget-boolean v3, v2, Le/m/a/c/y0$c;->d:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 7
    iget-boolean v2, v2, Le/m/a/c/y0$c;->e:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Le/m/a/c/q0;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 8
    iget v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    if-lez v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 9
    iget v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    if-lez v6, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v1

    .line 10
    :goto_3
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    iget-boolean v7, v7, Le/m/a/c/y0$c;->e:Z

    if-nez v7, :cond_5

    invoke-interface {v0}, Le/m/a/c/q0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v1, v4

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_4

    :cond_7
    move v0, v1

    move v3, v0

    move v5, v3

    move v6, v5

    .line 11
    :goto_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g:Landroid/view/View;

    invoke-virtual {p0, v6, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    if-eqz v0, :cond_8

    .line 16
    invoke-interface {v0, v3}, Le/m/a/c/o1/f;->setEnabled(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-nez v0, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j()Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    or-int/2addr v1, v4

    .line 5
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v1, v4

    .line 6
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    or-int/2addr v1, v3

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->f:Landroid/view/View;

    if-eqz v0, :cond_5

    move v2, v4

    :cond_5
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g()V

    :cond_7
    :goto_4
    return-void
.end method

.method public final o()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m0:J

    invoke-interface {v0}, Le/m/a/c/q0;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 4
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m0:J

    invoke-interface {v0}, Le/m/a/c/q0;->getContentBufferedPosition()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->R:Z

    if-nez v6, :cond_2

    .line 6
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    invoke-static {v6, v7, v1, v2}, Le/m/a/c/q1/d0;->o(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    if-eqz v5, :cond_3

    .line 8
    invoke-interface {v5, v1, v2}, Le/m/a/c/o1/f;->setPosition(J)V

    .line 9
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    invoke-interface {v5, v3, v4}, Le/m/a/c/o1/f;->setBufferedPosition(J)V

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    if-eqz v5, :cond_4

    .line 11
    invoke-interface {v5, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/PlayerControlView$c;->a(JJ)V

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    if-nez v0, :cond_5

    move v4, v3

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0}, Le/m/a/c/q0;->getPlaybackState()I

    move-result v4

    :goto_1
    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_8

    .line 14
    invoke-interface {v0}, Le/m/a/c/q0;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    if-eqz v3, :cond_6

    .line 16
    invoke-interface {v3}, Le/m/a/c/o1/f;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    move-wide v3, v5

    .line 17
    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 18
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 19
    invoke-interface {v0}, Le/m/a/c/q0;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v0

    iget v0, v0, Le/m/a/c/o0;->a:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v5, v1

    :cond_7
    move-wide v7, v5

    .line 20
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Le/m/a/c/q1/d0;->g(JJJ)J

    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    if-eq v4, v0, :cond_9

    if-eq v4, v3, :cond_9

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    .line 3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->h0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->b()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 v3, 0x1

    .line 8
    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 9
    invoke-interface {v1}, Le/m/a/c/q0;->getRepeatMode()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->O:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g0:Z

    if-nez v2, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i(ZLandroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    .line 10
    invoke-interface {v1}, Le/m/a/c/q0;->getShuffleModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j:Landroid/widget/ImageView;

    .line 13
    invoke-interface {v1}, Le/m/a/c/q0;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->E:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->J:Ljava/lang/String;

    .line 14
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v1}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v2

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    .line 4
    invoke-virtual {v2}, Le/m/a/c/y0;->o()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v2}, Le/m/a/c/y0;->o()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    .line 6
    invoke-virtual {v2, v9, v7}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v10

    iget-wide v10, v10, Le/m/a/c/y0$c;->j:J

    cmp-long v10, v10, v3

    if-nez v10, :cond_2

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    :goto_2
    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 7
    :goto_3
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:Z

    const-wide/16 v7, 0x0

    .line 8
    iput-wide v7, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m0:J

    .line 9
    invoke-interface {v1}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Le/m/a/c/y0;->p()Z

    move-result v9

    if-nez v9, :cond_11

    .line 11
    invoke-interface {v1}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    .line 12
    iget-boolean v9, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:Z

    if-eqz v9, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    move v10, v1

    :goto_4
    if-eqz v9, :cond_6

    .line 13
    invoke-virtual {v2}, Le/m/a/c/y0;->o()I

    move-result v9

    sub-int/2addr v9, v6

    goto :goto_5

    :cond_6
    move v9, v1

    :goto_5
    move-wide v11, v7

    const/4 v13, 0x0

    :goto_6
    if-gt v10, v9, :cond_10

    if-ne v10, v1, :cond_7

    .line 14
    invoke-static {v11, v12}, Le/m/a/c/v;->b(J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m0:J

    .line 15
    :cond_7
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    invoke-virtual {v2, v10, v14}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    .line 16
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    iget-wide v7, v14, Le/m/a/c/y0$c;->j:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_8

    .line 17
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->Q:Z

    xor-int/2addr v1, v6

    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    goto/16 :goto_c

    .line 18
    :cond_8
    iget v7, v14, Le/m/a/c/y0$c;->g:I

    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r:Le/m/a/c/y0$c;

    iget v14, v8, Le/m/a/c/y0$c;->h:I

    if-gt v7, v14, :cond_f

    .line 19
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    invoke-virtual {v2, v7, v8}, Le/m/a/c/y0;->f(ILe/m/a/c/y0$b;)Le/m/a/c/y0$b;

    .line 20
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    .line 21
    iget-object v8, v8, Le/m/a/c/y0$b;->e:Le/m/a/c/l1/a0/a;

    iget v8, v8, Le/m/a/c/l1/a0/a;->a:I

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v8, :cond_e

    .line 22
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    invoke-virtual {v15, v14}, Le/m/a/c/y0$b;->d(I)J

    move-result-wide v15

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v18, v15, v18

    if-nez v18, :cond_a

    .line 23
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    iget-wide v5, v15, Le/m/a/c/y0$b;->c:J

    cmp-long v15, v5, v3

    if-nez v15, :cond_9

    const-wide/16 v5, 0x0

    goto :goto_a

    :cond_9
    move-wide v15, v5

    .line 24
    :cond_a
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    .line 25
    iget-wide v5, v5, Le/m/a/c/y0$b;->d:J

    add-long/2addr v15, v5

    const-wide/16 v5, 0x0

    cmp-long v17, v15, v5

    if-ltz v17, :cond_d

    .line 26
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    array-length v4, v3

    if-ne v13, v4, :cond_c

    .line 27
    array-length v4, v3

    if-nez v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    .line 28
    :goto_9
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    .line 29
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    .line 30
    :cond_c
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    add-long/2addr v15, v11

    invoke-static/range {v15 .. v16}, Le/m/a/c/v;->b(J)J

    move-result-wide v15

    aput-wide v15, v3, v13

    .line 31
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q:Le/m/a/c/y0$b;

    .line 32
    iget-object v4, v4, Le/m/a/c/y0$b;->e:Le/m/a/c/l1/a0/a;

    iget-object v4, v4, Le/m/a/c/l1/a0/a;->c:[Le/m/a/c/l1/a0/a$a;

    aget-object v4, v4, v14

    invoke-virtual {v4}, Le/m/a/c/l1/a0/a$a;->b()Z

    move-result v4

    const/4 v15, 0x1

    xor-int/2addr v4, v15

    .line 33
    aput-boolean v4, v3, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :cond_e
    move v15, v6

    const-wide/16 v5, 0x0

    add-int/lit8 v7, v7, 0x1

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_7

    :cond_f
    move v15, v6

    const-wide/16 v5, 0x0

    .line 34
    iget-wide v3, v8, Le/m/a/c/y0$c;->j:J

    add-long/2addr v11, v3

    add-int/lit8 v10, v10, 0x1

    move-wide v7, v5

    move v6, v15

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_10
    :goto_c
    move-wide v7, v11

    goto :goto_d

    :cond_11
    move-wide v5, v7

    const/4 v13, 0x0

    .line 35
    :goto_d
    invoke-static {v7, v8}, Le/m/a/c/v;->b(J)J

    move-result-wide v1

    .line 36
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l:Landroid/widget/TextView;

    if-eqz v3, :cond_12

    .line 37
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Le/m/a/c/q1/d0;->o(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_12
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    if-eqz v3, :cond_14

    .line 39
    invoke-interface {v3, v1, v2}, Le/m/a/c/o1/f;->setDuration(J)V

    .line 40
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k0:[J

    array-length v1, v1

    add-int v2, v13, v1

    .line 41
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    array-length v4, v3

    if-le v2, v4, :cond_13

    .line 42
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    .line 43
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    .line 44
    :cond_13
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l0:[Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->n:Le/m/a/c/o1/f;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->i0:[J

    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->j0:[Z

    invoke-interface {v1, v3, v4, v2}, Le/m/a/c/o1/f;->a([J[ZI)V

    .line 47
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->o()V

    return-void
.end method

.method public setControlDispatcher(Le/m/a/c/w;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Le/m/a/c/x;

    invoke-direct {p1}, Le/m/a/c/x;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->T:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    return-void
.end method

.method public setPlaybackPreparer(Le/m/a/c/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->N:Le/m/a/c/p0;

    return-void
.end method

.method public setPlayer(Le/m/a/c/q0;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Le/m/a/c/q0;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Ln3/g0/y;->r(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-interface {v0, v1}, Le/m/a/c/q0;->removeListener(Le/m/a/c/q0$b;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView$b;

    invoke-interface {p1, v0}, Le/m/a/c/q0;->addListener(Le/m/a/c/q0$b;)V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->l()V

    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->M:Lcom/google/android/exoplayer2/ui/PlayerControlView$c;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->W:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Le/m/a/c/q0;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    const/4 v1, 0x0

    check-cast p1, Le/m/a/c/x;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1}, Le/m/a/c/q0;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    check-cast p1, Le/m/a/c/x;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v2}, Le/m/a/c/q0;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->L:Le/m/a/c/w;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->K:Le/m/a/c/q0;

    check-cast p1, Le/m/a/c/x;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v0, v1}, Le/m/a/c/q0;->setRepeatMode(I)V

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->p()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->S:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->m()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->P:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->r()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->g0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->q()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->U:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->c()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Le/m/a/c/q1/d0;->f(III)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->V:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerControlView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
