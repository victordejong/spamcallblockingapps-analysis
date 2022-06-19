.class public final Ln3/m0/c0/s/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/s/k;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Ln3/m0/c0/s/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m0/c0/s/l;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Ln3/m0/c0/s/l$a;

    invoke-direct {v0, p0, p1}, Ln3/m0/c0/s/l$a;-><init>(Ln3/m0/c0/s/l;Ln3/c0/q;)V

    iput-object v0, p0, Ln3/m0/c0/s/l;->b:Ln3/c0/k;

    return-void
.end method
