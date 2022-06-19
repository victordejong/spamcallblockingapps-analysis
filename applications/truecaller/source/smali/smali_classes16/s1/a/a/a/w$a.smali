.class public final Ls1/a/a/a/w$a;
.super Ls1/a/a/a/z$b;
.source "SourceFile"

# interfaces
.implements Ls1/a/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/w;
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
        "Ls1/a/a/a/z$b<",
        "TR;>;",
        "Ls1/a/j$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/w<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/w<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/z$b;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/w$a;->e:Ls1/a/a/a/w;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/w$a;->e:Ls1/a/a/a/w;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/w;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j()Ls1/a/a/a/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/w$a;->e:Ls1/a/a/a/w;

    return-object v0
.end method
