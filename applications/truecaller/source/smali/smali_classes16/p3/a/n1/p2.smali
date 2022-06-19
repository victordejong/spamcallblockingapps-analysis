.class public final Lp3/a/n1/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/y1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp3/a/n1/y1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/n2$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/n2$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/n1/n2$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/n1/n2$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/p2;->a:Lp3/a/n1/n2$c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/p2;->a:Lp3/a/n1/n2$c;

    invoke-static {v0}, Lp3/a/n1/n2;->a(Lp3/a/n1/n2$c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/p2;->a:Lp3/a/n1/n2$c;

    invoke-static {v0, p1}, Lp3/a/n1/n2;->b(Lp3/a/n1/n2$c;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
