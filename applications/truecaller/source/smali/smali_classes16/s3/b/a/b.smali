.class public Ls3/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:D

.field public final synthetic b:Ls3/b/a/c;


# direct methods
.method public constructor <init>(Ls3/b/a/c;D)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls3/b/a/b;->b:Ls3/b/a/c;

    iput-wide p2, p0, Ls3/b/a/b;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/b/a/b;->b:Ls3/b/a/c;

    iget-object v0, v0, Ls3/b/a/c;->a:Ls3/b/a/a$b;

    iget-object v0, v0, Ls3/b/a/a$b;->b:Ls3/b/a/a$c;

    iget-wide v1, p0, Ls3/b/a/b;->a:D

    invoke-interface {v0, v1, v2}, Ls3/b/a/a$c;->d(D)V

    return-void
.end method
