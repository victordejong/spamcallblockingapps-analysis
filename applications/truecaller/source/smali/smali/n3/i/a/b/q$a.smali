.class public Ln3/i/a/b/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/i/a/b/q;->f()Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/i/a/a/c;


# direct methods
.method public constructor <init>(Ln3/i/a/b/q;Ln3/i/a/a/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/i/a/b/q$a;->a:Ln3/i/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/a/b/q$a;->a:Ln3/i/a/a/c;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ln3/i/a/a/c;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
