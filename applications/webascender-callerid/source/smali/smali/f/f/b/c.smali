.class public Lf/f/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lf/f/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/f/b/f<",
            "Lf/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lf/f/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/f/b/f<",
            "Lf/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Lf/f/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/f/b/f<",
            "Lf/f/b/i;",
            ">;"
        }
    .end annotation
.end field

.field d:[Lf/f/b/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/f/b/g;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lf/f/b/g;-><init>(I)V

    iput-object v0, p0, Lf/f/b/c;->a:Lf/f/b/f;

    .line 3
    new-instance v0, Lf/f/b/g;

    invoke-direct {v0, v1}, Lf/f/b/g;-><init>(I)V

    iput-object v0, p0, Lf/f/b/c;->b:Lf/f/b/f;

    .line 4
    new-instance v0, Lf/f/b/g;

    invoke-direct {v0, v1}, Lf/f/b/g;-><init>(I)V

    iput-object v0, p0, Lf/f/b/c;->c:Lf/f/b/f;

    const/16 v0, 0x20

    new-array v0, v0, [Lf/f/b/i;

    .line 5
    iput-object v0, p0, Lf/f/b/c;->d:[Lf/f/b/i;

    return-void
.end method
