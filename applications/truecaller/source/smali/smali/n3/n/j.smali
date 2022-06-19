.class public Ln3/n/j;
.super Ln3/n/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/n/b;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/n/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/n/j;->a:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Ln3/n/j;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ln3/n/a;->notifyChange()V

    :cond_0
    return-void
.end method
