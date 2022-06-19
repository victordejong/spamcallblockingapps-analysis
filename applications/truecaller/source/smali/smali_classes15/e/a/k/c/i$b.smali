.class public final Le/a/k/c/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/i;->a(Ln3/e/b/f1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/k/h/b<",
        "Ln3/e/b/f1$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/c/i;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Le/a/k/c/i;Z)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/i$b;->a:Le/a/k/c/i;

    iput-boolean p2, p0, Le/a/k/c/i$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/e/b/f1$f;

    const-string v0, "surfaceRequestResult"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln3/e/b/f1$f;->a()I

    .line 3
    iget-boolean p1, p0, Le/a/k/c/i$b;->b:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/k/c/i$b;->a:Le/a/k/c/i;

    iget-object p1, p1, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 5
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->i:Ljava/util/concurrent/Semaphore;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method
