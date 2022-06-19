.class public Ln3/g0/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/g0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Ln3/g0/u;

.field public d:Ln3/g0/k0;

.field public e:Ln3/g0/m;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ln3/g0/m;Ln3/g0/k0;Ln3/g0/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/g0/m$b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Ln3/g0/m$b;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Ln3/g0/m$b;->c:Ln3/g0/u;

    .line 5
    iput-object p4, p0, Ln3/g0/m$b;->d:Ln3/g0/k0;

    .line 6
    iput-object p3, p0, Ln3/g0/m$b;->e:Ln3/g0/m;

    return-void
.end method
