.class public final Ls1/a/a/a/v0/d/a/d0/n/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/d;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/f/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/d$b;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/d$b;->b:Ls1/a/a/a/v0/d/a/d0/n/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/d;->g:Ls1/a/a/a/v0/d/a/f0/a;

    .line 3
    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/a;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
