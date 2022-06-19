.class public abstract Lf/w/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/drawable/Animatable2$AnimationCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/w/a/a/b;->a:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf/w/a/a/b$a;

    invoke-direct {v0, p0}, Lf/w/a/a/b$a;-><init>(Lf/w/a/a/b;)V

    iput-object v0, p0, Lf/w/a/a/b;->a:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 3
    :cond_0
    iget-object v0, p0, Lf/w/a/a/b;->a:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
