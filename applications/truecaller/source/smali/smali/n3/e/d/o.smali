.class public final synthetic Ln3/e/d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/d/x;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/o;->a:Ln3/e/d/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/d/o;->a:Ln3/e/d/x;

    .line 1
    iget-object v1, v0, Ln3/e/d/x;->g:Ln3/e/d/v$a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Ln3/e/d/d;

    invoke-virtual {v1}, Ln3/e/d/d;->a()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Ln3/e/d/x;->g:Ln3/e/d/v$a;

    :cond_0
    return-void
.end method
