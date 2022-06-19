.class public final Ln3/z/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/z/b$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ln3/z/q1<",
            "TT;>;",
            "Ln3/z/q1<",
            "TT;>;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/p<",
            "-",
            "Ln3/z/q1<",
            "TT;>;-",
            "Ln3/z/q1<",
            "TT;>;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/b$a;->a:Ls1/z/b/p;

    return-void
.end method


# virtual methods
.method public a(Ln3/z/q1;Ln3/z/q1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/q1<",
            "TT;>;",
            "Ln3/z/q1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/b$a;->a:Ls1/z/b/p;

    invoke-interface {v0, p1, p2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
