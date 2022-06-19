.class public Ln3/i/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln3/i/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/i/b/e<",
            "Ln3/i/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ln3/i/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/i/b/e<",
            "Ln3/i/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ln3/i/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/i/b/e<",
            "Ln3/i/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Ln3/i/b/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/i/b/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ln3/i/b/e;-><init>(I)V

    iput-object v0, p0, Ln3/i/b/c;->a:Ln3/i/b/e;

    .line 3
    new-instance v0, Ln3/i/b/e;

    invoke-direct {v0, v1}, Ln3/i/b/e;-><init>(I)V

    iput-object v0, p0, Ln3/i/b/c;->b:Ln3/i/b/e;

    .line 4
    new-instance v0, Ln3/i/b/e;

    invoke-direct {v0, v1}, Ln3/i/b/e;-><init>(I)V

    iput-object v0, p0, Ln3/i/b/c;->c:Ln3/i/b/e;

    const/16 v0, 0x20

    new-array v0, v0, [Ln3/i/b/g;

    .line 5
    iput-object v0, p0, Ln3/i/b/c;->d:[Ln3/i/b/g;

    return-void
.end method
