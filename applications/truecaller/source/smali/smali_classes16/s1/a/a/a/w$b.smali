.class public final Ls1/a/a/a/w$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/w;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/w$a<",
        "+TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/w;


# direct methods
.method public constructor <init>(Ls1/a/a/a/w;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/w$b;->b:Ls1/a/a/a/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/w$a;

    iget-object v1, p0, Ls1/a/a/a/w$b;->b:Ls1/a/a/a/w;

    invoke-direct {v0, v1}, Ls1/a/a/a/w$a;-><init>(Ls1/a/a/a/w;)V

    return-object v0
.end method
