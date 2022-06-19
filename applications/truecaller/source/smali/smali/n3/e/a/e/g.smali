.class public final synthetic Ln3/e/a/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/z0;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/g;->a:Ln3/e/a/e/z0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/a/e/g;->a:Ln3/e/a/e/z0;

    .line 1
    iget-object v1, v0, Ln3/e/a/e/z0;->l:Ln3/e/a/f/h;

    .line 2
    iget-object v1, v1, Ln3/e/a/f/h;->h:Ln3/e/a/e/z0$c;

    .line 3
    invoke-virtual {v0, v1}, Ln3/e/a/e/z0;->h(Ln3/e/a/e/z0$c;)V

    return-void
.end method
