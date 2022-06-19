.class public final Le/a/a/j/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/b;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Float;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/j/b$a;->b:I

    iput-object p2, p0, Le/a/a/j/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/a/j/b$a;->b:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 2
    iget-object v1, p0, Le/a/a/j/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/j/b;

    iget-object v1, v1, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 3
    iput p1, v1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->b:F

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 6
    iget-object v1, p0, Le/a/a/j/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/a/j/b;

    iget-object v1, v1, Le/a/a/j/b;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    .line 7
    iput p1, v1, Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;->a:F

    return-object v0
.end method
