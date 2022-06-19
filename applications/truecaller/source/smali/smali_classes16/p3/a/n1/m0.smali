.class public abstract Lp3/a/n1/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/u1$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/n1/q2;

    .line 2
    iget-object v0, v0, Lp3/a/n1/q2;->a:Lp3/a/n1/u1$b;

    .line 3
    invoke-interface {v0, p1}, Lp3/a/n1/u1$b;->b(I)V

    return-void
.end method
