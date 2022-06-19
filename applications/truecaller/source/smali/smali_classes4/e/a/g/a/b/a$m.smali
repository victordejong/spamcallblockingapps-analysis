.class public final Le/a/g/a/b/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;->jw(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

.field public final synthetic b:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Le/a/g/a/b/a;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/a$m;->a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    iput-object p2, p0, Le/a/g/a/b/a$m;->b:Le/a/g/a/b/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/b/a$m;->a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    new-instance v1, Le/a/g/a/b/a$m$b;

    invoke-direct {v1, p0}, Le/a/g/a/b/a$m$b;-><init>(Le/a/g/a/b/a$m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/b/a$m;->a:Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    new-instance v1, Le/a/g/a/b/a$m$a;

    invoke-direct {v1, p0}, Le/a/g/a/b/a$m$a;-><init>(Le/a/g/a/b/a$m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
