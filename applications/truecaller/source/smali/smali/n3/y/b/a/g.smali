.class public final synthetic Ln3/y/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/a$b;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ln3/y/b/a/g;->a:Z

    iput p2, p0, Ln3/y/b/a/g;->b:I

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/f0$b;)V
    .locals 2

    iget-boolean v0, p0, Ln3/y/b/a/g;->a:Z

    iget v1, p0, Ln3/y/b/a/g;->b:I

    .line 1
    invoke-interface {p1, v0, v1}, Ln3/y/b/a/f0$b;->G5(ZI)V

    return-void
.end method
