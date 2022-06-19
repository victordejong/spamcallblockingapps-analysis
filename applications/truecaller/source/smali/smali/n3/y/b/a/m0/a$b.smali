.class public final Ln3/y/b/a/m0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/m0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/b/a/m0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ln3/y/b/a/t0/t$a;",
            "Ln3/y/b/a/m0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/l0$b;

.field public d:Ln3/y/b/a/m0/a$a;

.field public e:Ln3/y/b/a/m0/a$a;

.field public f:Ln3/y/b/a/m0/a$a;

.field public g:Ln3/y/b/a/l0;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/m0/a$b;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/m0/a$b;->b:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ln3/y/b/a/l0$b;

    invoke-direct {v0}, Ln3/y/b/a/l0$b;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/m0/a$b;->c:Ln3/y/b/a/l0$b;

    .line 5
    sget-object v0, Ln3/y/b/a/l0;->a:Ln3/y/b/a/l0;

    iput-object v0, p0, Ln3/y/b/a/m0/a$b;->g:Ln3/y/b/a/l0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y/b/a/m0/a$a;Ln3/y/b/a/l0;)Ln3/y/b/a/m0/a$a;
    .locals 2

    .line 1
    iget-object v0, p1, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    iget-object v0, v0, Ln3/y/b/a/t0/t$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/m0/a$b;->c:Ln3/y/b/a/l0$b;

    invoke-virtual {p2, v0, v1}, Ln3/y/b/a/l0;->f(ILn3/y/b/a/l0$b;)Ln3/y/b/a/l0$b;

    move-result-object v0

    iget v0, v0, Ln3/y/b/a/l0$b;->c:I

    .line 3
    new-instance v1, Ln3/y/b/a/m0/a$a;

    iget-object p1, p1, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    invoke-direct {v1, p1, p2, v0}, Ln3/y/b/a/m0/a$a;-><init>(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/l0;I)V

    return-object v1
.end method
