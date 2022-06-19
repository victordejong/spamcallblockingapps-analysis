.class public Lcom/hiya/stingray/ui/common/fab/b;
.super Landroid/view/TouchDelegate;
.source "SourceFile"


# static fields
.field private static final d:Landroid/graphics/Rect;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/TouchDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/TouchDelegate;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/common/fab/b;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/common/fab/b;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/TouchDelegate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hiya/stingray/ui/common/fab/b;->b:Landroid/view/TouchDelegate;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/fab/b;->c:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/hiya/stingray/ui/common/fab/b;->b:Landroid/view/TouchDelegate;

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/b;->b:Landroid/view/TouchDelegate;

    .line 5
    iput-object v2, p0, Lcom/hiya/stingray/ui/common/fab/b;->b:Landroid/view/TouchDelegate;

    move-object v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/hiya/stingray/ui/common/fab/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 7
    iget-object v4, p0, Lcom/hiya/stingray/ui/common/fab/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/TouchDelegate;

    .line 8
    invoke-virtual {v4, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    iput-object v4, p0, Lcom/hiya/stingray/ui/common/fab/b;->b:Landroid/view/TouchDelegate;

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {v2, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method
