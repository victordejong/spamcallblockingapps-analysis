.class public final Ln3/k/a/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/a/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I

.field public final synthetic c:Ln3/k/a/i;


# direct methods
.method public constructor <init>(Ln3/k/a/i;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/a/i$d;->c:Ln3/k/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/k/a/i$d;->a:Landroid/content/Intent;

    .line 3
    iput p3, p0, Ln3/k/a/i$d;->b:I

    return-void
.end method


# virtual methods
.method public O5()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/a/i$d;->c:Ln3/k/a/i;

    iget v1, p0, Ln3/k/a/i$d;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/a/i$d;->a:Landroid/content/Intent;

    return-object v0
.end method
