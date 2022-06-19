.class public Ln3/y/e/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/e/d0;->b(Ln3/y/e/x;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/d0;


# direct methods
.method public constructor <init>(Ln3/y/e/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/d0$a;->a:Ln3/y/e/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/d0$a;->a:Ln3/y/e/d0;

    iget-object v1, v0, Ln3/y/e/d0;->b:Ln3/y/e/i0$a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Ln3/y/e/f0$a;

    invoke-virtual {v1, v0}, Ln3/y/e/f0$a;->b(Ln3/y/e/i0;)V

    :cond_0
    return-void
.end method
