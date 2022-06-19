.class public final Lo3/b/a/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/b/a/c/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/util/Set;Lo3/b/a/c/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lo3/b/a/c/a/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/b/a/c/b/c;->a:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lo3/b/a/c/b/c;->b:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lo3/b/a/c/b/c;->c:Lo3/b/a/c/a/f;

    return-void
.end method


# virtual methods
.method public final a(Ln3/d0/c;Landroid/os/Bundle;Ln3/v/a1$b;)Ln3/v/a1$b;
    .locals 7

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Ln3/v/t0;

    iget-object v0, p0, Lo3/b/a/c/b/c;->a:Landroid/app/Application;

    invoke-direct {p3, v0, p1, p2}, Ln3/v/t0;-><init>(Landroid/app/Application;Ln3/d0/c;Landroid/os/Bundle;)V

    :cond_0
    move-object v5, p3

    .line 2
    new-instance p3, Lo3/b/a/c/b/d;

    iget-object v4, p0, Lo3/b/a/c/b/c;->b:Ljava/util/Set;

    iget-object v6, p0, Lo3/b/a/c/b/c;->c:Lo3/b/a/c/a/f;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lo3/b/a/c/b/d;-><init>(Ln3/d0/c;Landroid/os/Bundle;Ljava/util/Set;Ln3/v/a1$b;Lo3/b/a/c/a/f;)V

    return-object p3
.end method
