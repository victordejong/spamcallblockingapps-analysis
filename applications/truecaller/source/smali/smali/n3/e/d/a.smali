.class public final synthetic Ln3/e/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# instance fields
.field public final synthetic a:Ln3/e/d/t;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/a;->a:Ln3/e/d/t;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ln3/e/d/a;->a:Ln3/e/d/t;

    check-cast p1, Ljava/lang/Void;

    .line 1
    sget-object p1, Landroidx/camera/view/PreviewView$e;->b:Landroidx/camera/view/PreviewView$e;

    invoke-virtual {v0, p1}, Ln3/e/d/t;->a(Landroidx/camera/view/PreviewView$e;)V

    const/4 p1, 0x0

    return-object p1
.end method
