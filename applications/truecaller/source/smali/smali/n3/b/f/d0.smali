.class public Ln3/b/f/d0;
.super Ln3/b/f/b0;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/f/d0$a;
    }
.end annotation


# static fields
.field public static E:Ljava/lang/reflect/Method;


# instance fields
.field public D:Ln3/b/f/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    .line 2
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ln3/b/f/d0;->E:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ln3/b/f/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/d0;->D:Ln3/b/f/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ln3/b/f/c0;->a(Ln3/b/e/i/g;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public g(Ln3/b/e/i/g;Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/d0;->D:Ln3/b/f/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ln3/b/f/c0;->g(Ln3/b/e/i/g;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public o(Landroid/content/Context;Z)Ln3/b/f/x;
    .locals 1

    .line 1
    new-instance v0, Ln3/b/f/d0$a;

    invoke-direct {v0, p1, p2}, Ln3/b/f/d0$a;-><init>(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {v0, p0}, Ln3/b/f/d0$a;->setHoverListener(Ln3/b/f/c0;)V

    return-object v0
.end method
