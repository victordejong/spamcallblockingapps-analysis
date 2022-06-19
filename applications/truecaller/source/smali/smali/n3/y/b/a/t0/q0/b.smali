.class public final Ln3/y/b/a/t0/q0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/t0/q0/e;


# instance fields
.field public final a:Ln3/y/b/a/w0/h$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/q0/b;->a:Ln3/y/b/a/w0/h$a;

    return-void
.end method


# virtual methods
.method public a(I)Ln3/y/b/a/w0/h;
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/t0/q0/b;->a:Ln3/y/b/a/w0/h$a;

    invoke-interface {p1}, Ln3/y/b/a/w0/h$a;->a()Ln3/y/b/a/w0/h;

    move-result-object p1

    return-object p1
.end method
