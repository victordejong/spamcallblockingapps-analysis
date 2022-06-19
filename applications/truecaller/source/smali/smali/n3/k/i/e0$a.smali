.class public Ln3/k/i/e0$a;
.super Ln3/k/i/e0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/Window;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/i/e0$e;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k/i/e0$a;->a:Landroid/view/Window;

    .line 3
    iput-object p2, p0, Ln3/k/i/e0$a;->b:Landroid/view/View;

    return-void
.end method
