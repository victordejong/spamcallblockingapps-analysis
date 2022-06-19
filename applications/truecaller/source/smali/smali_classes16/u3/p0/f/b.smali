.class public final Lu3/p0/f/b;
.super Lu3/p0/f/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3/p0/f/b;->e:Ls1/z/b/a;

    invoke-direct {p0, p4, p5}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/p0/f/b;->e:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method
