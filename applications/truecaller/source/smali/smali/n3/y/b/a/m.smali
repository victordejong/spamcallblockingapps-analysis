.class public final synthetic Ln3/y/b/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/a$b;


# instance fields
.field public final a:Ln3/y/b/a/t$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/m;->a:Ln3/y/b/a/t$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/f0$b;)V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/m;->a:Ln3/y/b/a/t$a;

    .line 1
    iget-object v1, v0, Ln3/y/b/a/t$a;->a:Ln3/y/b/a/d0;

    iget-object v1, v1, Ln3/y/b/a/d0;->a:Ln3/y/b/a/l0;

    iget v0, v0, Ln3/y/b/a/t$a;->f:I

    invoke-interface {p1, v1, v0}, Ln3/y/b/a/f0$b;->H5(Ln3/y/b/a/l0;I)V

    return-void
.end method
