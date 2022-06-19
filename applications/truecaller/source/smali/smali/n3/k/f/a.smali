.class public Ln3/k/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/k/f/m;

.field public final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ln3/k/f/c;Ln3/k/f/m;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/k/f/a;->a:Ln3/k/f/m;

    iput-object p3, p0, Ln3/k/f/a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/f/a;->a:Ln3/k/f/m;

    iget-object v1, p0, Ln3/k/f/a;->b:Landroid/graphics/Typeface;

    check-cast v0, Ln3/k/c/d$a;

    .line 2
    iget-object v0, v0, Ln3/k/c/d$a;->a:Ln3/k/b/d/h$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ln3/k/b/d/h$a;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
