.class public final Lo3/b/a/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b/a/c/b/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ln3/v/a1$b;

.field public final c:Ln3/v/a;


# direct methods
.method public constructor <init>(Ln3/d0/c;Landroid/os/Bundle;Ljava/util/Set;Ln3/v/a1$b;Lo3/b/a/c/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/d0/c;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ln3/v/a1$b;",
            "Lo3/b/a/c/a/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lo3/b/a/c/b/d;->a:Ljava/util/Set;

    .line 3
    iput-object p4, p0, Lo3/b/a/c/b/d;->b:Ln3/v/a1$b;

    .line 4
    new-instance p3, Lo3/b/a/c/b/d$a;

    invoke-direct {p3, p0, p1, p2, p5}, Lo3/b/a/c/b/d$a;-><init>(Lo3/b/a/c/b/d;Ln3/d0/c;Landroid/os/Bundle;Lo3/b/a/c/a/f;)V

    iput-object p3, p0, Lo3/b/a/c/b/d;->c:Ln3/v/a;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Ln3/v/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ln3/v/y0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/b/a/c/b/d;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lo3/b/a/c/b/d;->c:Ln3/v/a;

    invoke-virtual {v0, p1}, Ln3/v/a;->create(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lo3/b/a/c/b/d;->b:Ln3/v/a1$b;

    invoke-interface {v0, p1}, Ln3/v/a1$b;->create(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object p1

    return-object p1
.end method
