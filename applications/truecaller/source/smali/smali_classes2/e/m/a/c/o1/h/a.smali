.class public final synthetic Le/m/a/c/o1/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Le/m/a/c/o1/h/f;


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/o1/h/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/o1/h/a;->a:Le/m/a/c/o1/h/f;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object p1, p0, Le/m/a/c/o1/h/a;->a:Le/m/a/c/o1/h/f;

    .line 1
    iget-object p1, p1, Le/m/a/c/o1/h/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
