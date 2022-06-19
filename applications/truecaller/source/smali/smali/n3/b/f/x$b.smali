.class public Ln3/b/f/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/f/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/f/x;


# direct methods
.method public constructor <init>(Ln3/b/f/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/x$b;->a:Ln3/b/f/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/x$b;->a:Ln3/b/f/x;

    const/4 v1, 0x0

    iput-object v1, v0, Ln3/b/f/x;->m:Ln3/b/f/x$b;

    .line 2
    invoke-virtual {v0}, Ln3/b/f/x;->drawableStateChanged()V

    return-void
.end method
