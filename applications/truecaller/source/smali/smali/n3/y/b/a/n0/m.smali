.class public final synthetic Ln3/y/b/a/n0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/n0/n$a;

.field public final b:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/n$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/n0/m;->a:Ln3/y/b/a/n0/n$a;

    iput p2, p0, Ln3/y/b/a/n0/m;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/n0/m;->a:Ln3/y/b/a/n0/n$a;

    iget v1, p0, Ln3/y/b/a/n0/m;->b:I

    .line 1
    iget-object v0, v0, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    invoke-interface {v0, v1}, Ln3/y/b/a/n0/n;->b(I)V

    return-void
.end method
