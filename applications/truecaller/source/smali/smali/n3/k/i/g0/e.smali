.class public final Ln3/k/i/g0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/i/g0/e$a;,
        Ln3/k/i/g0/e$b;,
        Ln3/k/i/g0/e$c;
    }
.end annotation


# instance fields
.field public final a:Ln3/k/i/g0/e$c;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Ln3/k/i/g0/e$a;

    invoke-direct {v0, p1, p2, p3}, Ln3/k/i/g0/e$a;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ln3/k/i/g0/e$b;

    invoke-direct {v0, p1, p2, p3}, Ln3/k/i/g0/e$b;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ln3/k/i/g0/e$c;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    return-void
.end method
