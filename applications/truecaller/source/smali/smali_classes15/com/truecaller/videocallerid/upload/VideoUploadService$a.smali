.class public final Lcom/truecaller/videocallerid/upload/VideoUploadService$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/videocallerid/upload/VideoUploadService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/upload/VideoUploadService;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/upload/VideoUploadService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService$a;->b:Lcom/truecaller/videocallerid/upload/VideoUploadService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/upload/VideoUploadService$a;->b:Lcom/truecaller/videocallerid/upload/VideoUploadService;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/videocallerid/R$dimen;->vid_upload_notification_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
