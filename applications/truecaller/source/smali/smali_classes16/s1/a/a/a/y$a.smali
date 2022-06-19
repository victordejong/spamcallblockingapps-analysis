.class public final Ls1/a/a/a/y$a;
.super Ls1/a/a/a/z$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/f;
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z$b<",
        "TV;>;",
        "Ljava/lang/Object<",
        "TD;TE;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/y<",
            "TD;TE;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/y<",
            "TD;TE;+TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/z$b;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/y$a;->e:Ls1/a/a/a/y;

    return-void
.end method


# virtual methods
.method public j()Ls1/a/a/a/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/y$a;->e:Ls1/a/a/a/y;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/y$a;->e:Ls1/a/a/a/y;

    .line 2
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/y;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
