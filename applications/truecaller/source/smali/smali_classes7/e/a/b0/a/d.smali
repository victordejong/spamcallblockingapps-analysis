.class public final Le/a/b0/a/d;
.super Le/a/b0/a/b/a;
.source "SourceFile"


# instance fields
.field public final V:Ls1/g;

.field public final W:Ls1/g;


# direct methods
.method public constructor <init>(Le/a/p5/h0;)V
    .locals 2

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 2
    new-instance v0, Le/a/b0/a/d$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Le/a/b0/a/d$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/b0/a/d;->V:Ls1/g;

    .line 3
    new-instance v0, Le/a/b0/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Le/a/b0/a/d$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/d;->W:Ls1/g;

    return-void
.end method


# virtual methods
.method public ak()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/d;->V:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public ck()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/d;->W:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public dk()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/d;->V:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
