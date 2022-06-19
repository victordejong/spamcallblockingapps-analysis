.class public Ln3/b/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/d0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b/a/h;->initDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/h;


# direct methods
.method public constructor <init>(Ln3/b/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/h$a;->a:Ln3/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/b/a/h$a;->a:Ln3/b/a/h;

    invoke-virtual {v1}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln3/b/a/j;->q(Landroid/os/Bundle;)V

    return-object v0
.end method
