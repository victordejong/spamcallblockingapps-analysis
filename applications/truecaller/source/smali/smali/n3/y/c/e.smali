.class public Ln3/y/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/h$a;


# instance fields
.field public final synthetic a:Ln3/y/a/b;


# direct methods
.method public constructor <init>(Ln3/y/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/e;->a:Ln3/y/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln3/y/b/a/w0/h;
    .locals 2

    .line 1
    new-instance v0, Ln3/y/c/f;

    iget-object v1, p0, Ln3/y/c/e;->a:Ln3/y/a/b;

    invoke-direct {v0, v1}, Ln3/y/c/f;-><init>(Ln3/y/a/b;)V

    return-object v0
.end method
