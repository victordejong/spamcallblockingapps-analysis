.class public final synthetic Ln3/y/b/a/r;
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

    iput-object p1, p0, Ln3/y/b/a/r;->a:Ln3/y/b/a/t$a;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/f0$b;)V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/r;->a:Ln3/y/b/a/t$a;

    .line 1
    iget-boolean v1, v0, Ln3/y/b/a/t$a;->m:Z

    iget-object v0, v0, Ln3/y/b/a/t$a;->a:Ln3/y/b/a/d0;

    iget v0, v0, Ln3/y/b/a/d0;->e:I

    invoke-interface {p1, v1, v0}, Ln3/y/b/a/f0$b;->G5(ZI)V

    return-void
.end method
