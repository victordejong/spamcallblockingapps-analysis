.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->s(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl"
    f = "CameraViewManager.kt"
    l = {
        0x1ee
    }
    m = "runSafeSuspend"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->e:I

    iget-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$i;->f:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->s(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
