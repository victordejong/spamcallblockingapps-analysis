.class public final synthetic Ln3/e/a/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/f/h;

.field public final synthetic b:Ln3/h/a/b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/f/h;Ln3/h/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/f/b;->a:Ln3/e/a/f/h;

    iput-object p2, p0, Ln3/e/a/f/b;->b:Ln3/h/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/a/f/b;->a:Ln3/e/a/f/h;

    iget-object v1, p0, Ln3/e/a/f/b;->b:Ln3/h/a/b;

    .line 1
    invoke-virtual {v0, v1}, Ln3/e/a/f/h;->b(Ln3/h/a/b;)V

    return-void
.end method
