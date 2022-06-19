.class public final Lcom/truecaller/callbubbles/CallBubblesContainerView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/p/a/b$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callbubbles/CallBubblesContainerView;->r(Ln3/p/a/b$n;FFFFLjava/lang/Float;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$d;->a:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/p/a/b;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/p/a/b<",
            "Ln3/p/a/b<",
            "*>;>;FF)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$d;->a:Ljava/lang/Float;

    if-eqz p2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$d;->a:Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ln3/p/a/b;->c()V

    :cond_0
    return-void
.end method
