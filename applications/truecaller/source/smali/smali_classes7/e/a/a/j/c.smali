.class public final Le/a/a/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/p/a/b$m;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

.field public final synthetic b:Ls1/d0/e;

.field public final synthetic c:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;FFLs1/d0/e;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j/c;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    iput-object p4, p0, Le/a/a/j/c;->b:Ls1/d0/e;

    iput-object p5, p0, Le/a/a/j/c;->c:Ls1/z/b/l;

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
    iget-object p1, p0, Le/a/a/j/c;->c:Ls1/z/b/l;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Le/a/a/j/c;->a:Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
