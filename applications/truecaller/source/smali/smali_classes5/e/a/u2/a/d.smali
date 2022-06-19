.class public abstract Le/a/u2/a/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Router:",
        "Ljava/lang/Object;",
        "PV:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/u2/a/b<",
        "TPV;>;",
        "Le/a/u2/a/f<",
        "TRouter;TPV;>;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRouter;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public F3(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRouter;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public xb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    return-void
.end method
