.class public final Le/a/b/a/a/a/b/d;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R%\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R%\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0006\u001a\u0004\u0008\u000b\u0010\u0008R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Le/a/b/a/a/a/b/d;",
        "Ln3/v/y0;",
        "Ln3/v/k0;",
        "Le/a/b/l/l;",
        "Le/a/h5/l;",
        "b",
        "Ln3/v/k0;",
        "getOpenGallery",
        "()Ln3/v/k0;",
        "openGallery",
        "a",
        "getOpenCamera",
        "openCamera",
        "Le/a/h5/y;",
        "d",
        "Le/a/h5/y;",
        "tcPermissionsView",
        "Le/a/p5/a0;",
        "c",
        "Le/a/p5/a0;",
        "permissionUtil",
        "<init>",
        "(Le/a/p5/a0;Le/a/h5/y;)V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Le/a/b/l/l<",
            "Le/a/h5/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Le/a/b/l/l<",
            "Le/a/h5/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/p5/a0;

.field public final d:Le/a/h5/y;


# direct methods
.method public constructor <init>(Le/a/p5/a0;Le/a/h5/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsView"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/a/b/d;->c:Le/a/p5/a0;

    iput-object p2, p0, Le/a/b/a/a/a/b/d;->d:Le/a/h5/y;

    .line 2
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/a/b/d;->a:Ln3/v/k0;

    .line 3
    new-instance p1, Ln3/v/k0;

    invoke-direct {p1}, Ln3/v/k0;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/a/b/d;->b:Ln3/v/k0;

    return-void
.end method
