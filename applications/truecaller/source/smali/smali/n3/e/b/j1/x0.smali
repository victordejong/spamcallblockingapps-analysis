.class public final Ln3/e/b/j1/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/j1/x0$a;,
        Ln3/e/b/j1/x0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/c1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ln3/e/b/j1/x0$b<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln3/e/b/j1/c1$a<",
            "TT;>;",
            "Ln3/e/b/j1/x0$a<",
            "TT;>;>;"
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

    iput-object v0, p0, Ln3/e/b/j1/x0;->a:Ln3/v/k0;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/x0;->b:Ljava/util/Map;

    return-void
.end method
