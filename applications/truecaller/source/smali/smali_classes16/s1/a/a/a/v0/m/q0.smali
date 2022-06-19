.class public final Ls1/a/a/a/v0/m/q0;
.super Ls1/a/a/a/v0/m/z0;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/a/a/a/v0/b/w0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/w0;)V
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/z0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/q0;->b:Ls1/a/a/a/v0/b/w0;

    .line 2
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance v0, Ls1/a/a/a/v0/m/q0$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/m/q0$a;-><init>(Ls1/a/a/a/v0/m/q0;)V

    invoke-static {p1, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/m/q0;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ls1/a/a/a/v0/m/j1;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/m/j1;->e:Ls1/a/a/a/v0/m/j1;

    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/q0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method
