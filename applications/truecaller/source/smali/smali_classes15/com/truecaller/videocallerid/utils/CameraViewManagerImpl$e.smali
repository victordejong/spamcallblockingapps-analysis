.class public final Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->r(Ln3/e/b/m0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/e/b/m0;


# direct methods
.method public constructor <init>(Ln3/e/b/m0;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$e;->b:Ln3/e/b/m0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->d:Ln3/e/c/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl$e;->b:Ln3/e/b/m0;

    .line 5
    :try_start_0
    iget-object p1, p1, Ln3/e/c/c;->b:Ln3/e/b/p0;

    .line 6
    iget-object p1, p1, Ln3/e/b/p0;->a:Ln3/e/b/j1/c0;

    .line 7
    invoke-virtual {p1}, Ln3/e/b/j1/c0;->a()Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/e/b/m0;->d(Ljava/util/LinkedHashSet;)Ln3/e/b/j1/b0;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
