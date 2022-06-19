.class public Ln3/w/a/b$c;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/w/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final c:Ln3/v/a1$b;


# instance fields
.field public a:Ln3/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/i<",
            "Ln3/w/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/w/a/b$c$a;

    invoke-direct {v0}, Ln3/w/a/b$c$a;-><init>()V

    sput-object v0, Ln3/w/a/b$c;->c:Ln3/v/a1$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    .line 2
    new-instance v0, Ln3/g/i;

    invoke-direct {v0}, Ln3/g/i;-><init>()V

    iput-object v0, p0, Ln3/w/a/b$c;->a:Ln3/g/i;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/w/a/b$c;->b:Z

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln3/v/y0;->onCleared()V

    .line 2
    iget-object v0, p0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v0}, Ln3/g/i;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v2, v1}, Ln3/g/i;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/w/a/b$a;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Ln3/w/a/b$a;->m(Z)Ln3/w/b/b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/w/a/b$c;->a:Ln3/g/i;

    invoke-virtual {v0}, Ln3/g/i;->b()V

    return-void
.end method
