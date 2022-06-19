.class public Ln3/h/a/e$a;
.super Ln3/h/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/h/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/h/a/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ln3/h/a/e;


# direct methods
.method public constructor <init>(Ln3/h/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/h/a/e$a;->h:Ln3/h/a/e;

    invoke-direct {p0}, Ln3/h/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/h/a/e$a;->h:Ln3/h/a/e;

    iget-object v0, v0, Ln3/h/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h/a/b;

    if-nez v0, :cond_0

    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    :cond_0
    const-string v1, "tag=["

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ln3/h/a/b;->a:Ljava/lang/Object;

    const-string v2, "]"

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
