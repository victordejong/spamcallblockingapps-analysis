.class final Lcom/hiya/client/callerid/ui/a0/m$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/m;->p(Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Landroid/view/WindowManager;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/client/callerid/ui/a0/m$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/client/callerid/ui/a0/m$c;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/a0/m$c;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/a0/m$c;->f:Lcom/hiya/client/callerid/ui/a0/m$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowManager;)F
    .locals 3

    const-string v0, "windowManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/hiya/client/callerid/ui/e0/k;->d(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const-string v2, "windowManager.defaultDisplay"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget p1, v0, Landroid/graphics/Point;->x:I

    :goto_1
    int-to-float p1, p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/m$c;->a(Landroid/view/WindowManager;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
