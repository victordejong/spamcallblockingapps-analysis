.class public Ln3/b/a/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


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
    iput-object p1, p0, Ln3/b/a/h$b;->a:Ln3/b/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/b/a/h$b;->a:Ln3/b/a/h;

    invoke-virtual {p1}, Ln3/b/a/h;->getDelegate()Ln3/b/a/j;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ln3/b/a/j;->j()V

    .line 3
    iget-object v0, p0, Ln3/b/a/h$b;->a:Ln3/b/a/h;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Ln3/d0/a;

    move-result-object v0

    const-string v1, "androidx:appcompat"

    .line 4
    invoke-virtual {v0, v1}, Ln3/d0/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ln3/b/a/j;->m(Landroid/os/Bundle;)V

    return-void
.end method
