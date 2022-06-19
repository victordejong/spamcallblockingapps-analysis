.class public Landroidx/work/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/p;


# instance fields
.field private final c:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Landroidx/work/p$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/work/impl/utils/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/n/c<",
            "Landroidx/work/p$b$c;",
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
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->c:Landroidx/lifecycle/t;

    .line 3
    invoke-static {}, Landroidx/work/impl/utils/n/c;->t()Landroidx/work/impl/utils/n/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/n/c;

    .line 4
    sget-object v0, Landroidx/work/p;->b:Landroidx/work/p$b$b;

    invoke-virtual {p0, v0}, Landroidx/work/impl/c;->a(Landroidx/work/p$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/p$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/c;->c:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->l(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Landroidx/work/p$b$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/n/c;

    check-cast p1, Landroidx/work/p$b$c;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/n/c;->p(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/work/p$b$a;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Landroidx/work/p$b$a;

    .line 6
    iget-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/n/c;

    invoke-virtual {p1}, Landroidx/work/p$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/n/c;->q(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
