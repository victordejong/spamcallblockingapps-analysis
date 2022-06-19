.class public Ln3/m0/c0/p/b/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/p/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/m0/c0/p/b/e;

.field public final b:Landroid/content/Intent;

.field public final c:I


# direct methods
.method public constructor <init>(Ln3/m0/c0/p/b/e;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/p/b/e$b;->a:Ln3/m0/c0/p/b/e;

    .line 3
    iput-object p2, p0, Ln3/m0/c0/p/b/e$b;->b:Landroid/content/Intent;

    .line 4
    iput p3, p0, Ln3/m0/c0/p/b/e$b;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/p/b/e$b;->a:Ln3/m0/c0/p/b/e;

    iget-object v1, p0, Ln3/m0/c0/p/b/e$b;->b:Landroid/content/Intent;

    iget v2, p0, Ln3/m0/c0/p/b/e$b;->c:I

    invoke-virtual {v0, v1, v2}, Ln3/m0/c0/p/b/e;->a(Landroid/content/Intent;I)Z

    return-void
.end method
