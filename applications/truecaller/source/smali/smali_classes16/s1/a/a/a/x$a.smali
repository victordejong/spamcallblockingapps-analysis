.class public final Ls1/a/a/a/x$a;
.super Ls1/a/a/a/z$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z$b<",
        "TV;>;",
        "Ls1/a/k$a<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/x<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/x<",
            "TT;+TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/z$b;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/x$a;->e:Ls1/a/a/a/x;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/x$a;->e:Ls1/a/a/a/x;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Ls1/a/a/a/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/x$a;->e:Ls1/a/a/a/x;

    return-object v0
.end method
