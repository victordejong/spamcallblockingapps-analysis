.class public final Ls1/a/a/a/r$a;
.super Ls1/a/a/a/z$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/f;
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z$c<",
        "TR;>;",
        "Ljava/lang/Object<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/r<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/r<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/z$c;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/r$a;->e:Ls1/a/a/a/r;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/r$a;->e:Ls1/a/a/a/r;

    .line 2
    invoke-virtual {v0, p1}, Ls1/a/a/a/r;->set(Ljava/lang/Object;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j()Ls1/a/a/a/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/r$a;->e:Ls1/a/a/a/r;

    return-object v0
.end method
