.class public Ln3/b0/a/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b0/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b0/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/b0/a/d$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/b0/a/p;


# direct methods
.method public constructor <init>(Ln3/b0/a/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/p$a;->a:Ln3/b0/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b0/a/p$a;->a:Ln3/b0/a/p;

    invoke-virtual {v0, p1, p2}, Ln3/b0/a/p;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
