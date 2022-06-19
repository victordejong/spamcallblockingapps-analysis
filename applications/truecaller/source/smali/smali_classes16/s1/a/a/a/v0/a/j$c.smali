.class public final Ls1/a/a/a/v0/a/j$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/j;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/j$c;->b:Ls1/a/a/a/v0/b/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/j$c;->b:Ls1/a/a/a/v0/b/a0;

    sget-object v1, Ls1/a/a/a/v0/a/k;->h:Ls1/a/a/a/v0/f/b;

    invoke-interface {v0, v1}, Ls1/a/a/a/v0/b/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/g0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    return-object v0
.end method
