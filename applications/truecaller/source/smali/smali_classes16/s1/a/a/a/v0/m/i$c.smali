.class public final Ls1/a/a/a/v0/m/i$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/i;-><init>(Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/i$c;->b:Ls1/a/a/a/v0/m/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/i$b;

    iget-object v1, p0, Ls1/a/a/a/v0/m/i$c;->b:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v1}, Ls1/a/a/a/v0/m/i;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/i$b;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
