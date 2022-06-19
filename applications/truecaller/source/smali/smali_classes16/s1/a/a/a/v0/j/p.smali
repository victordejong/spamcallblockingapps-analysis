.class public final Ls1/a/a/a/v0/j/p;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "TH;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/o/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/o/m;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/p;->b:Ls1/a/a/a/v0/o/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/p;->b:Ls1/a/a/a/v0/o/m;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/o/m;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
