.class public Ln3/m0/c0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/s;


# instance fields
.field public final c:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ln3/m0/s$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/m0/c0/t/w/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/t/w/c<",
            "Ln3/m0/s$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/v/k0;

    invoke-direct {v0}, Ln3/v/k0;-><init>()V

    iput-object v0, p0, Ln3/m0/c0/c;->c:Ln3/v/k0;

    .line 3
    new-instance v0, Ln3/m0/c0/t/w/c;

    invoke-direct {v0}, Ln3/m0/c0/t/w/c;-><init>()V

    .line 4
    iput-object v0, p0, Ln3/m0/c0/c;->d:Ln3/m0/c0/t/w/c;

    .line 5
    sget-object v0, Ln3/m0/s;->b:Ln3/m0/s$b$b;

    invoke-virtual {p0, v0}, Ln3/m0/c0/c;->a(Ln3/m0/s$b;)V

    return-void
.end method


# virtual methods
.method public a(Ln3/m0/s$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/m0/c0/c;->c:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Ln3/m0/s$b$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/m0/c0/c;->d:Ln3/m0/c0/t/w/c;

    check-cast p1, Ln3/m0/s$b$c;

    invoke-virtual {v0, p1}, Ln3/m0/c0/t/w/c;->i(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ln3/m0/s$b$a;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Ln3/m0/s$b$a;

    .line 6
    iget-object v0, p0, Ln3/m0/c0/c;->d:Ln3/m0/c0/t/w/c;

    .line 7
    iget-object p1, p1, Ln3/m0/s$b$a;->a:Ljava/lang/Throwable;

    .line 8
    invoke-virtual {v0, p1}, Ln3/m0/c0/t/w/c;->j(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
